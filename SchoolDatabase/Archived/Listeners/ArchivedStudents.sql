CREATE TABLE [archived].[ArchivedStudents]
(
	StudentId int,
    StudentName varchar(20) NOT NULL,
    StudentSurname varchar(50) NOT NULL,
    StudentPESEL varchar(11) NOT NULL,
	StudySemesterId int,
	ArchivedStudySemesterId int,
	StudentSemester int,
	StudentStudyLevelId int NOT NULL,
    StudentFormOfStudyId char(1) NOT NULL,
	ArchivedAddressId int,
	StudentStatusId int NOT NULL,
	CONSTRAINT UQ_ArchivedStudentPESEL UNIQUE (StudentPESEL),
	CONSTRAINT FK_ArchivedStudentsStudySemesters FOREIGN KEY (StudySemesterId) REFERENCES listeners.StudySemesters,
	CONSTRAINT FK_ArchivedStudentsStatuses FOREIGN KEY (StudentStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_ArchivedStudentsSemesters FOREIGN KEY (StudentSemester) REFERENCES utilities.Semesters,
	CONSTRAINT FK_ArchivedStudentArchivedAddresses FOREIGN KEY (ArchivedAddressId) REFERENCES archived.ArchivedAddresses,
	CONSTRAINT FK_ArchivedStudentsArchivedStudySemesters FOREIGN KEY (ArchivedStudySemesterId) REFERENCES archived.ArchivedStudySemesters,
	CONSTRAINT FK_ArchivedStudentsFormsOfStudy FOREIGN KEY (StudentFormOfStudyId) REFERENCES utilities.FormsOfStudy,
	CONSTRAINT FK_ArchivedStudentsStudyLevels FOREIGN KEY (StudentStudyLevelId) REFERENCES utilities.StudyLevels,
	CONSTRAINT PK_ArchivedStudents PRIMARY KEY (StudentId)
)
