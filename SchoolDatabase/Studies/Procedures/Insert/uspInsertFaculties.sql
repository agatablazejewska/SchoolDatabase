CREATE PROCEDURE [studies].[uspInsertFaculties]
	@FacultyId nvarchar(10),
	@FacultyFullName nvarchar(70),
	@DeanId int, 
	@BuildingNumber nvarchar(10)

AS
	INSERT INTO studies.Faculties(FacultyId, FacultyFullName, DeanId, BuildingNumber)
	VALUES (@FacultyId, @FacultyFullName, @DeanId, @BuildingNumber)
RETURN 0
