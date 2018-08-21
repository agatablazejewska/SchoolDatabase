CREATE TYPE [archived].[SchoolSubjectsArchiving] AS TABLE
(
	SchoolSubjectId nvarchar(7),
    SchoolSubjectName nvarchar(200) NOT NULL, 
    HoursAmount int NOT NULL,
    ECTS int NOT NULL,
    ClassType char(1)
)
