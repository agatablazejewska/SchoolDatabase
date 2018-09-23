/* Table created to make sure no one will put in semester out of range */
CREATE TABLE [utilities].[Semesters]
(
	SemesterId int IDENTITY (1,1),
	SemesterNum int,
	SemesterWritten varchar(10),
	CONSTRAINT CHK_Semester CHECK (SemesterNum >=1 AND SemesterNum <=7),
	CONSTRAINT PK_Semesters PRIMARY KEY (SemesterId)
)
