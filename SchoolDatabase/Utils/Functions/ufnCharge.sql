/*CREATE FUNCTION [utils].[ufnCharge]
(
	@StudentId int
)
RETURNS int 
AS 
BEGIN
	DECLARE @Charge int;
	DECLARE @ChargeFormOfStudy int;
	DECLARE @ChargeRepeatedSubjects int;
	SET @ChargeFormOfStudy = (SELECT sum(FormOfStudyPrice)
							FROM utilities.FormsOfStudy 
							WHERE FormOfStudyId IN (SELECT sss.FormOfStudyId
												FROM listeners.Students_StudySemesters AS sss
												WHERE sss.StudentId=@StudentId));
	
	SET @ChargeRepeatedSubjects = (SELECT sum(Price) FROM  studies.SchoolSubjects
								  WHERE SchoolSubjectId IN (SELECT RepeatedSubjectId 
															FROM listeners.StudentsRepeatedSubjects
															WHERE RepeatingStudentId = @StudentId));
	IF(@ChargeRepeatedSubjects IS NULL)
		BEGIN
			SET @Charge=@ChargeFormOfStudy;
		END
	ELSE
		BEGIN
			SET @Charge = @ChargeFormOfStudy + @ChargeRepeatedSubjects;
		END
	RETURN @Charge;
END
*/