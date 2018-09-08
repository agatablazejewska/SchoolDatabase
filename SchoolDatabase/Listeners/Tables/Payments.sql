 CREATE TABLE [listeners].[Payments]
(
	StudentId int,
	AllPaid bit DEFAULT 0,
	CONSTRAINT FK_PaymentsStudents FOREIGN KEY (StudentId) REFERENCES listeners.Students,
	CONSTRAINT PK_Payments PRIMARY KEY (StudentId)
)
