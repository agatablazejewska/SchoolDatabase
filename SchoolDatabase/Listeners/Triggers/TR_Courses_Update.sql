CREATE TRIGGER [listeners].[TR_Courses_Update]
ON listeners.Courses
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @CourseId int;
	DECLARE @Grade decimal(2,1);

	SELECT @CourseId = i.CourseId, @Grade = i.CourseGrade
	FROM inserted AS i


	IF (@Grade < 3)
		BEGIN
			EXEC uspCheckStudentsRepeatedSubjects @CourseId;
		END
END
