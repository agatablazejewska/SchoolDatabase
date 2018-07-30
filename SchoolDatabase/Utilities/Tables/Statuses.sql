CREATE TABLE [utilities].[Statuses]
(
	StatusId int IDENTITY (200,1),
	StatusType varchar(20)
	CONSTRAINT PK_Statuses PRIMARY KEY (StatusId)
)
