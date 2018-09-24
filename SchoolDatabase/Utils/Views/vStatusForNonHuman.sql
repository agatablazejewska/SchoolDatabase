CREATE VIEW [utils].[vStatusForNonHuman]
	AS SELECT s.StatusType FROM utilities.Statuses AS s
	WHERE s.StatusId IN (200,201);
