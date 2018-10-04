/*Procedure used to removal of all Students_StudySemesters with a certain status (inactive for example).
Instead of deleting these rows directly, user has to update their status to inactive first */
CREATE PROCEDURE [listeners].[uspDeleteStudents_StudySemesters]
		@ErrNo int OUTPUT
AS
DECLARE @trancount int;
	  SET @trancount = @@TRANCOUNT;
BEGIN TRY
	IF @trancount = 0
           BEGIN TRANSACTION
        ELSE
            SAVE TRANSACTION DeleteStudents_StudySemesters;
	SET @ErrNo = 0;
	IF OBJECT_ID('tempdb..#ArchivedCourses') IS NOT NULL
    DROP TABLE #ArchivedCourses;
	IF OBJECT_ID('tempdb..#ArchivedStudents_StudySemesters') IS NOT NULL
    DROP TABLE #ArchivedStudents_StudySemesters;
	IF OBJECT_ID('tempdb..#DeanGroupAmount') IS NOT NULL
    DROP TABLE #DeanGroupAmount;
	IF OBJECT_ID('tempdb..#DeanGroupToDelete') IS NOT NULL
    DROP TABLE #DeanGroupToDelete;
	--Which ones Students_StudySemesters records we will be deleting
	SELECT *
	INTO #ArchivedStudents_StudySemesters
	FROM listeners.Students_StudySemesters AS sss
	WHERE sss.StatusId = 201;
	--Reducing current dean's groups size:
	--a) count
	SELECT asss.DeanGroupId, count(asss.StudentId) AS Students
	INTO #DeanGroupAmount
	FROM #ArchivedStudents_StudySemesters AS asss
	GROUP BY asss.DeanGroupId
	--b) update
	UPDATE dg
	SET dg.CurrentGroupSize = dg.CurrentGroupSize - dga.Students
	FROM listeners.DeanGroups AS dg
	INNER JOIN #DeanGroupAmount AS dga
	ON dg.DeanGroupId = dga.DeanGroupId;
	/* If any of these DeanGroups current group size drops to 0 or below we have to delete this row
	and set DeanGroup + 1. So that if we deleted first DeanGroup, the counting will still start with 1*/
	--Checking which ones to delete
	SELECT dg.DeanGroupId, dg.GroupStudySemester, dg.DeanGroup
	INTO #DeanGroupToDelete
	FROM listeners.DeanGroups AS dg
	INNER JOIN #DeanGroupAmount AS dga
	ON dg.DeanGroupId = dga.DeanGroupId
	WHERE dg.CurrentGroupSize <= 0;
	--Setting dean group number
	UPDATE dg
	SET dg.DeanGroup = dg.DeanGroup - 1
	FROM listeners.DeanGroups AS dg
	INNER JOIN #DeanGroupToDelete AS dgtd
	ON dg.GroupStudySemester = dgtd.GroupStudySemester
	WHERE dg.DeanGroup < dgtd.DeanGroup;
	--Deleting them
	DELETE dg
	FROM listeners.DeanGroups AS dg
	INNER JOIN #DeanGroupToDelete AS dgtd
	ON dg.DeanGroupId = dgtd.DeanGroupId;
	--archiving Students_StudySemesters
	INSERT INTO archived.ArchivedStudents_StudySemesters(PresentStudentId, PresentStudySemesterId, StudyLevelId,
	FormOfStudyId, Price, Paid)
	SELECT asss.StudentId, asss.StudySemesterId, asss.StudyLevelId, asss.FormOfStudyId, asss.Price, asss.Paid
	FROM #ArchivedStudents_StudySemesters AS asss
	--Archiving Courses related to these study semesters
	SELECT * 
	INTO #ArchivedCourses
	FROM listeners.Courses AS c
	INNER JOIN #ArchivedStudents_StudySemesters AS asss
	ON c.CourseStudentId = asss.StudentId AND c.StudySemester = asss.StudySemesterId
	INSERT INTO archived.ArchivedCourses (CourseGrade, DateOfAssessment, PresentStudentId, PresentSchoolSubjectId,
	PresentEmployeeId, CourseSemester, PresentStudySemesterId)
	SELECT ac.CourseGrade, ac.DateOfAssessment, ac.CourseStudentId,
	ac.CourseSchoolSubjectId, ac.CourseEmployeeId, ac.CourseSemester, ac.StudySemester
	FROM #ArchivedCourses AS ac;
	--Deleting these Courses
	DELETE c
	FROM listeners.Courses AS c
	WHERE c.CourseId IN (SELECT ac.CourseId FROM #ArchivedCourses AS ac)
	--Deleting StudentsRepeatedSubjects
	DELETE srs
	FROM listeners.StudentsRepeatedSubjects AS srs
	INNER JOIN #ArchivedStudents_StudySemesters AS asss
	ON srs.RepeatingStudentId = asss.StudentId AND srs.StudySemester = asss.StudySemesterId;
	--Deleting Students_StudySemesters
	DELETE sss
	FROM listeners.Students_StudySemesters AS sss
	INNER JOIN #ArchivedStudents_StudySemesters AS asss
	ON sss.StudentId = asss.StudentId AND sss.StudySemesterId = asss.StudySemesterId
	IF OBJECT_ID('tempdb..#ArchivedCourses') IS NOT NULL
    DROP TABLE #ArchivedCourses;
	IF OBJECT_ID('tempdb..#ArchivedStudents_StudySemesters') IS NOT NULL
    DROP TABLE #ArchivedStudents_StudySemesters;
	IF OBJECT_ID('tempdb..#DeanGroupAmount') IS NOT NULL
    DROP TABLE #DeanGroupAmount;
	IF OBJECT_ID('tempdb..#DeanGroupToDelete') IS NOT NULL
    DROP TABLE #DeanGroupToDelete;
	IF @trancount = 0
		COMMIT TRANSACTION
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo; 
	IF (XACT_STATE()) = -1
	BEGIN
		ROLLBACK TRANSACTION
	END
	-- Test whether the transaction is commitable
	IF (XACT_STATE()) = 1 AND @trancount = 0
	BEGIN
		ROLLBACK TRANSACTION
	END
	IF (XACT_STATE()) = 1 AND @trancount> 0
	BEGIN
		ROLLBACK TRANSACTION DeleteStudents_StudySemesters;
	END
	SELECT @ErrNo = ERROR_NUMBER();
END CATCH

