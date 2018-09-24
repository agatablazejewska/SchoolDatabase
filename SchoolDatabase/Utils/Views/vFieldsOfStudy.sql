CREATE VIEW [utils].[vFieldsOfStudy]
	AS SELECT fos.FieldOfStudyName FROM studies.Faculties_FieldsOfStudies AS ffos
	INNER JOIN studies.FieldsOfStudies AS fos
	ON ffos.FieldOfStudyId = fos.FieldOfStudyId;
