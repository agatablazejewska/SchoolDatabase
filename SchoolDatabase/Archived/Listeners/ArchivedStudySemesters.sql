CREATE TABLE [archived].[ArchivedStudySemesters]
(
	StudySemesterId int,
	StudySemester int,
	PresentFieldOfStudyId int,
	ArchivedFieldOfStudyId int,
	StudyLevelId int,
	StartYear int NOT NULL,
	StudySemesterStatusId int,
	CONSTRAINT FK_ArchivedStudySemestersStudyLevels FOREIGN KEY (StudyLevelId) REFERENCES utilities.StudyLevels,
	CONSTRAINT FK_ArchivedStudySemesterStatuses FOREIGN KEY (StudySemesterStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_ArchivedStudySemestersFieldsOfStudies FOREIGN KEY (PresentFieldOfStudyId) REFERENCES studies.FieldsOfStudies,
	CONSTRAINT FK_ArchivedStudySemestersArchivedFieldsOfStudies FOREIGN KEY (ArchivedFieldOfStudyId) REFERENCES archived.ArchivedFieldsOfStudies,
	CONSTRAINT CHK_ArchivedStudySemesters_StartYear CHECK (StartYear >= 2000 AND StartYear <= YEAR(GETDATE())),
	CONSTRAINT CHK_ArchivedStudySemesters_StudySemester CHECK (StudySemester >= 1 AND StudySemester <= 7),
	CONSTRAINT PK_ArchivedStudySemesters PRIMARY KEY (StudySemesterId)
)

