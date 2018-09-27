CREATE VIEW [utils].[vStudents]
	AS SELECT s.StudentId, s.StudentName, s.StudentSurname FROM listeners.Students AS s
