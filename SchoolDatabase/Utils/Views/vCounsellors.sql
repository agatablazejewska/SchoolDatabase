CREATE VIEW [utils].[vCounsellors]
	AS SELECT e.EmployeeId, e.EmployeeName, e.EmployeeSurname FROM staff.Counsellors AS c
	INNER JOIN staff.Employees AS e
	ON c.CounsellorEmployeeId = e.EmployeeId
	WHERE c.CounsellorId NOT IN (SELECT ss.StudySemesterCounsellor FROM listeners.StudySemesters AS ss);
