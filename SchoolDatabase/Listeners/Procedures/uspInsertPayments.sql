CREATE PROCEDURE [listeners].[uspInsertPayments]
	@PaymentStudentId int,
	@Deadline DATE,
	@Paid bit = 0
AS
	DECLARE @Charge int;
	DECLARE @ChargeStudyMode int;
	DECLARE @ChargeRepeatedSubjects int;

	
	SET @ChargeStudyMode = (SELECT StudyModePrice 
							FROM utilities.StudyModes 
							WHERE StudyModeId = (SELECT StudentStudyModeId 
												FROM Students 
												WHERE StudentId=@PaymentStudentId));

	SET @ChargeRepeatedSubjects = (SELECT sum(Price) FROM  studies.SchoolSubjects
								  WHERE SchoolSubjectId IN (SELECT RepeatedSubjectId 
															FROM StudentsRepeatedSubjects
															WHERE RepeatingStudentId = @PaymentStudentId));
	SET @Charge=@ChargeRepeatedSubjects + @ChargeStudyMode;
		
		
	INSERT INTO Payments(PaymentStudentId, Charge, Deadline, Paid)
	VALUES (@PaymentStudentId, @Charge, @Deadline, @Paid) 

RETURN 0
