CREATE TABLE [listeners].[StudyYears]
(
	StudyYearId int IDENTITY (1000,1),
	StudyYear int,
	FieldOfStudyId int,
	StudyYearCounsellor int,
	StartYear int NOT NULL,
	StudyYearStatusId int,
	CONSTRAINT FK_StudyYearStatuses FOREIGN KEY (StudyYearStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_StudyYearCounsellors FOREIGN KEY (StudyYearCounsellor) REFERENCES staff.Counsellors,
	CONSTRAINT FK_StudyYearsFieldsOfStudies FOREIGN KEY (FieldOfStudyId) REFERENCES studies.FieldsOfStudies,
	CONSTRAINT CHK_StartYear CHECK (StartYear >= 2000 AND StartYear <= YEAR(GETDATE())),
	CONSTRAINT CHK_StudyYear CHECK (StudyYear >= 1 AND StudyYear <= 4),
	CONSTRAINT PK_StudyYears PRIMARY KEY (StudyYearId)
)
