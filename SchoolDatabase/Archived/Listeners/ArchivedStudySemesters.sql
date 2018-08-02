CREATE TABLE [archived].[ArchivedStudySemesters]
(
	StudySemesterId int IDENTITY (1000,1),
	StudySemester int,
	PresentFieldOfStudyId int,
	ArchivedFieldOfStudyId int,
	StartYear int NOT NULL,
	StudySemesterStatusId int,
	CONSTRAINT FK_ArchivedStudySemesterStatuses FOREIGN KEY (StudySemesterStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_ArchivedStudySemestersFieldsOfStudies FOREIGN KEY (PresentFieldOfStudyId) REFERENCES studies.FieldsOfStudies,
	CONSTRAINT FK_ArchivedStudySemestersArchivedFieldsOfStudies FOREIGN KEY (ArchivedFieldOfStudyId) REFERENCES archived.ArchivedFieldsOfStudies,
	CONSTRAINT CHK_ArchivedStudySemesters_StartYear CHECK (StartYear >= 2000 AND StartYear <= YEAR(GETDATE())),
	CONSTRAINT CHK_ArchivedStudySemesters_StudySemester CHECK (StudySemester >= 1 AND StudySemester <= 7),
	CONSTRAINT PK_ArchivedStudySemesters PRIMARY KEY (StudySemesterId)
)

