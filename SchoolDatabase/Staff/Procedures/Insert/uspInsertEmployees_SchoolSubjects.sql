﻿CREATE PROCEDURE [staff].[uspInsertEmployees_SchoolSubjects]
	@EmployeeId int,
	@SchoolSubjectId varchar(7)
AS
	INSERT INTO staff.Employees_SchoolSubjects(EmployeeId, SchoolSubjectId)
	VALUES (@EmployeeId, @SchoolSubjectId)

RETURN 0
