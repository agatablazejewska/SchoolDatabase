CREATE TABLE [staff].[Counsellors]
(
	CounsellorId int,
	CounsellorEmployeeId int NOT NULL,
	Email nvarchar(80),
	PhoneNumber nvarchar(15),
	CONSTRAINT CHK_CounsellorsPhoneNumber CHECK (ISNUMERIC(PhoneNumber) = 1),
	CONSTRAINT CHK_CounsellorsEmail CHECK (Email LIKE '%_@__%.__%'),
	CONSTRAINT FK_CounsellorsEmployees FOREIGN KEY (CounsellorEmployeeId) REFERENCES staff.Employees, 
	CONSTRAINT PK_Counsellors PRIMARY KEY (CounsellorId)	
)