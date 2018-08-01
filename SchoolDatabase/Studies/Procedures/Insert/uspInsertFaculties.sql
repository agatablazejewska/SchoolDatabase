CREATE PROCEDURE [studies].[uspInsertFaculties]
	@FacultyId varchar(10),
	@FacultyFullName varchar(70),
	@DeanId int, 
	@DeputyDeanId int,
	@BuildingNumber varchar(10)

AS
	INSERT INTO studies.Faculties(FacultyId, FacultyFullName, DeanId, DeputyDeanId, BuildingNumber)
	VALUES (@FacultyId, @FacultyFullName, @DeanId, @DeputyDeanId, @BuildingNumber)
RETURN 0
