CREATE PROCEDURE [listeners].[uspUpdateCoursesGradeDateOfAssessment]
	@CourseId int,
	@CourseGrade decimal(2,1)
AS
	
	UPDATE listeners.Courses 
	SET CourseGrade = @CourseGrade, DateOfAssessment = GETDATE(), 
	Confirmed = (SELECT
					CASE 
						WHEN @CourseGrade >= 3 THEN 1
						ELSE 0
					END)
	WHERE CourseId=@CourseId;
RETURN 0
