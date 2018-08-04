CREATE TRIGGER listeners.[TR_Students_Delete]
ON listeners.Students
AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON
	--Deleting student's address
	DELETE a
	FROM utilities.Addresses AS a
	INNER JOIN deleted AS d
	ON  a.AddressId = d.StudentAddressId
	--Archiving student
	DECLARE @DeletedStudent archived.StudentsArchiving;
	INSERT INTO @DeletedStudent(StudentId, StudentName, StudentSurname, StudentPESEL, 
	StudentStudySemesterId, StudentSemester, StudentStudyLevelId, StudentFormOfStudyId, StudentAddressId, StudentStatusId)
	SELECT d.StudentId, d.StudentName, d.StudentSurname, d.StudentPESEL, d.StudentStudySemesterId, d.StudentSemester,
	d.StudentStudyLevelId, d.StudentFormOfStudyId, d.StudentAddressId, d.StudentStatusId
	FROM deleted AS d;
	EXEC archived.uspInsertArchivedStudents @DeletedStudent;
	--Updating ArchivedCourses so that they have reference to ArchivedStudents table
	UPDATE ac
	SET ac.ArchivedStudentId = ac.TempStudentId, ac.PresentStudentId = NULL
	FROM archived.ArchivedCourses AS ac
	INNER JOIN deleted AS d
	ON ac.TempStudentId = d.StudentId
END
