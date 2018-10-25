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

	IF((@Paid = 1 AND
		(SELECT srs.RepeatingStudentId FROM listeners.StudentsRepeatedSubjects AS srs
		WHERE srs.RepeatingStudentId = @RepeatingStudentId AND srs.Paid = 0) IS NULL
		AND (SELECT sss.StudentId FROM listeners.Students_StudySemesters AS sss
			 WHERE sss.StudentId = @RepeatingStudentId AND sss.Paid = 0) IS NULL))
	BEGIN
		UPDATE listeners.Payments
		SET AllPaid = 1
		WHERE StudentId = @RepeatingStudentId;
	END
END TRY
BEGIN CATCH
	SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
