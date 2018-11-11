CREATE PROCEDURE [listeners].[uspInsertStudentsRepeatedSubjects]
	@ErrNo int OUTPUT
AS
BEGIN TRY
BEGIN TRANSACTION
	SET @ErrNo = 0;
	IF OBJECT_ID('tempdb..#TempRepeated') IS NOT NULL
    DROP TABLE #TempRepeated;
	DECLARE @Date date;
	SELECT @Date = utils.ufnPaymentDeadline(GETDATE());

	--Selecting courses to be repeated by student
	SELECT c.CourseStudentId, c.CourseSchoolSubjectId, c.StudySemester, ss.Price, @Date AS Deadline
	INTO #TempRepeated
	FROM listeners.Courses AS c
	INNER JOIN studies.SchoolSubjects AS ss
	ON c.CourseSchoolSubjectId = ss.SchoolSubjectId
	WHERE c.CourseGrade < 3 AND c.Confirmed = 1;

	--Merging into listeners.StudentsRepeatedSubjects
	MERGE INTO listeners.StudentsRepeatedSubjects AS srs USING #TempRepeated ON
	(srs.RepeatingStudentId = #TempRepeated.CourseStudentId AND srs.RepeatedSubjectId = #TempRepeated.CourseSchoolSubjectId)
	WHEN NOT MATCHED THEN
	INSERT(RepeatingStudentId, RepeatedSubjectId, StudySemester, Price, Deadline)
	VALUES(#TempRepeated.CourseStudentId, #TempRepeated.CourseSchoolSubjectId, #TempRepeated.StudySemester, #TempRepeated.Price,
		   #TempRepeated.Deadline);

	IF OBJECT_ID('tempdb..#TempRepeated') IS NOT NULL
    DROP TABLE #TempRepeated;
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo; 
	ROLLBACK TRANSACTION
END CATCH
