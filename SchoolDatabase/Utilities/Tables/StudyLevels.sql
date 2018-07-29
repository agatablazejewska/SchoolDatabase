CREATE TABLE [utilities].[StudyLevels]
(	
	StudyLevelId int IDENTITY(1,1),
	StudyLevelName varchar(15) NOT NULL,
	Semesters int NOT NULL,
	CONSTRAINT FK_StudyLevelsSemesters FOREIGN KEY (Semesters) REFERENCES utilities.Semesters,
	CONSTRAINT PK_StudyLevels PRIMARY KEY (StudyLevelId)
)
