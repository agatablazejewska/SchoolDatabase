CREATE TABLE [archived].[ArchivedStudents]
(
	StudentId int IDENTITY(1,1),
    StudentName varchar(20) NOT NULL,
    StudentSurname varchar(50) NOT NULL,
    StudentPESEL varchar(11) NOT NULL,
	ArchivedStudySemesterId int NOT NULL,
	StudentSemester int,
	StudentStudyLevelId int NOT NULL,
    StudentFormOfStudyId char(1) NOT NULL,
	ArchivedAddressId int NOT NULL,
	StudentStatusId int NOT NULL,
	CONSTRAINT UQ_ArchivedStudentPESEL UNIQUE (StudentPESEL),
	CONSTRAINT FK_ArchivedStudentsStatuses FOREIGN KEY (StudentStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_ArchivedStudentsSemesters FOREIGN KEY (StudentSemester) REFERENCES utilities.Semesters,
	CONSTRAINT FK_ArchivedStudentArchivedAddresses FOREIGN KEY (ArchivedAddressId) REFERENCES archived.ArchivedAddresses,
	CONSTRAINT FK_ArchivedStudentsStudySemesters FOREIGN KEY (ArchivedStudySemesterId) REFERENCES archived.StudySemesters,
	CONSTRAINT FK_ArchivedStudentsFormsOfStudy FOREIGN KEY (StudentFormOfStudyId) REFERENCES utilities.FormsOfStudy,
	CONSTRAINT FK_ArchivedStudentsStudyLevels FOREIGN KEY (StudentStudyLevelId) REFERENCES utilities.StudyLevels,
	CONSTRAINT PK_ArchivedStudents PRIMARY KEY (StudentId)
)
