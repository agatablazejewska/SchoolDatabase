CREATE TYPE [archived].[EmployeesArchiving] AS TABLE
(
	EmployeeId int,
    EmployeeName varchar(20) NOT NULL,
    EmployeeSurname varchar(50) NOT NULL,
    AcademicTitleId varchar(12), 
    PESEL varchar(11) NOT NULL UNIQUE,
	ArchivedAddressId int NOT NULL, 
	EmployeeStatusId int NOT NULL
)
