CREATE FUNCTION [listeners].[CHARGE]
(
	@StudentId int
)
RETURNS int 
AS 
BEGIN
	DECLARE @Charge int;
	DECLARE @ChargeFormOfStudy int;
	DECLARE @ChargeRepeatedSubjects int;

	
	SET @ChargeFormOfStudy = (SELECT FormOfStudyPrice 
							FROM utilities.FormsOfStudy 
							WHERE FormOfStudyId = (SELECT StudentFormOfStudyId 
												FROM listeners.Students 
												WHERE StudentId=@StudentId));
	
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
