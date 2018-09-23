CREATE PROCEDURE [listeners].[uspUpdateCourses]
	@CourseId int,
	@CourseGrade decimal(2,1),
	@DateOfAssessment DATE
AS
	UPDATE listeners.Courses 
	SET CourseGrade = @CourseGrade, DateOfAssessment = @DateOfAssessment
	WHERE CourseId=@CourseId;
RETURN 0
