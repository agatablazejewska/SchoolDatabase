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
	ROLLBACK TRANSACTION
END CATCH
RETURN 0
