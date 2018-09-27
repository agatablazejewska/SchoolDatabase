CREATE VIEW [utils].[vCounsellors]
	AS SELECT c.CounsellorId, e.EmployeeName, e.EmployeeSurname, f.FacultyId FROM staff.Counsellors AS c
	INNER JOIN staff.Employees AS e
	ON c.CounsellorEmployeeId = e.EmployeeId
	INNER JOIN staff.Employees_Departments AS ed
	ON ed.EmployeeId = e.EmployeeId
	INNER JOIN staff.Departments AS d
	ON ed.DepartmentId = d.DepartmentId
	INNER JOIN studies.Faculties AS f
	ON d.FacultyId = f.FacultyId
