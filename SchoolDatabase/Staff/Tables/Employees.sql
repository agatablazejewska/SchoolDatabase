
CREATE TABLE [staff].[Employees]
(
	EmployeeId int IDENTITY(1,1),
    EmployeeName varchar(20) NOT NULL,
    EmployeeSurname varchar(50) NOT NULL,
	DepartmentId int, 
	FacultyId varchar(10),
    AcademicTitleId varchar(12), 
    PESEL varchar(11) NOT NULL,
	EmployeeAddressId int NOT NULL, 
	EmployeeStatusId int NOT NULL,
	CONSTRAINT UQ_EmployeesPesel UNIQUE (PESEL),
	CONSTRAINT FK_EmployeesFaculties FOREIGN KEY (FacultyId) REFERENCES studies.Faculties,
	CONSTRAINT FK_EmployeesStatuses FOREIGN KEY (EmployeeStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_EmployeesAcademicTitle FOREIGN KEY (AcademicTitleId) REFERENCES utilities.AcademicTitles,
	CONSTRAINT FK_EmployeesAddresses FOREIGN KEY (EmployeeAddressId) REFERENCES utilities.Addresses,
	CONSTRAINT FK_EmployeesDepartments FOREIGN KEY (DepartmentId) REFERENCES staff.Departments,
	CONSTRAINT PK_Employees PRIMARY KEY (EmployeeId)
)