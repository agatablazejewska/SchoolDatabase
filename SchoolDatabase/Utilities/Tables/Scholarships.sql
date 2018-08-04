 
 

CREATE TABLE [utilities].[Scholarships]
(
	ScholarshipId int IDENTITY (1,1),
	ScholarshipType varchar(20) NOT NULL,
	ScholarshipAmount int NOT NULL,
	CONSTRAINT UQ_ScholarshipType UNIQUE (ScholarshipType),
	CONSTRAINT PK_Scholarships PRIMARY KEY (ScholarshipId)
)
