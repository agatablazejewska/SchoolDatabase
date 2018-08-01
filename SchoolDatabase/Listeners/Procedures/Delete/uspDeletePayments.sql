CREATE PROCEDURE [listeners].[uspDeletePayments]
	@PaymentId int
AS
	DELETE FROM listeners.Payments
	WHERE PaymentId=@PaymentId
RETURN 0
