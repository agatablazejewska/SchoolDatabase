 
 

CREATE TABLE [studies].[FieldsOfStudies]
(
	FieldOfStudyId int IDENTITY (1,1),
	FieldOfStudyName varchar(60),
	MaxAmountOfStudents int,
	FieldOfStudyFacultyId varchar(10),
	CONSTRAINT FK_FieldsOfStudiesFaculties FOREIGN KEY (FieldOfStudyFacultyId) REFERENCES studies.Faculties,
	CONSTRAINT CHK_MaxAmountOfStudents CHECK (MaxAmountOfStudents >=1 AND MaxAmountOfStudents <=450),
	CONSTRAINT PK_FieldsOfStudies PRIMARY KEY (FieldOfStudyId)
)
