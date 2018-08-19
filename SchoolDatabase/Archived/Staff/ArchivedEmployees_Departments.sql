CREATE TABLE [archived].[ArchivedEmployees_Departments]
(
	ArchivedEmployeeDepartmentId int IDENTITY(1,1),
	ArchivedEmployeeId int,
	PresentDepartmentId int, 
	ArchivedDepartmentId int,
	TempDepartmentId int,
	TempEmployeeId int,
	CONSTRAINT FK_ArchivedEmployees_DepartmentsArchivedEmployees FOREIGN KEY (ArchivedEmployeeId) REFERENCES archived.ArchivedEmployees,
	CONSTRAINT FK_ArchivedEmployees_DepartmentsDepartments FOREIGN KEY (PresentDepartmentId) REFERENCES staff.Departments ON DELETE SET NULL,
	CONSTRAINT FK_ArchivedEmployees_DepartmentsArchivedDepartments FOREIGN KEY (ArchivedDepartmentId) REFERENCES archived.ArchivedDepartments,
	CONSTRAINT PK_ArchivedEmployees_Departments PRIMARY KEY (ArchivedEmployeeDepartmentId)
)
