CREATE TABLE [studies].[IaTTelecommunicationsEP]
(
	Semester int,
	SchoolSubject varchar(7),
	CONSTRAINT CHK_IaTTelecommunicationsEPSemester  CHECK (Semester >= 0 AND Semester <= utils.ufnStudyLevelSemestersConstraint(2)),
	CONSTRAINT FK_IaTTelecommunicationsEPSchoolSubjects FOREIGN KEY (SchoolSubject) REFERENCES studies.SchoolSubjects,
	CONSTRAINT PK_IaTTelecommunicationsEP PRIMARY KEY (Semester, SchoolSubject)
)
