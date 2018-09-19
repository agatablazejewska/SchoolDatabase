CREATE TABLE [archived].[ArchivedFaculties]
(
	FacultyId varchar(10),
	FacultyFullName varchar(70) NOT NULL,
	BuildingNumber varchar(10),
	CONSTRAINT PK_ArchivedFaculties PRIMARY KEY (FacultyId)
)
