CREATE PROCEDURE [studies].[uspInsertIaTTelecommunicationsEP]
	@Semester int,
	@SchoolSubject varchar(7)
AS
	INSERT INTO studies.IaTTelecommunicationsEP(Semester,SchoolSubject)
	VALUES (@Semester, @SchoolSubject);
RETURN 0
