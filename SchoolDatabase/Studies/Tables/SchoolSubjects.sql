/* Table containing every possible school subject and info about it such as amount of hours it takes 
or how much ECTS points it is worth. 
There is also info about whether it is lecture, practice or excersices - fastest way to know is to look at SchoolSubjectId
first letter - l stands for lecture and so on.*/
 CREATE TABLE [studies].[SchoolSubjects]
(
	SchoolSubjectId varchar(7),
    SchoolSubjectName varchar(200) NOT NULL, 
    HoursAmount int NOT NULL,
    ECTS int NOT NULL,
    ClassType char(1),
	Price AS (HoursAmount * 15),
	CONSTRAINT FK_SchoolSubjectsCLassTypes FOREIGN KEY (ClassType) REFERENCES utilities.ClassTypes,
	CONSTRAINT PK_SchoolSubjects PRIMARY KEY (SchoolSubjectId)
)
