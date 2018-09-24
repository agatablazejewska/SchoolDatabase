CREATE VIEW [utils].[vFormOfStudy]
	AS SELECT fos.FormOfStudyName FROM utilities.FormsOfStudy AS fos
	INNER JOIN studies.Faculties_FieldsOfStudies AS ffos
	ON fos.FormOfStudyId = ffos.FormOfStudy;
