CREATE TRIGGER listeners.TR_Courses_Insert
ON listeners.Courses
AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @EmployeeId int;
	DECLARE @SchoolSubjectId varchar(7);
	DECLARE @StudentId int;
	DECLARE @CourseId int;
	DECLARE @Grade decimal(2,1)

	SELECT @EmployeeId = i.CourseEmployeeId,
	@SchoolSubjectId = i.CourseSchoolSubjectId,
	@StudentId = i.CourseStudentId, @CourseId = i.CourseId, @Grade = i.CourseGrade
	FROM inserted AS i

	/* Adding data into staff.Employees_SchoolSubjects if there is no record of inserted
	Employee teaching inserted SchoolSubject */
	EXEC staff.uspCheckEmployees_SchoolSubjects @EmployeeId, @SchoolSubjectId

	/*Adding data into listeners.Students_SchoolSubjects if there is no record of inserted
	Student participating in inserted SchoolSubject*/
	EXEC listeners.uspCheckStudents_SchoolSubjects @StudentId, @SchoolSubjectId

	--Adding data into listeners.StudentRepeatedSubjects if Student's grade is below 3.0
	IF(@Grade < 3)
		BEGIN
			EXEC uspCheckStudentsRepeatedSubjects @CourseId;
		END
END
