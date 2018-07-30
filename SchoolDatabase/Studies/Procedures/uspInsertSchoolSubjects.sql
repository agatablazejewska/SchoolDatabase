CREATE PROCEDURE [studies].[uspInsertSchoolSubjects]
	@SchoolSubjectId varchar(7),
	@SchoolSubjectName varchar(200),
	@HoursAmount int,
	@ECTS int,
	@ClassType char(1) 
AS
	DECLARE @Price int;
	SET @Price = @HoursAmount * 15;
	INSERT INTO SchoolSubjects(SchoolSubjectId, SchoolSubjectName, HoursAmount, ECTS, ClassType, Price)
	VALUES (@SchoolSubjectId, @SchoolSubjectName, @HoursAmount, @ECTS, @ClassType, @Price)
RETURN 0
