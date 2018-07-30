﻿CREATE PROCEDURE [utilities].[uspUpdateScholarships]
	@ScholarshipId int,
	@ScholarshipType varchar(20),
	@ScholarshipAmount int
AS
	UPDATE Scholarships
	SET ScholarshipType = @ScholarshipType, ScholarshipAmount = @ScholarshipAmount
	WHERE ScholarshipId = @ScholarshipId

RETURN 0
