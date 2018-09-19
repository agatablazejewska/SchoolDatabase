CREATE TABLE [studies].[EaAAutomaticsMP]
(
	Semester int,
	SchoolSubject varchar(7),
	CONSTRAINT CHK_EaAAutomaticsMPSemester  CHECK (Semester >= 0 AND Semester <= utils.ufnStudyLevelSemestersConstraint(4)),
	CONSTRAINT FK_EaAAutomaticsMPSchoolSubjects FOREIGN KEY (SchoolSubject) REFERENCES studies.SchoolSubjects,
	CONSTRAINT PK_EaAAutomaticsMP PRIMARY KEY (Semester, SchoolSubject)
)
