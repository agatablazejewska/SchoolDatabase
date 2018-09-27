CREATE PROCEDURE [listeners].[uspUpdateStudentsRepeatedSubjects]
	@RepeatingStudentId int,
	@RepeatedSchoolSubjectId varchar(7),
	@Paid bit
AS
BEGIN TRY
	UPDATE listeners.StudentsRepeatedSubjects
	SET Paid = @Paid
	WHERE RepeatingStudentId = @RepeatingStudentId AND RepeatedSubjectId=@RepeatedSchoolSubjectId;
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
