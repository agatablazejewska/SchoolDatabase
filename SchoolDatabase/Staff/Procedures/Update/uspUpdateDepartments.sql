﻿ 
 

CREATE PROCEDURE [staff].[uspUpdateDepartments]
	@DepartmentId int,
	@DepartmentName varchar(100),
	@ShortName varchar(10),
	@FacultyId varchar(10),
	@HeadmasterId int
AS
	UPDATE staff.Departments
	SET DepartmentName = @DepartmentName, ShortName = @ShortName, FacultyId = @FacultyId,
	HeadmasterId = @HeadmasterId
	WHERE DepartmentId = @DepartmentId
RETURN 0