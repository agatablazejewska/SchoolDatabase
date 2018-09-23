/* Procedure writting out error info, used with try/catch exception */
CREATE PROCEDURE utils.uspGetErrorInfo
AS
	SELECT 
	ERROR_NUMBER() AS ErrorNumber,
	ERROR_SEVERITY() AS ErrorSeverity,
	ERROR_STATE() AS ErrorState,
	ERROR_LINE() AS ErrorLine,
	ERROR_PROCEDURE() AS ErrorProcedure,
	ERROR_MESSAGE() AS ErrorMessage;
GO