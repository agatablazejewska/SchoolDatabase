CREATE PROCEDURE [listeners].[uspUpdateCoursesGradeDateOfAssessment]
	@CourseId int,
	@CourseGrade decimal(2,1)
AS
BEGIN TRY
	UPDATE listeners.Courses 
	SET CourseGrade = @CourseGrade, DateOfAssessment = GETDATE(), 
	Confirmed = (SELECT
					CASE 
						WHEN @CourseGrade >= 3 THEN 1
						ELSE 0
					END)
	WHERE CourseId=@CourseId;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
