CREATE PROCEDURE [listeners].[uspInsertPayments]
	@PaymentStudentId int,
	@Deadline DATE,
	@Paid bit = 0
AS
	DECLARE @Charge int;
	DECLARE @ChargeFormOfStudy int;
	DECLARE @ChargeRepeatedSubjects int;

	
	SET @ChargeFormOfStudy = (SELECT FormOfStudyPrice 
							FROM utilities.FormsOfStudy 
							WHERE FormOfStudyId = (SELECT StudentFormOfStudyId 
												FROM listeners.Students 
												WHERE StudentId=@PaymentStudentId));

	SET @ChargeRepeatedSubjects = (SELECT sum(Price) FROM  studies.SchoolSubjects
								  WHERE SchoolSubjectId IN (SELECT RepeatedSubjectId 
															FROM listeners.StudentsRepeatedSubjects
															WHERE RepeatingStudentId = @PaymentStudentId));
	SET @Charge=@ChargeRepeatedSubjects + @ChargeFormOfStudy;
		
		
	INSERT INTO listeners.Payments(PaymentStudentId, Charge, Deadline, Paid)
	VALUES (@PaymentStudentId, @Charge, @Deadline, @Paid) 

RETURN 0
