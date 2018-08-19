CREATE TYPE [listeners].[ModifyingCourses] AS TABLE
(
	CourseId bigint,
	CourseGrade decimal(2,1),
	DateOfAssessment date,
	CourseStudentId int,
	CourseSchoolSubjectId varchar(7),
	CourseEmployeeId int,
	CourseSemester int
)
