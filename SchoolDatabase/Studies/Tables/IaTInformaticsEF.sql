CREATE TABLE [studies].[IaTInformaticsEF]
(
	Semester int,
	SchoolSubject varchar(7),
	CONSTRAINT CHK_IaTInformaticsEFSemester   CHECK (Semester >= 0 AND Semester <= utils.ufnStudyLevelSemestersConstraint(2)),
	CONSTRAINT FK_IaTInformaticsEFSchoolSubjects FOREIGN KEY (SchoolSubject) REFERENCES studies.SchoolSubjects,
	CONSTRAINT PK_IaTInformaticsEF PRIMARY KEY (Semester, SchoolSubject)
)
