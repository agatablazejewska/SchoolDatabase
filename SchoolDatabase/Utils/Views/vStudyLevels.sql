CREATE VIEW [utils].[vStudyLevels]
	AS SELECT sl.StudyLevelId, sl.StudyLevelName, ffos.FacultyId, ffos.FieldOfStudyId FROM utilities.StudyLevels AS sl
	INNER JOIN studies.Faculties_FieldsOfStudies AS ffos
	ON sl.StudyLevelId = ffos.StudyLevelId