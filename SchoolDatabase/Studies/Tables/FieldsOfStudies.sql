/* Table containing info about fields of studies, Informatics, Electronics for example. */
CREATE TABLE [studies].[FieldsOfStudies]
(
	FieldOfStudyId int IDENTITY (1,1),
	FieldOfStudyName varchar(60),
	MaxAmountOfStudents int,
	CONSTRAINT CHK_MaxAmountOfStudents CHECK (MaxAmountOfStudents >=1 AND MaxAmountOfStudents <=450),
	CONSTRAINT PK_FieldsOfStudies PRIMARY KEY (FieldOfStudyId)
)
