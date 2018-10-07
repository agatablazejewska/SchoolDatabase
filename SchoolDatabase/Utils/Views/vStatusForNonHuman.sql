CREATE VIEW [utils].[vStatusForNonHuman]
	AS SELECT s.StatusType, s.StatusId FROM utilities.Statuses AS s
	WHERE s.StatusId IN (200,201);
