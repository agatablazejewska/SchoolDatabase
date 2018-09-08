CREATE TABLE [listeners].[StudentsRepeatedSubjects]
(
	StudentRepeatedSubjectId int IDENTITY (900,1),
	RepeatingStudentId int NOT NULL,
	RepeatedSubjectId varchar(7) NOT NULL,
	StudySemester int NOT NULL,
	Price int NOT NULL,
	Paid bit DEFAULT 0,
	Deadline date,
	CONSTRAINT FK_StudentsRepeatedSubjectsStudents FOREIGN KEY (RepeatingStudentId) REFERENCES listeners.Students,
	CONSTRAINT FK_StudentRepeatedSubjectSchoolSubject FOREIGN KEY (RepeatedSubjectId) REFERENCES studies.SchoolSubjects,
	CONSTRAINT PK_StudentsrepeatedSubjects PRIMARY KEY (StudentRepeatedSubjectId)
)
