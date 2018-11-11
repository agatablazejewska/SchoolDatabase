CREATE PROCEDURE [studies].[uspInsertEaAAutomaticsEF]
	@Semester int,
	@SchoolSubject varchar(7)
AS
	INSERT INTO studies.EaAAutomaticsEF(Semester,SchoolSubject)
	VALUES (@Semester, @SchoolSubject);
RETURN 0
