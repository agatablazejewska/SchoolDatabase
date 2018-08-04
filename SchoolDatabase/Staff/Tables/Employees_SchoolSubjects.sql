 
 

CREATE TABLE [staff].[Employees_SchoolSubjects]
(
	EmployeeSchoolSubjectId int IDENTITY(1,1),
	EmployeeId int NOT NULL,
	SchoolSubjectId varchar(7) NOT NULL,
	CONSTRAINT FK_Employees_SchoolSubjectEmployees FOREIGN KEY (EmployeeId) REFERENCES staff.Employees ON DELETE CASCADE,
	CONSTRAINT FK_Employees_SchoolSubjectSchoolSubjects FOREIGN KEY (SchoolSubjectId) REFERENCES studies.SchoolSubjects ON DELETE CASCADE,
	CONSTRAINT PK_Employees_SchoolSubjects PRIMARY KEY (EmployeeSchoolSubjectId)

)