CREATE PROCEDURE [archived].[uspInsertArchivedStudents]
	@ArchivingTable archived.StudentsArchiving READONLY
AS
	INSERT INTO archived.ArchivedStudents(StudentId, StudentName, StudentSurname, StudentPESEL, StudySemesterId,
	StudentSemester, StudentStudyLevelId, StudentFormOfStudyId, ArchivedAddressId, StudentStatusId)
	SELECT StudentId, StudentName, StudentSurname, StudentPESEL, StudentStudySemesterId, StudentSemester,
	StudentStudyLevelId, StudentFormOfStudyId, StudentAddressId, StudentStatusId
	FROM @ArchivingTable;
RETURN 0
