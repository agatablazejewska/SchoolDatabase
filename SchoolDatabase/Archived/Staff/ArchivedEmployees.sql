CREATE TABLE [archived].[ArchivedEmployees]
(
	EmployeeId int,
    EmployeeName nvarchar(20) NOT NULL,
    EmployeeSurname nvarchar(50) NOT NULL,
    AcademicTitleId varchar(12), 
    PESEL char(11) NOT NULL UNIQUE,
	ArchivedAddressId int NOT NULL, 
	EmployeeStatusId int NOT NULL,
	CONSTRAINT UQ_ArchivedEmployeesPesel UNIQUE (PESEL),
	CONSTRAINT FK_ArchivedEmployeesStatuses FOREIGN KEY (EmployeeStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_ArchivedEmployeesAcademicTitle FOREIGN KEY (AcademicTitleId) REFERENCES utilities.AcademicTitles,
	CONSTRAINT FK_ArchivedEmployeesAddresses FOREIGN KEY (ArchivedAddressId) REFERENCES archived.ArchivedAddresses,
	CONSTRAINT PK_ArchivedEmployees PRIMARY KEY (EmployeeId)
)
