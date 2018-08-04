 
 

CREATE TABLE [utilities].[ClassTypes]
(
	ClassTypeId char(1),
    ClassTypeName varchar(15) NOT NULL,
	Weighted decimal(2,1),
	CONSTRAINT PK_ClassTypes PRIMARY KEY (ClassTypeId)
)
