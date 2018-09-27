CREATE TABLE [listeners].[DeanGroups]
(
	DeanGroupId int IDENTITY (1300,1),
	DeanGroup int NOT NULL, 
	MaxGroupSize int NOT NULL,
	CurrentGroupSize int,
	GroupStudySemester int,
	CONSTRAINT UQ_DeanGroups UNIQUE (DeanGroup, GroupStudySemester),
	CONSTRAINT FK_DeanGroupsStudySemester FOREIGN KEY (GroupStudySemester) REFERENCES listeners.StudySemesters,
	CONSTRAINT CHK_DeanGroup CHECK (DeanGroup >=1 AND DeanGroup <=8),
	CONSTRAINT CHK_MaxGroupSize CHECK (MaxGroupSize >=10 AND MaxGroupSize <=60),
	CONSTRAINT CHK_CurrentGroupSize CHECK (CurrentGroupSize >=0 AND CurrentGroupSize <=MaxGroupSize), 
	CONSTRAINT PK_DeanGroups PRIMARY KEY (DeanGroupId)
)
