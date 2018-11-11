CREATE TABLE [studies].[EaAElectronicsMF]
(
	Semester int,
	SchoolSubject varchar(7),
	CONSTRAINT CHK_EaAElectronicsEFSemester  CHECK (Semester >= 0 AND Semester <= utils.ufnStudyLevelSemestersConstraint(2)),
	CONSTRAINT FK_EaAElectronicsEFSchoolSubjects FOREIGN KEY (SchoolSubject) REFERENCES studies.SchoolSubjects,
	CONSTRAINT PK_EaAElectronicsEF PRIMARY KEY (Semester, SchoolSubject)
)
