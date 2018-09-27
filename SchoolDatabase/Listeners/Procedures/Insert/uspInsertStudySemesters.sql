CREATE PROCEDURE [listeners].[uspInsertStudySemesters]
	@FacultyId varchar(10),
	@FieldOfStudyId int,
	@StudyLevelId int,
	@FormOfStudyId char(1),
	@StudySemesterCounsellor int = NULL
AS
BEGIN TRY
BEGIN TRANSACTION
	INSERT INTO listeners.StudySemesters(FacultyId, FieldOfStudyId, StudyLevelId, FormOfStudyId, StudySemesterCounsellor)
	VALUES (@FacultyId, @FieldOfStudyId, @StudyLevelId,@FormOfStudyId, @StudySemesterCounsellor);
	DECLARE @id int;
	SET @id = (SELECT SCOPE_IDENTITY());
	EXEC listeners.uspInsertDeanGroups @GroupStudySemester = @id;
	 COMMIT TRANSACTION
END TRY
BEGIN CATCH
	EXEC utils.uspGetErrorInfo; 
	/*Test XACT state 
	if 1: the transaction is commitable
	if -1: the transaction is uncommitable and should be rolled back
	if 0: means that there is no transaction and a commit or rollback operation would generate an error*/
	-- Test whether the transaction is uncommitable
	IF (XACT_STATE()) = -1
	BEGIN
		PRINT N'The transaction is in uncommitable state.' + N'Rolling back transaction.';
		ROLLBACK TRANSACTION
	END
	-- Test whether the transaction is commitable
	IF (XACT_STATE()) = 1
	BEGIN
		PRINT N'The transaction is commitable.' + N'Commiting transaction.';
		COMMIT TRANSACTION
	END
END CATCH
RETURN 0
