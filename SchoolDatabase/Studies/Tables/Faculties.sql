 CREATE TABLE [studies].[Faculties]
(
	FacultyId varchar(10),
	FacultyFullName varchar(70) NOT NULL,
	DeanId int,
	BuildingNumber varchar(10),
	CONSTRAINT FK_FacultiesEmployees_Dean FOREIGN KEY (DeanId) REFERENCES staff.Employees ON DELETE SET NULL,
	CONSTRAINT PK_Faculties PRIMARY KEY (FacultyId)
)
