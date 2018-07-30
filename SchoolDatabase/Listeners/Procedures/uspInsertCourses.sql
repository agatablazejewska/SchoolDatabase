CREATE PROCEDURE [listeners].[uspCreateCourses]
	@CourseGrade float = 2,
	@DateOfAssessment DATE,
	@CourseStudentId int,
	@CourseSchoolSubjectId varchar(7),
	@CourseEmployeeId int,
	@CourseSemester int
AS
	INSERT INTO listeners.Courses (CourseGrade, DateOfAssessment, CourseStudentId, CourseSchoolSubjectId, 
	CourseEmployeeId, CourseSemester)
	VALUES (@CourseGrade, @DateOfAssessment, @CourseStudentId, @CourseSchoolSubjectId,
	@CourseEmployeeId, @CourseSemester)
RETURN 0
