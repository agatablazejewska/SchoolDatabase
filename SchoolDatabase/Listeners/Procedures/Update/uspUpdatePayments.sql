CREATE PROCEDURE [listeners].[uspUpdatePayments]
	@PaymentId int = NULL,
	@PaymentStudentId int = NULL,
	@Deadline date = NULL,
	@Paid bit = 0

AS	
	DECLARE @Charge int;
	IF(@PaymentStudentId != NULL)
	BEGIN
		SET @Charge = listeners.CHARGE(@PaymentStudentId);
		UPDATE listeners.Payments
		SET Charge = @Charge, Deadline = ISNULL(@Deadline,Deadline), Paid=ISNULL(@Paid, Paid)
		WHERE PaymentStudentId=@PaymentStudentId;
	END
	ELSE IF(@PaymentId != NULL)
		UPDATE listeners.Payments
		SET Deadline = ISNULL(@Deadline,Deadline), Paid=ISNULL(@Paid, Paid)
		WHERE PaymentId=@PaymentId;
RETURN 0
