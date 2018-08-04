CREATE PROCEDURE [listeners].[uspDeletePayments]
	@PaymentId int = NULL,
	@StudentId int = NULL
AS
	IF(@PaymentId != NULL)
	BEGIN
		DELETE FROM listeners.Payments
		WHERE PaymentId=@PaymentId;
	END
	ELSE IF (@StudentId !=NULL)
	BEGIN
		DELETE FROM listeners.Payments
		WHERE PaymentStudentId = @StudentId;
	END
RETURN 0
