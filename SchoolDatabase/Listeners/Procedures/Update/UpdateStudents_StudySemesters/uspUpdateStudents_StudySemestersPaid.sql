CREATE PROCEDURE [listeners].[uspUpdateStudents_StudySemestersPaid]
	@StudentId int,
	@StudySemesterId int,
	@Paid bit,
	@ErrNo int OUTPUT
AS
BEGIN TRY
	SET @ErrNo = 0;
	UPDATE listeners.Students_StudySemesters
	SET Paid = @Paid
	WHERE StudentId = @StudentId AND StudySemesterId = @StudySemesterId;
	--Checking if student has paid for his repeated subjects as well and if so, setting his AllPaid to true in listeners.Payments
	IF((@Paid = 1 AND (SELECT srs.RepeatingStudentId FROM listeners.StudentsRepeatedSubjects AS srs
		WHERE srs.RepeatingStudentId = @StudentId AND srs.Paid = 0) IS NULL
		AND (SELECT sss.StudentId FROM listeners.Students_StudySemesters AS sss
			WHERE sss.StudentId = @StudentId AND sss.Paid = 0) IS NULL))
	BEGIN
		UPDATE listeners.Payments
		SET AllPaid = 1
		WHERE StudentId = @StudentId;
	END
END TRY
BEGIN CATCH
	SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo;
END CATCH
RETURN 0
