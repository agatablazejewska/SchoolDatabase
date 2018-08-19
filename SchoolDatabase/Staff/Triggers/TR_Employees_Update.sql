CREATE TRIGGER staff.[TR_Employees_Update]
ON staff.Employees
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
	IF EXISTS(SELECT i.EmployeeId
			 FROM inserted AS i
			 WHERE i.EmployeeStatusId = 202)
	BEGIN
		DELETE FROM staff.Employees
		WHERE EmployeeStatusId = 202;
	END
END
