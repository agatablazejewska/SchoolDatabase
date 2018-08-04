CREATE TYPE [archived].[StudentsArchiving] AS TABLE
(
	StudentId int PRIMARY KEY,
    StudentName varchar(20),
    StudentSurname varchar(50),
    StudentPESEL varchar(11),
	StudentStudySemesterId int,
	StudentDeanGroupId int,
	StudentSemester int,
	StudentStudyLevelId int,
    StudentFormOfStudyId char(1),
	StudentAddressId int,
	StudentStatusId int
)
