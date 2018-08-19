CREATE PROCEDURE [archived].[uspInsertArchivedStudents]
	@ArchivingTable archived.StudentsArchiving READONLY
AS
	INSERT INTO archived.ArchivedStudents(StudentId, StudentName, StudentSurname, StudentPESEL,
	 StudentFormOfStudyId, ArchivedAddressId, StudentStatusId)
	SELECT StudentId, StudentName, StudentSurname, StudentPESEL, 
	 StudentFormOfStudyId, StudentAddressId, StudentStatusId
	FROM @ArchivingTable;
RETURN 0
