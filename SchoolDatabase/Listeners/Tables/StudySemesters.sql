CREATE TABLE [listeners].[StudySemesters]
(
	StudySemesterId int IDENTITY (1000,1),
	StudySemester int NOT NULL,
	FieldOfStudyId int NOT NULL,
	StudyLevelId int NOT NULL,
	StudySemesterCounsellor int,
	StartYear int NOT NULL,
	StudySemesterStatusId int NOT NULL,
	CONSTRAINT FK_StudySemestersStudyLevels FOREIGN KEY (StudyLevelId) REFERENCES utilities.StudyLevels,
	CONSTRAINT FK_StudySemesterStatuses FOREIGN KEY (StudySemesterStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_StudySemesterCounsellors FOREIGN KEY (StudySemesterCounsellor) REFERENCES staff.Counsellors,
	CONSTRAINT FK_StudySemestersFieldsOfStudies FOREIGN KEY (FieldOfStudyId) REFERENCES studies.FieldsOfStudies,
	CONSTRAINT CHK_StartYear CHECK (StartYear >= 2000 AND StartYear <= YEAR(GETDATE())),
	CONSTRAINT FK_StudySemestersSemesters FOREIGN KEY (StudySemester) REFERENCES utilities.Semesters,
	CONSTRAINT PK_StudySemesters PRIMARY KEY (StudySemesterId)
)
