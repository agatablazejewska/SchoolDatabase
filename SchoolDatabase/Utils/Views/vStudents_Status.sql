CREATE VIEW [utils].[vStudents_Status]
	AS SELECT * FROM utilities.Statuses AS s
	WHERE s.StatusId IN (200, 201, 203, 206, 207);
