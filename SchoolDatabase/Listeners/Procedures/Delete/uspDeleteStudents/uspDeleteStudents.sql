CREATE PROCEDURE [listeners].[uspDeleteStudents]
	@StastusId int
AS
	IF OBJECT_ID('tempdb..#ArchivedStudents') IS NOT NULL
    DROP TABLE #ArchivedStudents;
	IF OBJECT_ID('tempdb..#ArchivedAddresses') IS NOT NULL
    DROP TABLE #ArchivedAddresses;
	IF OBJECT_ID('tempdb..#ArchivedCourses') IS NOT NULL
    DROP TABLE #ArchivedCourses;
	IF OBJECT_ID('tempdb..#ArchivedStudents_StudySemesters') IS NOT NULL
    DROP TABLE #ArchivedStudents_StudySemesters;
	--znalezienie wszystkich nieaktywnych studentów
	SELECT * 
	INTO #ArchivedStudents
	FROM listeners.Students AS s
	WHERE s.StudentStatusId = @StastusId;
	--zarchiwizować adres
	SELECT * 
	INTO #ArchivedAddresses
	FROM utilities.Addresses AS a
	WHERE a.AddressId IN (SELECT ars.StudentAddressId FROM #ArchivedStudents AS ars);
	INSERT INTO archived.ArchivedAddresses
	SELECT *
	FROM #ArchivedAddresses;
	--zarchiwizować studenta
	INSERT INTO archived.ArchivedStudents(StudentId, StudentName, StudentSurname, StudentPESEL, StudentFormOfStudyId, 
	ArchivedAddressId, StudentStatusId)
	SELECT ars.StudentId, ars.StudentName, ars.StudentSurname, ars.StudentPESEL, ars.StudentFormOfStudyId, ars.StudentAddressId,
	ars.StudentStatusId
	FROM #ArchivedStudents AS ars;
	--zarchiwizować student_studySemesters
	SELECT *
	INTO #ArchivedStudents_StudySemesters
	FROM listeners.Students_StudySemesters AS sss
	WHERE sss.StudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	INSERT INTO archived.ArchivedStudents_StudySemesters(ArchivedStudentId, PresentStudySemesterId, StudyLevelId)
	SELECT asss.StudentId, asss.StudySemesterId, asss.StudyLevelId
	FROM #ArchivedStudents_StudySemesters AS asss;
-- update dla zeszlych rocznikow usuwanego studenta
	UPDATE asss
	SET asss.ArchivedStudentId = temp.StudentId
	FROM archived.ArchivedStudents_StudySemesters AS asss
	INNER JOIN #ArchivedStudents_StudySemesters AS temp
	ON asss.PresentStudentId = temp.StudentId;
	SELECT * FROM archived.ArchivedStudents_StudySemesters;
	--usunać student_StudySemesters
	BEGIN TRAN
	DELETE sss
	FROM listeners.Students_StudySemesters AS sss
	WHERE sss.StudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	--usunąć payments
	BEGIN TRAN
	DELETE p
	FROM listeners.Payments AS p
	WHERE p.PaymentStudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	--usunąć scholarships
	BEGIN TRAN
	DELETE ss
	FROM listeners.Students_Scholarships AS ss
	WHERE ss.StudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	--usunąć schoolsubjects
	BEGIN TRAN
	DELETE sss
	FROM listeners.Students_SchoolSubjects AS sss
	WHERE sss.StudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	--usunąć studentRepeatedSubjects
	BEGIN TRAN
	DELETE srs
	FROM listeners.StudentsRepeatedSubjects AS srs
	WHERE srs.RepeatingStudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	--zarchiwizowac kursy
	SELECT *
	INTO #ArchivedCourses
	FROM listeners.Courses AS c
	WHERE c.CourseStudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	SELECT * FROM #ArchivedCourses;
	INSERT INTO archived.ArchivedCourses (CourseGrade, DateOfAssessment, ArchivedStudentId, PresentSchoolSubjectId,
	PresentEmployeeId, CourseSemester)
	SELECT ac.CourseGrade, ac.DateOfAssessment, ac.CourseStudentId, ac.CourseSchoolSubjectId, ac.CourseEmployeeId, ac.CourseSemester
	FROM #ArchivedCourses AS ac;
	SELECT * FROM archived.ArchivedCourses;
	--usunąć kursy
	BEGIN TRAN
	DELETE c
	FROM listeners.Courses AS c
	WHERE c.CourseId IN (SELECT ac.CourseId FROM #ArchivedCourses AS ac);
	SELECT * FROM listeners.Courses;
	--zrobić update kursów presentStudentid ->ArchivedStudentId
	UPDATE ac
	SET ac.ArchivedStudentId = ars.StudentId
	FROM archived.ArchivedCourses AS ac
	INNER JOIN #ArchivedStudents AS ars
	ON ac.PresentStudentId = ars.StudentId;
	--usunąć studenta
	BEGIN TRAN
	DELETE s
	FROM listeners.Students AS s
	WHERE s.StudentId IN (SELECT ars.StudentId FROM #ArchivedStudents AS ars);
	--usunąć adres
	BEGIN TRAN
	DELETE a
	FROM utilities.Addresses AS a
	WHERE a.AddressId IN (SELECT aa.AddressId FROM #ArchivedAddresses AS aa);
RETURN 0
