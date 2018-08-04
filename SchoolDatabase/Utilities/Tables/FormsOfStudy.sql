 
 

CREATE TABLE [utilities].[FormsOfStudy]
(
	FormOfStudyId char(1),
    FormOfStudyName varchar(15) NOT NULL,
    DaysOfWeek varchar(25) NOT NULL,
    ClassHours varchar(12) NOT NULL,
	FormOfStudyPrice int NOT NULL DEFAULT 0,
	CONSTRAINT UQ_FormOfStudyName UNIQUE (FormOfStudyName),
	CONSTRAINT PK_FormsOfStudy PRIMARY KEY (FormOfStudyId)
)
