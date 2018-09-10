CREATE TABLE [listeners].[Students_StudySemesters]
(
	StudentsStudySemesterId int IDENTITY(1,1),
	StudentId int NOT NULL,
	StudySemesterId int NOT NULL,
	DeanGroupId int, 
	StudyLevelId int NOT NULL,
	StatusId int NOT NULL,
	CONSTRAINT FK_Students_StudySemestersStatuses FOREIGN KEY (StatusId) REFERENCES utilities.Statuses,
	CONSTRAINT FK_Students_StudySemestersStudyLevels FOREIGN KEY (StudyLevelId) REFERENCES utilities.StudyLevels,
	CONSTRAINT FK_Students_StudySemestersStudents FOREIGN KEY (StudentId) REFERENCES listeners.Students,
	CONSTRAINT FK_Students_StudySemestersStudySemesters FOREIGN kEY (StudySemesterId) REFERENCES listeners.StudySemesters,
	CONSTRAINT PK_Students_StudySemesters PRIMARY KEY (StudentsStudySemesterId)
)
