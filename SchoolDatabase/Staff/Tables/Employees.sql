 CREATE TABLE [staff].[Employees]
(
	EmployeeId int IDENTITY(1,1),
    EmployeeName nvarchar(20) NOT NULL,
    EmployeeSurname nvarchar(50) NOT NULL,
    AcademicTitleId varchar(12), 
    PESEL char(11) NOT NULL,
	EmployeeAddressId int NOT NULL, 
	EmployeeStatusId int NOT NULL,
	CONSTRAINT UQ_EmployeesPesel UNIQUE (PESEL),
	CONSTRAINT FK_EmployeesStatuses FOREIGN KEY (EmployeeStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_EmployeesAcademicTitle FOREIGN KEY (AcademicTitleId) REFERENCES utilities.AcademicTitles,
	CONSTRAINT FK_EmployeesAddresses FOREIGN KEY (EmployeeAddressId) REFERENCES utilities.Addresses,
	CONSTRAINT PK_Employees PRIMARY KEY (EmployeeId)
)