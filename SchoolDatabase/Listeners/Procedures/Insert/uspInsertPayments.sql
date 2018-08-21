CREATE PROCEDURE [listeners].[uspInsertPayments]
	@PaymentStudentId int,
	@Deadline DATE,
	@Paid bit = 0
AS
	DECLARE @Charge int;
	SET @Charge = utils.ufnCharge(@PaymentStudentId);
	IF (@Charge = 0)
		BEGIN
			SET @Paid = 1;
		END

	INSERT INTO listeners.Payments(PaymentStudentId, Charge, Deadline, Paid)
	VALUES (@PaymentStudentId, @Charge, @Deadline, @Paid) 

RETURN 0
