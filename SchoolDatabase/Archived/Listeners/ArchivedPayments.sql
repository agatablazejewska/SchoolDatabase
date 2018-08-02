CREATE TABLE [archived].[ArchivedPayments]
(
	PaymentId int IDENTITY (1200,1),
	PresentStudentId int, 
	ArchivedStudentId int,
	Charge int NOT NULL,
	Deadline DATE,
	Paid bit NOT NULL,
	CONSTRAINT FK_ArchivedPaymentsStudents FOREIGN KEY (PresentStudentId) REFERENCES listeners.Students,
	CONSTRAINT FK_ArchivedPaymentsArchivedStudents FOREIGN KEY (ArchivedStudentId) REFERENCES archived.Students,
	CONSTRAINT PK_ArchivedPayments PRIMARY KEY (PaymentId)
)
