/* Table containing info about which field of study at which faculty is run */
CREATE TABLE [studies].[Faculties_FieldsOfStudies]
(
	FacultyId varchar(10),
	FieldOfStudyId int,
	CONSTRAINT FK_Faculties_FieldsOfStudiesFaculties FOREIGN KEY (FacultyId) REFERENCES studies.Faculties,
	CONSTRAINT FK_Faculties_FieldsOfStudiesFieldsOfStudies FOREIGN KEY (FieldOfStudyId) REFERENCES studies.FieldsOfStudies,
	CONSTRAINT PK_Faculties_FieldsOfStudies PRIMARY KEY (FacultyId, FieldOfStudyId)
)
