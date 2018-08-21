CREATE FUNCTION [utils].[ufnBeginOfMonth]
(
	@EntryDate datetime2
)
RETURNS date
AS
BEGIN
	RETURN DATEADD(month,DATEDIFF(month,0,@EntryDate),0);
END;
GO
