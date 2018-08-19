CREATE TYPE [archived].[StudySemestersArchiving] AS TABLE
(
	StudySemesterId int,
	StudySemester int,
	PresentFieldOfStudyId int,
	ArchivedFieldOfStudyId int,
	StudyLevelId int,
	StartYear int,
	StudySemesterStatusId int
)
