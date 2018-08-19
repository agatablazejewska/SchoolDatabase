CREATE TRIGGER listeners.[TR_Courses_Insert]
ON listeners.Courses
FOR INSERT
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @ModifiedCourses listeners.ModifyingCourses;
	INSERT INTO @ModifiedCourses(CourseId, CourseGrade, CourseStudentId)
	SELECT i.CourseId, i.CourseGrade, i.CourseStudentId
	FROM inserted AS i
END
