CREATE VIEW [utils].[vStudentsRepeatedSubjects]
	AS SELECT srs.RepeatingStudentId, srs.RepeatedSubjectId, ss.SchoolSubjectName, srs.Paid FROM listeners.StudentsRepeatedSubjects AS srs
	INNER JOIN studies.SchoolSubjects AS ss
	ON srs.RepeatedSubjectId = ss.SchoolSubjectId
