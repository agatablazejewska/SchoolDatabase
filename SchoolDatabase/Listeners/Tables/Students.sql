CREATE TABLE [listeners].[Students]
(
	StudentId int IDENTITY(1,1),
    StudentName nvarchar(20) NOT NULL,
    StudentSurname nvarchar(50) NOT NULL,
    StudentPESEL char(11) NOT NULL,
    StudentFormOfStudyId char(1) NOT NULL,
	StudentAddressId int NOT NULL,
	StudentStatusId int NOT NULL,
	CONSTRAINT UQ_StudentPESEL UNIQUE (StudentPESEL),
	CONSTRAINT FK_StudentsStatuses FOREIGN KEY (StudentStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_StudentsFormsOfStudy FOREIGN KEY (StudentFormOfStudyId) REFERENCES utilities.FormsOfStudy,
	CONSTRAINT FK_StudentsAddresses FOREIGN KEY (StudentAddressId) REFERENCES utilities.Addresses,
	CONSTRAINT PK_Students PRIMARY KEY (StudentId)
)
