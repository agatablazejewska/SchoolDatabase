CREATE PROCEDURE [listeners].[uspUpdateStudentsRepeatedSubjects]
	@RepeatingStudentId int,
	@RepeatedSchoolSubjectId varchar(7),
	@Paid bit
AS
	UPDATE listeners.StudentsRepeatedSubjects
	SET Paid = @Paid
	WHERE RepeatingStudentId = @RepeatingStudentId AND RepeatedSubjectId=@RepeatedSchoolSubjectId;
RETURN 0
