CREATE TABLE [archived].[ArchivedStudySemesters]
(
	StudySemesterId int,
	StudySemester int,
	PresentFacultyId varchar(10),
	ArchivedFacultyId varchar(10),
	PresentFieldOfStudyId int,
	ArchivedFieldOfStudyId int,
	StudyLevelId int,
	FormOfStudyId char(1) NOT NULL,
	StartYear int NOT NULL,
	StudySemesterStatusId int,
	CONSTRAINT CHK_ArchivedStudySemestersSemesters CHECK (StudySemester > 0 AND StudySemester <= utils.ufnStudyLevelSemestersConstraint(StudyLevelId)),
	CONSTRAINT FK_ArchivedStudySemestersFormsOfStudy FOREIGN KEY (FormOfStudyId) REFERENCES utilities.FormsOfStudy,
	CONSTRAINT FK_ArchivedStudySemestersFaculties FOREIGN KEY (PresentFacultyId) REFERENCES studies.Faculties,
	CONSTRAINT FK_ArchivedStudySemestersArchivedFaculties FOREIGN KEY (ArchivedFacultyId) REFERENCES archived.ArchivedFaculties,
	CONSTRAINT FK_ArchivedStudySemestersStudyLevels FOREIGN KEY (StudyLevelId) REFERENCES utilities.StudyLevels,
	CONSTRAINT FK_ArchivedStudySemesterStatuses FOREIGN KEY (StudySemesterStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_ArchivedStudySemestersFieldsOfStudies FOREIGN KEY (PresentFieldOfStudyId) REFERENCES studies.FieldsOfStudies,
	CONSTRAINT FK_ArchivedStudySemestersArchivedFieldsOfStudies FOREIGN KEY (ArchivedFieldOfStudyId) REFERENCES archived.ArchivedFieldsOfStudies,
	CONSTRAINT CHK_ArchivedStudySemesters_StartYear CHECK (StartYear >= 2000 AND StartYear <= YEAR(GETDATE())),
	CONSTRAINT CHK_ArchivedStudySemesters_StudySemester CHECK (StudySemester >= 1 AND StudySemester <= 7),
	CONSTRAINT PK_ArchivedStudySemesters PRIMARY KEY (StudySemesterId)
)

