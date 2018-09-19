CREATE PROCEDURE [studies].[uspInsertIaTInformaticsEF]
	@Semester int,
	@SchoolSubject varchar(7)
AS
	INSERT INTO studies.IaTInformaticsEF(Semester,SchoolSubject)
	VALUES (@Semester, @SchoolSubject);
RETURN 0
