CREATE PROCEDURE [studies].[uspUpdateSchoolSubjects]
	@SchoolSubjectId varchar(7),
	@HoursAmount int,
	@ECTS int,
	@ClassType char(1) 
AS
	DECLARE @Price int;
	SET @Price = @HoursAmount * 15;
	UPDATE SchoolSubjects
	SET HoursAmount = @HoursAmount, ECTS = @ECTS, Price = @Price
	WHERE SchoolSubjectId = @SchoolSubjectId
RETURN 0
