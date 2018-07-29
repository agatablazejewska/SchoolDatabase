CREATE TABLE [studies].[Faculties]
(
	FacultyId varchar(10),
	FacultyFullName varchar(70) NOT NULL,
	DeanId int NOT NULL,
	DeputyDeanId int,
	BuildingNumber varchar(10),
	CONSTRAINT FK_FacultiesEmployees_Dean FOREIGN KEY (DeanId) REFERENCES staff.Employees,
	CONSTRAINT FK_FacultiesEmployees_DeputyDean FOREIGN KEY (DeputyDeanId) REFERENCES staff.Employees,
	CONSTRAINT PK_Faculties PRIMARY KEY (FacultyId)
)
