CREATE TABLE [staff].[Departments]
(
	DepartmentId int IDENTITY(1,1),
	DepartmentName varchar(100) NOT NULL,
	ShortName varchar(10),
	HeadmasterId int NOT NULL,
	CONSTRAINT FK_DepartmentsEmployees FOREIGN KEY (HeadmasterId) REFERENCES staff.Employees,
	CONSTRAINT PK_Departments PRIMARY KEY (DepartmentId)
)
