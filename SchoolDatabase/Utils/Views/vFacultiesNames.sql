CREATE VIEW [utils].[vFacultiesNames]
	AS SELECT f.FacultyId, f.FacultyFullName FROM studies.Faculties AS f;
