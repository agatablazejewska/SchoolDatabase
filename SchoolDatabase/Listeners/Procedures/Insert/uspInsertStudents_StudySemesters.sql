CREATE PROCEDURE [listeners].[uspInsertStudents_StudySemesters]
	@StudentId int,
	@StudySemesterId int,
	@ErrNo int OUTPUT
AS
BEGIN TRY
BEGIN TRANSACTION
	SET @ErrNo = 0;
	DECLARE @DeanGroupId int, @Price int, @StudyLevelId int, @FormOfStudyId char(1), @Date date;
	--Setting variables
	SELECT @Date = utils.ufnPaymentDeadline(GETDATE());
	SELECT @StudyLevelId = StudyLevelId, @FormOfStudyId = FormOfStudyId FROM listeners.StudySemesters WHERE StudySemesterId = @StudySemesterId;
	--Selecting price
	SET @Price = (SELECT FormOfStudyPrice FROM utilities.FormsOfStudy WHERE FormOfStudyId = @FormOfStudyId)
	
	--Selecting dean group with free spaces
	SET @DeanGroupId = (SELECT TOP(1) DeanGroupId FROM DeanGroups
						WHERE GroupStudySemester = @StudySemesterId AND CurrentGroupSize < MaxGroupSize 
						ORDER BY DeanGroupId);
	
	--If there is no dean group with free spaces we create next one
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

	--Inserting into table
	INSERT INTO listeners.Students_StudySemesters(StudentId, StudySemesterId, DeanGroupId, StudyLevelId, FormOfStudyId, Price, Deadline)
	VALUES (@StudentId, @StudySemesterId, @DeanGroupId, @StudyLevelId,  @FormOfStudyId, @Price, @Date);

	--Adding student to amount of students in study semesters
	UPDATE StudySemesters
	SET AmountOfStudents = AmountOfStudents + 1
	WHERE StudySemesterId = @StudySemesterId;
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	SELECT @ErrNo = ERROR_NUMBER();
	EXEC utils.uspGetErrorInfo;
	ROLLBACK TRANSACTION
END CATCH
RETURN 0
