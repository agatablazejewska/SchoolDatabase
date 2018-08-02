CREATE TABLE [listeners].[Payments]
(
	PaymentId int IDENTITY (1200,1),
	PaymentStudentId int NOT NULL, 
	Charge int NOT NULL,
	Deadline DATE,
	Paid bit NOT NULL,
	CONSTRAINT FK_PaymentsStudents FOREIGN KEY (PaymentStudentId) REFERENCES listeners.Students,
	CONSTRAINT PK_Payments PRIMARY KEY (PaymentId)
)
