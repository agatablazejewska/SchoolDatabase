CREATE TYPE [archived].[CoursesArchiving] AS TABLE
(
	CourseId bigint IDENTITY(1,1) PRIMARY KEY,
	CourseGrade decimal(2,1),
	DateOfAssessment date,
	CourseSemester int,
	TempStudentId int,
	TempEmployeeId int,
	TempSchoolSubjectId int
)
