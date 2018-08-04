CREATE TABLE [archived].[ArchivedSchoolSubjects]
(
	SchoolSubjectId varchar(7),
    SchoolSubjectName varchar(200) NOT NULL, 
    HoursAmount int NOT NULL,
    ECTS int NOT NULL,
    ClassType char(1),
	Price AS (HoursAmount * 15),
	CONSTRAINT FK_ArchivedSchoolSubjectsCLassTypes FOREIGN KEY (ClassType) REFERENCES utilities.ClassTypes,
	CONSTRAINT PK_ArchivedSchoolSubjects PRIMARY KEY (SchoolSubjectId)
)

