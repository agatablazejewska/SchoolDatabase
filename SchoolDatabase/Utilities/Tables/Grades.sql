 /* Table created to make sure no one is able to put in a grade out of range */
 CREATE TABLE [utilities].[Grades]
(
	GradeId decimal(2,1),
	GradeNum decimal(2,1),
	GradeWritten varchar(25),
	CONSTRAINT PK_Grades PRIMARY KEY (GradeId)
)
