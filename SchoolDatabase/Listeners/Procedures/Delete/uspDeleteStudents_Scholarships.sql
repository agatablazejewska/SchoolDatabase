﻿CREATE PROCEDURE [listeners].[uspDeleteStudents_Scholarships]
	@StudentScholarshipId int
AS
	DELETE FROM listeners.Students_Scholarships 
	WHERE StudentScholarshipId=@StudentScholarshipId
RETURN 0