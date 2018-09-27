CREATE TABLE [listeners].[StudySemesters]
(
	StudySemesterId int IDENTITY (1000,1),
	StudySemester int NOT NULL DEFAULT 1,
	FacultyId varchar(10) NOT NULL,
	FieldOfStudyId int NOT NULL,
	StudyLevelId int NOT NULL,
	FormOfStudyId char(1) NOT NULL,
	StudySemesterCounsellor int,
	StartYear int NOT NULL DEFAULT YEAR(GETDATE()),
	AmountOfStudents int NOT NULL DEFAULT 0,
	StudySemesterStatusId int NOT NULL DEFAULT 200,
	CONSTRAINT CHK_StudySemestersAmountOfStudents CHECK (AmountOfStudents >= 0 AND AmountOfStudents <= utils.ufnStudySemestersAmountOfStudentsConstraint(FieldOfStudyId)),
	CONSTRAINT FK_StudySemestersFormsOfStudy FOREIGN KEY (FormOfStudyId) REFERENCES utilities.FormsOfStudy,
	CONSTRAINT FK_StudySemestersFaculties FOREIGN KEY (FacultyId) REFERENCES studies.Faculties,
	CONSTRAINT FK_StudySemestersStudyLevels FOREIGN KEY (StudyLevelId) REFERENCES utilities.StudyLevels,
	CONSTRAINT FK_StudySemesterStatuses FOREIGN KEY (StudySemesterStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT CHK_StudySemesterSemesters CHECK (StudySemester > 0 AND StudySemester <= utils.ufnStudyLevelSemestersConstraint(StudyLevelId)),
	CONSTRAINT FK_StudySemesterCounsellors FOREIGN KEY (StudySemesterCounsellor) REFERENCES staff.Counsellors ON DELETE SET NULL,
	CONSTRAINT FK_StudySemestersFieldsOfStudies FOREIGN KEY (FieldOfStudyId) REFERENCES studies.FieldsOfStudies,
	CONSTRAINT CHK_StartYear CHECK (StartYear >= 2000 AND StartYear <= YEAR(GETDATE())),
	CONSTRAINT FK_StudySemestersSemesters FOREIGN KEY (StudySemester) REFERENCES utilities.Semesters,
	CONSTRAINT PK_StudySemesters PRIMARY KEY (StudySemesterId)
)
