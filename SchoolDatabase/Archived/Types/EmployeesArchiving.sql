CREATE TYPE [archived].[EmployeesArchiving] AS TABLE
(
	EmployeeId int,
    EmployeeName nvarchar(20) NOT NULL,
    EmployeeSurname nvarchar(50) NOT NULL,
    AcademicTitleId varchar(12), 
    PESEL varchar(11) NOT NULL UNIQUE,
	ArchivedAddressId int NOT NULL, 
	EmployeeStatusId int NOT NULL
)
