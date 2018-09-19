CREATE PROCEDURE [studies].[uspInsertEaAElectronicsEF]
@Semester int,
	@SchoolSubject varchar(7)
AS
	INSERT INTO studies.EaAElectronicsEF(Semester,SchoolSubject)
	VALUES (@Semester, @SchoolSubject);
RETURN 0
