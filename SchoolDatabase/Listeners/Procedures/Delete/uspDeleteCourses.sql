CREATE PROCEDURE [listeners].[uspDeleteCourses]
	@CourseId int
AS
	DELETE FROM listeners.Courses
	WHERE CourseId=@CourseId;
RETURN 0
