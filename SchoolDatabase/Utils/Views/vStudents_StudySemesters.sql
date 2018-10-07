CREATE VIEW [utils].[vStudents_StudySemesters]
	AS SELECT sss.StudentId, sss.StudySemesterId, ss.FacultyId, fos.FieldOfStudyName, sl.StudyLevelName, form.FormOfStudyName, s.StatusType, sss.Price, sss.Paid FROM listeners.Students_StudySemesters AS sss
	INNER JOIN listeners.StudySemesters AS ss
	ON sss.StudySemesterId = ss.StudySemesterId
	INNER JOIN studies.FieldsOfStudies AS fos
	ON ss.FieldOfStudyId = fos.FieldOfStudyId
	INNER JOIN utilities.StudyLevels AS sl
	ON ss.StudyLevelId = sl.StudyLevelId
	INNER JOIN utilities.FormsOfStudy AS form
	ON ss.FormOfStudyId = form.FormOfStudyId
	INNER JOIN utilities.Statuses AS s
	ON sss.StatusId = s.StatusId