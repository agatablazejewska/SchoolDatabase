CREATE TABLE [listeners].[Students_SchoolSubjects]
(
	StudentSchoolSubjectId int IDENTITY (1,1),
	StudentId int NOT NULL,
	SchoolSubjectId varchar(7) NOT NULL,
	CONSTRAINT FK_Students_SchoolSubjectsStudents FOREIGN KEY (StudentId) REFERENCES listeners.Students,
	CONSTRAINT FK_Students_SchoolSubjectsSchoolSubjects FOREIGN KEY (SchoolSubjectId) REFERENCES studies.SchoolSubjects,
	CONSTRAINT PK_Students_SchoolSubjects PRIMARY KEY (StudentSchoolSubjectId)
)
