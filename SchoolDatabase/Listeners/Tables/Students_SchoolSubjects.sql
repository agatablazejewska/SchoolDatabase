CREATE TABLE [listeners].[Students_SchoolSubjects]
(
	StudentSchoolSubjectId int IDENTITY (1,1),
	StudentId int NOT NULL,
	SchoolSubjectId varchar(7) NOT NULL,
	CONSTRAINT FK_StudentIdWithSubject FOREIGN KEY (StudentId) REFERENCES listeners.Students ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_Students_SchoolSubjectsSchoolSubjects FOREIGN KEY (SchoolSubjectId) REFERENCES studies.SchoolSubjects ON DELETE CASCADE,
	CONSTRAINT PK_StudentSchoolSubjects PRIMARY KEY (StudentSchoolSubjectId)
)
