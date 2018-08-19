CREATE TYPE [archived].[Students_StudySemestersArchiving] AS TABLE
(
	Id int,
	StudyLevelId int,
	TempStudentId int,
	TempStudySemesterId int
)
