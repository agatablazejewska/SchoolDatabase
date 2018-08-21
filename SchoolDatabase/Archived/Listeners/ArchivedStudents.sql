CREATE TABLE [archived].[ArchivedStudents]
(
	StudentId int,
    StudentName nvarchar(20) NOT NULL,
    StudentSurname nvarchar(50) NOT NULL,
    StudentPESEL varchar(11) NOT NULL,
    StudentFormOfStudyId char(1) NOT NULL,
	ArchivedAddressId int,
	StudentStatusId int NOT NULL,
	CONSTRAINT UQ_ArchivedStudentPESEL UNIQUE (StudentPESEL),
	CONSTRAINT FK_ArchivedStudentsStatuses FOREIGN KEY (StudentStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_ArchivedStudentArchivedAddresses FOREIGN KEY (ArchivedAddressId) REFERENCES archived.ArchivedAddresses,
	CONSTRAINT FK_ArchivedStudentsFormsOfStudy FOREIGN KEY (StudentFormOfStudyId) REFERENCES utilities.FormsOfStudy,
	CONSTRAINT PK_ArchivedStudents PRIMARY KEY (StudentId)
)
