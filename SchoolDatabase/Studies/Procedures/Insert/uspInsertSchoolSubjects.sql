 
 

CREATE PROCEDURE [studies].[uspInsertSchoolSubjects]
	@SchoolSubjectId nvarchar(7),
	@SchoolSubjectName nvarchar(200),
	@HoursAmount int,
	@ECTS int,
	@ClassType char(1) 
AS
	INSERT INTO studies.SchoolSubjects(SchoolSubjectId, SchoolSubjectName, HoursAmount, ECTS, ClassType)
	VALUES (@ClassType+@SchoolSubjectId, @SchoolSubjectName, @HoursAmount, @ECTS, @ClassType)
RETURN 0
