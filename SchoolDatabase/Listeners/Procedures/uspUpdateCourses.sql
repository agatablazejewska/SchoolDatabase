CREATE PROCEDURE [listeners].[uspUpdateCourses]
	@CourseId int,
	@CourseGrade float = 2,
	@DateOfAssessment DATE,
	@CourseStudentId int,
	@CourseSchoolSubjectId varchar(7),
	@CourseEmployeeId int,
	@CourseSemester int
AS
	UPDATE listeners.Courses 
	SET CourseGrade= @CourseGrade, DateOfAssessment=@DateOfAssessment, CourseStudentId=@CourseStudentId,
	CourseSchoolSubjectId=@CourseSchoolSubjectId, CourseEmployeeId=@CourseEmployeeId,
	CourseSemester=@CourseSemester
	WHERE CourseId=@CourseId;
RETURN 0
