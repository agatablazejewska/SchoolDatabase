CREATE TABLE [archived].[ArchivedEmployees]
(
	EmployeeId int IDENTITY(1,1),
    EmployeeName varchar(20) NOT NULL,
    EmployeeSurname varchar(50) NOT NULL,
	DepartmentId int, 
	FacultyId varchar(10),
    AcademicTitleId varchar(12), 
    PESEL varchar(11) NOT NULL,
	ArchivedAddressId int NOT NULL, 
	EmployeeStatusId int NOT NULL,
	CONSTRAINT UQ_ArchivedEmployeesPesel UNIQUE (PESEL),
	CONSTRAINT FK_ArchivedEmployeesFaculties FOREIGN KEY (FacultyId) REFERENCES studies.Faculties,
	CONSTRAINT FK_ArchivedEmployeesStatuses FOREIGN KEY (EmployeeStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_ArchivedEmployeesAcademicTitle FOREIGN KEY (AcademicTitleId) REFERENCES utilities.AcademicTitles,
	CONSTRAINT FK_ArchivedEmployeesAddresses FOREIGN KEY (ArchivedAddressId) REFERENCES archived.Addresses,
	CONSTRAINT FK_ArchivedEmployeesDepartments FOREIGN KEY (DepartmentId) REFERENCES staff.Departments,
	CONSTRAINT PK_ArchivedEmployees PRIMARY KEY (EmployeeId)
)
