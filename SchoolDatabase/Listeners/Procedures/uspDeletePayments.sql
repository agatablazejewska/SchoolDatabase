CREATE PROCEDURE [listeners].[uspDeletePayments]
	@PaymentId int
AS
	DELETE FROM Payments
	WHERE PaymentId=@PaymentId
RETURN 0
