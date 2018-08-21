 CREATE TABLE [staff].[Departments]
(
	DepartmentId int IDENTITY(1,1),
	DepartmentName varchar(100) NOT NULL,
	ShortName varchar(10),
	FacultyId varchar(10) NOT NULL,
	HeadmasterId int,
	CONSTRAINT FK_DepartmentsFaculties FOREIGN KEY (FacultyId) REFERENCES studies.Faculties,
	CONSTRAINT FK_DepartmentsEmployees FOREIGN KEY (HeadmasterId) REFERENCES staff.Employees ON DELETE SET NULL,
	CONSTRAINT PK_Departments PRIMARY KEY (DepartmentId)
)