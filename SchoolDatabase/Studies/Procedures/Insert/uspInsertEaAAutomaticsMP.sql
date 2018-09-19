CREATE PROCEDURE [studies].[uspInsertEaAAutomaticsMP]
	@Semester int,
	@SchoolSubject varchar(7)
AS
	INSERT INTO studies.EaAAutomaticsMP(Semester,SchoolSubject)
	VALUES (@Semester, @SchoolSubject);
RETURN 0
