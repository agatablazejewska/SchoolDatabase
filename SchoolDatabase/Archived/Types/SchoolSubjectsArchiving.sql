CREATE TYPE [archived].[SchoolSubjectsArchiving] AS TABLE
(
	SchoolSubjectId varchar(7),
    SchoolSubjectName varchar(200) NOT NULL, 
    HoursAmount int NOT NULL,
    ECTS int NOT NULL,
    ClassType char(1)
)
