CREATE TABLE [archived].[ArchivedStudents]
(
	StudentId int,
    StudentName nvarchar(20) NOT NULL,
    StudentSurname nvarchar(50) NOT NULL,
    StudentPESEL char(11) NOT NULL,
	ArchivedAddressId int,
	Nationality nvarchar(30) NOT NULL,
	StudentStatusId int NOT NULL,
	CONSTRAINT UQ_ArchivedStudentPESEL UNIQUE (StudentPESEL),
	CONSTRAINT FK_ArchivedStudentsStatuses FOREIGN KEY (StudentStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_ArchivedStudentArchivedAddresses FOREIGN KEY (ArchivedAddressId) REFERENCES archived.ArchivedAddresses,
	CONSTRAINT PK_ArchivedStudents PRIMARY KEY (StudentId)
)
