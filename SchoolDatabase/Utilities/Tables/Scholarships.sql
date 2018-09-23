/* Table created to store all available types of scholarships and amount of money coming with each one */
CREATE TABLE [utilities].[Scholarships]
(
	ScholarshipId int IDENTITY (1,1),
	ScholarshipType varchar(20) NOT NULL,
	ScholarshipAmount int NOT NULL,
	CONSTRAINT UQ_ScholarshipType UNIQUE (ScholarshipType),
	CONSTRAINT PK_Scholarships PRIMARY KEY (ScholarshipId)
)
