CREATE PROCEDURE [listeners].[uspDeleteStudents_StudySemesters]
	@StudentsStudySemeterId int
AS
	DELETE FROM listeners.Students_StudySemesters
	WHERE StudentsStudySemesterId = @StudentsStudySemeterId;
RETURN 0
