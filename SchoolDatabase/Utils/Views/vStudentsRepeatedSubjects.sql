CREATE VIEW [utils].[vStudentsRepeatedSubjects]
	AS SELECT srs.RepeatingStudentId, ss.SchoolSubjectName, fos.FieldOfStudyName, srs.Paid, srs.StudentRepeatedSubjectId
	FROM listeners.StudentsRepeatedSubjects AS srs
	INNER JOIN studies.SchoolSubjects AS ss
	ON srs.RepeatedSubjectId = ss.SchoolSubjectId
	INNER JOIN listeners.StudySemesters AS sem
	ON srs.StudySemester = sem.StudySemesterId
	INNER JOIN studies.FieldsOfStudies AS fos
	ON sem.FieldOfStudyId = fos.FieldOfStudyId
