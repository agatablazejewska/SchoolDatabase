CREATE PROCEDURE [listeners].[uspDeleteCourses]
	@CourseId int
AS
	DELETE FROM Courses
	WHERE CourseId=@CourseId;
RETURN 0
