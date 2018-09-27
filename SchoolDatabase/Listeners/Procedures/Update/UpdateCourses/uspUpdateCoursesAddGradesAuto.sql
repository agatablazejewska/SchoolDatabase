CREATE PROCEDURE [listeners].[uspUpdateCoursesAddGradesAuto]
AS
BEGIN TRY
BEGIN TRANSACTION
	UPDATE c
	 SET c.CourseGrade = (SELECT TOP 1 GradeNum
						FROM utilities.Grades AS g
						ORDER BY NEWID(),
						c.CourseId),
		c.DateOfAssessment = (SELECT 
								 CASE c.CourseSemester
									WHEN  1 THEN CAST(CAST(YEAR(GETDATE()) AS varchar(4))+'0129' AS datetime)
									WHEN  2 THEN CAST(CAST(YEAR(GETDATE()) AS varchar(4))+'0629' AS datetime)
									WHEN  3 THEN CAST(CAST(YEAR(GETDATE()) AS varchar(4))+'0129' AS datetime)
									WHEN  4 THEN CAST(CAST(YEAR(GETDATE()) AS varchar(4))+'0629' AS datetime)
									WHEN  5 THEN CAST(CAST(YEAR(GETDATE()) AS varchar(4))+'0129' AS datetime)
									WHEN  6 THEN CAST(CAST(YEAR(GETDATE()) AS varchar(4))+'0629' AS datetime)
									WHEN  7 THEN CAST(CAST(YEAR(GETDATE()) AS varchar(4))+'0129' AS datetime)
								END),
		c.Confirmed = 1
	FROM  listeners.Courses AS c
	WHERE c.CourseGrade IS NULL
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
	ROLLBACK TRANSACTION
END CATCH
RETURN 0
