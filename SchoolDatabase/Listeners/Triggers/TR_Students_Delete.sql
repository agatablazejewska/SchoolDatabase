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
	INSERT INTO @DeletedStudent(StudentId, StudentName, StudentSurname, StudentPESEL,  StudentFormOfStudyId, StudentAddressId, StudentStatusId)
	SELECT d.StudentId, d.StudentName, d.StudentSurname, d.StudentPESEL,
	d.StudentFormOfStudyId, d.StudentAddressId, d.StudentStatusId
	FROM deleted AS d;
	EXEC archived.uspInsertArchivedStudents @DeletedStudent;
	--Updating ArchivedCourses so that they have reference to ArchivedStudents table
	UPDATE ac
	SET ac.ArchivedStudentId = ac.TempStudentId
	FROM archived.ArchivedCourses AS ac
	INNER JOIN deleted AS d
	ON ac.TempStudentId = d.StudentId
	--Updating ArchivedStudents_StudySemesters to have reference to deleted student
	UPDATE asss
	SET asss.ArchivedStudentId = asss.TempStudentId, asss.PresentStudentId = NULL,
	asss.PresentStudySemesterId = asss.TempStudySemesterId
	FROM archived.ArchivedStudents_StudySemesters AS asss
	INNER JOIN deleted AS d
	ON asss.TempStudentId = d.StudentId
END
