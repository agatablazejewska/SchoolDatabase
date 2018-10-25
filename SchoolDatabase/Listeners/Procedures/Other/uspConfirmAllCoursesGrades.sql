CREATE PROCEDURE [listeners].[uspConfirmAllCoursesGrades]
AS
	UPDATE listeners.Courses
	SET Confirmed = 1;
RETURN 0
