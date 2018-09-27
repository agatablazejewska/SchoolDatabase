CREATE VIEW [utils].[vFieldsOfStudy]
	AS SELECT fos.FieldOfStudyName, fos.FieldOfStudyId, ffos.FacultyId FROM studies.Faculties_FieldsOfStudies AS ffos
	INNER JOIN studies.FieldsOfStudies AS fos
	ON ffos.FieldOfStudyId = fos.FieldOfStudyId;
