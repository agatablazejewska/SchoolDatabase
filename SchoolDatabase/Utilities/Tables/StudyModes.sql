CREATE TABLE [utilities].[StudyModes]
(
	StudyModeId char(1),
    StudyModeName varchar(15) NOT NULL UNIQUE,
    DaysOfWeek varchar(25) NOT NULL,
    ClassHours varchar(12) NOT NULL,
	StudyModePrice int DEFAULT 0,
	CONSTRAINT PK_StudyModes PRIMARY KEY (StudyModeId)
)
