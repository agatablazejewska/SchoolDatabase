CREATE PROCEDURE [listeners].[uspInsertCourses]
	@CourseGrade decimal(2,1),
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
