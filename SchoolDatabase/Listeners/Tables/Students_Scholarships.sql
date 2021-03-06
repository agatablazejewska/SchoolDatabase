﻿CREATE TABLE [listeners].[Students_Scholarships]
(
	StudentScholarshipId int IDENTITY (1,1),
	StudentId int NOT NULL,
	ScholarshipId int NOT NULL,
	StudentAvg decimal(3,2),
	CONSTRAINT UQ_Students_Scholarships UNIQUE (StudentId, ScholarshipId),
	CONSTRAINT FK_Students_ScholarshipsStudents FOREIGN KEY (StudentId) REFERENCES listeners.Students,
	CONSTRAINT FK_Students_ScholarshipsScholarships FOREIGN KEY (ScholarshipId) REFERENCES utilities.Scholarships,
	CONSTRAINT PK_StudentsScholarships PRIMARY KEY (StudentScholarshipId)
)
