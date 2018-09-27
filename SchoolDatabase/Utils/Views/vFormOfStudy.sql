CREATE VIEW [utils].[vFormOfStudy]
	AS SELECT fos.FormOfStudyId, fos.FormOfStudyName, ffos.FacultyId, ffos.FieldOfStudyId, ffos.StudyLevelId FROM utilities.FormsOfStudy AS fos
	INNER JOIN studies.Faculties_FieldsOfStudies AS ffos
	ON fos.FormOfStudyId = ffos.FormOfStudy;
