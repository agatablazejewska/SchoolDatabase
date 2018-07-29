CREATE TABLE [utilities].[AcademicTitles]
(
	AcademicTitleId int IDENTITY(1,1),
	FullTitle varchar(60) NOT NULL UNIQUE,
	ShortTitle varchar(12),
	CONSTRAINT PK_AcademicTitles PRIMARY KEY (AcademicTitleId)
)
