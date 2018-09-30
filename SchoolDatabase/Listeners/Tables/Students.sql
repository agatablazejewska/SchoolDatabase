CREATE TABLE [listeners].[Students]
(
	StudentId int IDENTITY(1,1),
    StudentName nvarchar(20) NOT NULL,
    StudentSurname nvarchar(50) NOT NULL,
    StudentPESEL char(11) NOT NULL,
	StudentAddressId int NOT NULL,
	Nationality nvarchar(30) NOT NULL,
	StudentStatusId int NOT NULL DEFAULT 200,
	CONSTRAINT CHK_StudentPESEL CHECK (ISNUMERIC(StudentPESEL) = 1),
	CONSTRAINT UQ_StudentPESEL UNIQUE (StudentPESEL),
	CONSTRAINT FK_StudentsStatuses FOREIGN KEY (StudentStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_StudentsAddresses FOREIGN KEY (StudentAddressId) REFERENCES utilities.Addresses,
	CONSTRAINT PK_Students PRIMARY KEY (StudentId)
)
