CREATE TABLE [archived].[ArchivedFieldsOfStudies]
(
	FieldOfStudyId int IDENTITY (1,1),
	FieldOfStudyName varchar(60),
	MaxAmountOfStudents int,
	FieldOfStudyFacultyId varchar(10),
	CONSTRAINT FK_ArchivedFieldsOfStudiesFaculties FOREIGN KEY (FieldOfStudyFacultyId) REFERENCES studies.Faculties,
	CONSTRAINT CHK_ArchivedMaxAmountOfStudents CHECK (MaxAmountOfStudents >=1 AND MaxAmountOfStudents <=450),
	CONSTRAINT PK_ArchivedFieldsOfStudies PRIMARY KEY (FieldOfStudyId)
)