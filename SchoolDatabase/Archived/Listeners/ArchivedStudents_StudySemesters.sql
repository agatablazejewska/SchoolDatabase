CREATE TABLE [archived].[ArchivedStudents_StudySemesters]
(
	Id int IDENTITY(1,1),
	PresentStudentId int,
	ArchivedStudentId int,
	PresentStudySemesterId int,
	ArchivedStudySemesterId int,
	StudyLevelId int,
	FormOfStudyId char(1),
	Price int,
	Paid bit,
	CONSTRAINT FK_ArchivedStudents_StudySemestersFormsOfStudy FOREIGN KEY (FormOfStudyId) REFERENCES utilities.FormsOfStudy,
	CONSTRAINT FK_ArchivedStudents_StudySemestersStudents FOREIGN KEY (PresentStudentId) REFERENCES listeners.Students ON DELETE SET NULL,
	CONSTRAINT FK_ArchivedStudents_StudySemestersArchivedStudents FOREIGN KEY (ArchivedStudentId) REFERENCES archived.ArchivedStudents,
	CONSTRAINT FK_ArchivedStudents_StudySemestersStudySemesters FOREIGN KEY (PresentStudySemesterId) REFERENCES listeners.StudySemesters ON DELETE SET NULL,
	CONSTRAINT FK_ArchivedStudents_StudySemestersArchivedStudySemesters FOREIGN KEY (ArchivedStudySemesterId) REFERENCES archived.ArchivedStudySemesters,
	CONSTRAINT FK_ArchivedStudents_StudySemestersStudyLevels FOREIGN KEY (StudyLevelId) REFERENCES utilities.StudyLevels,
	CONSTRAINT PK_ArchivedStudents_StudySemesters PRIMARY KEY (Id)
	
)
