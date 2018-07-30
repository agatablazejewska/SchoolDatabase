CREATE PROCEDURE [listeners].[uspUpdatePayments]
	@PaymentStudentId int,
	@Deadline DATE,
	@Paid bit

AS
	UPDATE Payments
	SET Deadline = @Deadline, Paid=@Paid
	WHERE PaymentStudentId=@PaymentStudentId
RETURN 0
