CREATE VIEW [utils].[vCoursesGrades]
	AS SELECT c.CourseId, s.StudentName, s.StudentSurname, s.StudentId, c.CourseGrade AS Grade, subj.SchoolSubjectName AS SubjectName,e.EmployeeId, e.EmployeeName, e.EmployeeSurname, f.FacultyFullName AS Faculty, fos.FieldOfStudyName AS Field, ss.StudySemester AS Semester FROM listeners.Courses AS c
	INNER JOIN listeners.StudySemesters AS ss
	ON c.StudySemester = ss.StudySemesterId 
	INNER JOIN studies.Faculties AS f
	ON ss.FacultyId = f.FacultyId
	INNER JOIN studies.FieldsOfStudies AS fos
	ON ss.FieldOfStudyId = fos.FieldOfStudyId
	INNER JOIN listeners.Students AS s
	ON c.CourseStudentId = s.StudentId
	INNER JOIN staff.Employees AS e
	ON c.CourseEmployeeId = e.EmployeeId
	INNER JOIN studies.SchoolSubjects AS subj 
	ON c.CourseSchoolSubjectId = subj.SchoolSubjectId
	