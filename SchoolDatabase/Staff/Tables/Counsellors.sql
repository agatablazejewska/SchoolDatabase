CREATE TABLE [staff].[Counsellors]
(
	CounsellorId int IDENTITY(1,1),
	CounsellorEmployeeId int NOT NULL,
	Email varchar(40),
	PhoneNumber varchar(15),
	CONSTRAINT FK_CounsellorsEmployees FOREIGN KEY (CounsellorEmployeeId) REFERENCES staff.Employees,
	CONSTRAINT PK_Counsellors PRIMARY KEY (CounsellorId)	
)