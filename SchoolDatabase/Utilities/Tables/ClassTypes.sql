CREATE TABLE [utilities].[ClassTypes]
(
	ClassTypeId char(1),
    ClassTypeName varchar(15) NOT NULL,
	Weighted float,
	CONSTRAINT PK_ClassTypes PRIMARY KEY (ClassTypeId)
)
