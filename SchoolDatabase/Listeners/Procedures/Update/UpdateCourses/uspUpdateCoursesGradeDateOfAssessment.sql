CREATE PROCEDURE [listeners].[uspUpdateCoursesGradeDateOfAssessment]
	@CourseId int,
	@CourseGrade decimal(2,1),
	@ErrNo int OUTPUT
AS
BEGIN TRY
	SET @ErrNo = 0;
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
		SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
