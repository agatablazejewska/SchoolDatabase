CREATE TABLE [studies].[SchoolSubjects]
(
	SchoolSubjectId varchar(7),
    SchoolSubjectName varchar(200) NOT NULL, 
    HoursAmount int NOT NULL,
    ECTS int NOT NULL,
    ClassType char(1),
	Price int,
	CONSTRAINT FK_SchoolSubjectsCLassTypes FOREIGN KEY (ClassType) REFERENCES utilities.ClassTypes,
	CONSTRAINT PK_SchoolSubjects PRIMARY KEY (SchoolSubjectId)
)
