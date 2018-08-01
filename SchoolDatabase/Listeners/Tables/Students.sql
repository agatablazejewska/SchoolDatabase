CREATE TABLE [listeners].[Students]
(
	StudentId int IDENTITY(1,1),
    StudentName varchar(20) NOT NULL,
    StudentSurname varchar(50) NOT NULL,
    StudentPESEL varchar(11) NOT NULL,
	StudentStudySemesterId int NOT NULL,
	StudentDeanGroupId int NOT NULL,
	StudentSemester int NOT NULL,
	StudentStudyLevelId int NOT NULL,
    StudentFormOfStudyId char(1) NOT NULL,
	StudentAddressId int NOT NULL,
	StudentStatusId int NOT NULL,
	CONSTRAINT UQ_StudentPESEL UNIQUE (StudentPESEL),
	CONSTRAINT FK_StudentsStatuses FOREIGN KEY (StudentStatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_StudentsSemesters FOREIGN KEY (StudentSemester) REFERENCES utilities.Semesters,
	CONSTRAINT FK_StudentsDeanGroups FOREIGN KEY (StudentDeanGroupId) REFERENCES listeners.DeanGroups,
	CONSTRAINT FK_StudentsStudySemesters FOREIGN KEY (StudentStudySemesterId) REFERENCES listeners.StudySemesters,
	CONSTRAINT FK_StudentsFormsOfStudy FOREIGN KEY (StudentFormOfStudyId) REFERENCES utilities.FormsOfStudy,
	CONSTRAINT FK_StudentsStudyLevels FOREIGN KEY (StudentStudyLevelId) REFERENCES utilities.StudyLevels,
	CONSTRAINT FK_StudentsAddresses FOREIGN KEY (StudentAddressId) REFERENCES utilities.Addresses,
	CONSTRAINT PK_Students PRIMARY KEY (StudentId)
)
