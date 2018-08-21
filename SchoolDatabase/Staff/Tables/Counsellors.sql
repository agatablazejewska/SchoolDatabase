CREATE TABLE [staff].[Counsellors]
(
	CounsellorId int,
	CounsellorEmployeeId int NOT NULL,
	Email nvarchar(40),
	PhoneNumber nvarchar(15),
	CONSTRAINT FK_CounsellorsEmployees FOREIGN KEY (CounsellorEmployeeId) REFERENCES staff.Employees ON DELETE CASCADE, 
	CONSTRAINT PK_Counsellors PRIMARY KEY (CounsellorId)	
)