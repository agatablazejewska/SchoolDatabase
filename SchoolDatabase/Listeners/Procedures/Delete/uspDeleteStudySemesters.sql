CREATE PROCEDURE [listeners].[uspDeleteStudySemesters]
	@StudySemesterStatusId int
AS
	IF OBJECT_ID('tempdb..#ArchivedStudySemesters') IS NOT NULL
    DROP TABLE #ArchivedStudySemesters;
	IF OBJECT_ID('tempdb..#ArchivedStudents_StudySemester') IS NOT NULL
    DROP TABLE #ArchivedStudents_StudySemester;
	--znalezc semestry nieaktywne, do usunięcia
	SELECT *
	INTO #ArchivedStudySemesters
	FROM listeners.StudySemesters AS ss
	WHERE ss.StudySemesterStatusId = @StudySemesterStatusId;
	--zarchiwizowac semestr
	INSERT INTO archived.ArchivedStudySemesters(StudySemesterId, StudySemester, PresentFieldOfStudyId, StudyLevelId, StartYear, StudySemesterStatusId)
	SELECT StudySemesterId, StudySemester, FieldOfStudyId, StudyLevelId, StartYear, StudySemesterStatusId
	FROM #ArchivedStudySemesters AS ass;
	--zarchiwizowac students_StudySemesters
	SELECT *
	INTO #ArchivedStudents_StudySemester
	FROM listeners.Students_StudySemesters AS sss
	WHERE sss.StudySemesterId IN (SELECT ass.StudySemesterId FROM #ArchivedStudySemesters AS ass);
	INSERT INTO archived.ArchivedStudents_StudySemesters(PresentStudentId, ArchivedStudySemesterId, StudyLevelId)
	SELECT asss.StudentId, asss.StudySemesterId, asss.StudyLevelId
	FROM #ArchivedStudents_StudySemester AS asss;
	--usunąć students_studySemesters
	BEGIN TRAN
	DELETE sss
	FROM listeners.Students_StudySemesters AS sss
	WHERE sss.StudySemesterId IN (SELECT ass.StudySemesterId FROM #ArchivedStudySemesters AS ass);
	--usunąć DeanGroups
	BEGIN TRAN
	DELETE dg
	FROM listeners.DeanGroups AS dg
	WHERE dg.GroupStudySemester IN (SELECT ass.StudySemesterId FROM #ArchivedStudySemesters AS ass);
	--zaktualizowac rok w students_StudySemesters dla studentow, ktorzy wczesniej rzucili rok -> z present na archived
	UPDATE asss
	SET asss.ArchivedStudySemesterId = temp.StudySemesterId
	FROM archived.ArchivedStudents_StudySemesters AS asss
	INNER JOIN #ArchivedStudents_StudySemester AS temp
	ON asss.PresentStudySemesterId = temp.StudySemesterId;
	--usunąć semestr
	BEGIN TRAN
	DELETE ss
	FROM listeners.StudySemesters AS ss
	WHERE ss.StudySemesterId IN (SELECT ass.StudySemesterId FROM #ArchivedStudySemesters AS ass);
RETURN 0
