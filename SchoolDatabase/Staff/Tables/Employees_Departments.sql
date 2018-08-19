 
 

CREATE TABLE [staff].[Employees_Departments]
(
	EmployeeDepartmentId int IDENTITY(1,1),
	EmployeeId int,
	DepartmentId int,
	CONSTRAINT FK_Emmployees_DepartmentsEmployees FOREIGN KEY (EmployeeId) REFERENCES staff.Employees ON DELETE CASCADE,
	CONSTRAINT FK_Employees_DepartmentsDepartments FOREIGN KEY (DepartmentId) REFERENCES staff.Departments ON DELETE SET NULL,
	CONSTRAINT PK_Employees_Departments PRIMARY KEY (EmployeeDepartmentId)
)
