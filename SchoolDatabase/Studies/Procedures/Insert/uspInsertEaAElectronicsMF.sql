CREATE PROCEDURE [studies].[uspInsertEaAElectronicsMF]
	@Semester int,
	@SchoolSubject varchar(7)
AS
	INSERT INTO studies.EaAElectronicsMF(Semester,SchoolSubject)
	VALUES (@Semester, @SchoolSubject);
RETURN 0
