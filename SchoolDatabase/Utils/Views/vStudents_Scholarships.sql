CREATE VIEW [utils].[vStudents_Scholarships]
	AS SELECT s.ScholarshipType, ss.StudentId, ss.StudentScholarshipId FROM listeners.Students_Scholarships AS ss
	INNER JOIN utilities.Scholarships AS s
	ON ss.ScholarshipId = s.ScholarshipId;
