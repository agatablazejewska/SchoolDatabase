CREATE TABLE [utilities].[AcademicTitles]
(
	AcademicTitleId varchar(12),
	FullTitle varchar(60) NOT NULL UNIQUE,
	CONSTRAINT PK_AcademicTitles PRIMARY KEY (AcademicTitleId)
)
