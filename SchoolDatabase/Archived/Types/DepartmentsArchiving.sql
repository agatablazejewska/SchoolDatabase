CREATE TYPE [archived].[DepartmentsArchiving] AS TABLE
(
	DepartmentId int,
	DepartmentName varchar(100),
	ShortName varchar(10),
	FacultyId varchar(10)
)
