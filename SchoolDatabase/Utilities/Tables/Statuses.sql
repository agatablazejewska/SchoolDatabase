CREATE TABLE [utilities].[Statuses]
(
	StatusId int IDENTITY (200,1),
	Status varchar(20)
	CONSTRAINT PK_Statuses PRIMARY KEY (StatusId)
)
