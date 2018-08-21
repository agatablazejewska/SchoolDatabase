CREATE TYPE [archived].[StudentsArchiving] AS TABLE
(
	StudentId int PRIMARY KEY,
    StudentName nvarchar(20),
    StudentSurname nvarchar(50),
    StudentPESEL varchar(11),
	StudentSemester int,
    StudentFormOfStudyId char(1),
	StudentAddressId int,
	StudentStatusId int
)
