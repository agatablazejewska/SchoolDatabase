CREATE TABLE [utilities].[Scholarships]
(
	ScholarshipId int IDENTITY (1,1),
	ScholarshipType varchar(20) NOT NULL UNIQUE,
	ScholarshipAmount int NOT NULL,
	CONSTRAINT PK_Scholarships PRIMARY KEY (ScholarshipId)
)
