CREATE PROCEDURE [listeners].[uspUpdateStudentsRepeatedSubjects]
	@RepeatingStudentId int,
	@RepeatedSchoolSubjectId varchar(7),
	@Paid bit,
	@ErrNo int OUTPUT
AS
BEGIN TRY
	SET @ErrNo = 0;
	UPDATE listeners.StudentsRepeatedSubjects
	SET Paid = @Paid
	WHERE RepeatingStudentId = @RepeatingStudentId AND RepeatedSubjectId=@RepeatedSchoolSubjectId;
END TRY
BEGIN CATCH
	SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
