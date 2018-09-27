CREATE PROCEDURE [listeners].[uspInsertStudents_StudySemesters]
	@StudentId int,
	@StudySemesterId int
AS
BEGIN TRY
BEGIN TRANSACTION
	DECLARE @DeanGroupId int, @Price int, @StudyLevelId int, @FormOfStudyId char(1);
	SELECT @StudyLevelId = StudyLevelId, @FormOfStudyId = FormOfStudyId FROM listeners.StudySemesters WHERE StudySemesterId = @StudySemesterId
	SET @Price = (SELECT FormOfStudyPrice FROM utilities.FormsOfStudy WHERE FormOfStudyId = @FormOfStudyId)
	SET @DeanGroupId = (SELECT TOP(1) DeanGroupId FROM DeanGroups WHERE GroupStudySemester = @StudySemesterId AND CurrentGroupSize < MaxGroupSize)

	IF (@DeanGroupId IS NULL)
		BEGIN
			DECLARE @NextDeanGroup int;
			SET @NextDeanGroup = (SELECT MAX(dg.DeanGroup) FROM listeners.DeanGroups AS dg WHERE dg.GroupStudySemester = @StudySemesterId) + 1;
		 	EXEC listeners.uspInsertDeanGroups @DeanGroup = @NextDeanGroup, @GroupStudySemester = @StudySemesterId;
			SET @DeanGroupId = (SELECT DeanGroupId FROM DeanGroups WHERE DeanGroup = @NextDeanGroup AND GroupStudySemester = @StudySemesterId);
		END
	UPDATE listeners.DeanGroups
	SET CurrentGroupSize = CurrentGroupSize + 1
	WHERE DeanGroupId = @DeanGroupId;


	INSERT INTO listeners.Students_StudySemesters(StudentId, StudySemesterId, DeanGroupId, StudyLevelId, FormOfStudyId, Price)
	VALUES (@StudentId, @StudySemesterId, @DeanGroupId, @StudyLevelId,  @FormOfStudyId, @Price)

	UPDATE StudySemesters
	SET AmountOfStudents = AmountOfStudents +1
	WHERE StudySemesterId = @StudySemesterId;
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
