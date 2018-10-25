CREATE FUNCTION [utils].[ufnPaymentDeadline]
(
	@Date date
)
RETURNS date
AS
BEGIN
	DECLARE @Month int;
	SELECT @Month = MONTH(@Date);
	
	IF(@Month BETWEEN 6 AND 10)
	BEGIN
	 SELECT @Date = DATEFROMPARTS(YEAR(@Date), 11, 1);
	END
	ELSE IF(@Month IN (1,2,3))
	BEGIN
		SELECT @Date = DATEFROMPARTS(YEAR(@Date), 4, 1);
	END
	ELSE
	BEGIN
		SELECT @Date = DATEADD(month, 1, @Date);
	END

	RETURN @Date;
END
