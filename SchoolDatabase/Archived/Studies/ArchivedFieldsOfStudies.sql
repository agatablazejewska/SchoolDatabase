CREATE TABLE [archived].[ArchivedFieldsOfStudies]
(
	FieldOfStudyId int,
	FieldOfStudyName varchar(60),
	FieldOfStudyFacultyId varchar(10),
	CONSTRAINT FK_ArchivedFieldsOfStudiesFaculties FOREIGN KEY (FieldOfStudyFacultyId) REFERENCES studies.Faculties,
	CONSTRAINT PK_ArchivedFieldsOfStudies PRIMARY KEY (FieldOfStudyId)
)