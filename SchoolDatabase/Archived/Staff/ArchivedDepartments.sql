CREATE TABLE [archived].[ArchivedDepartments]
(
	ArchivedDepartmentId int,
	DepartmentName varchar(100) NOT NULL,
	ShortName varchar(10),
	FacultyId varchar(10) NOT NULL,
	CONSTRAINT FK_ArchivedDepartmentsFaculties FOREIGN KEY (FacultyId) REFERENCES studies.Faculties,
	CONSTRAINT PK_ArchivedDepartments PRIMARY KEY (ArchivedDepartmentId)
)
