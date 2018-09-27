CREATE VIEW [utils].[vStudySemesters]
	AS SELECT ss.StudySemesterId, ss.StudySemester, ss.FacultyId, ss.FieldOfStudyId, ss.FormOfStudyId FROM listeners.StudySemesters AS ss
	INNER JOIN 
	WHERE ss.StudySemesterStatusId = 200;