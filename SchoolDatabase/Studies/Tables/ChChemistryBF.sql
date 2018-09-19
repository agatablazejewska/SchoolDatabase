CREATE TABLE [studies].[ChChemistryBF]
(
	Semester int,
	SchoolSubject varchar(7),
	CONSTRAINT CHK_ChChemistryBFSemester  CHECK (Semester >= 0 AND Semester <= utils.ufnStudyLevelSemestersConstraint(1)),
	CONSTRAINT FK_ChChemistryBFSchoolSubjects FOREIGN KEY (SchoolSubject) REFERENCES studies.SchoolSubjects,
	CONSTRAINT PK_ChChemistryBF PRIMARY KEY (Semester, SchoolSubject)
)
