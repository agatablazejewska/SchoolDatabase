CREATE TABLE [listeners].[StudySemesters]
(
	StudySemesterId int IDENTITY (1000,1),
	StudySemester int,
	FieldOfStudyId int,
	StudySemesterCounsellor int,
	StartYear int NOT NULL,
	StudySemesterStatusId int,
	CONSTRAINT FK_StudySemesterStatuses FOREIGN KEY (StudySemesterStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_StudySemesterCounsellors FOREIGN KEY (StudySemesterCounsellor) REFERENCES staff.Counsellors,
	CONSTRAINT FK_StudySemestersFieldsOfStudies FOREIGN KEY (FieldOfStudyId) REFERENCES studies.FieldsOfStudies,
	CONSTRAINT CHK_StartYear CHECK (StartYear >= 2000 AND StartYear <= YEAR(GETDATE())),
	CONSTRAINT CHK_StudySemester CHECK (StudySemester >= 1 AND StudySemester <= 7),
	CONSTRAINT PK_StudySemesters PRIMARY KEY (StudySemesterId)
)
