CREATE PROCEDURE [listeners].[uspInsertCourses]
	@CourseGrade decimal(2,1),
	@DateOfAssessment DATE,
	@CourseStudentId int,
	@CourseSchoolSubjectId varchar(7),
	@CourseEmployeeId int,
	@CourseSemester int,
	@StudySemester int
AS
	INSERT INTO listeners.Courses (CourseGrade, DateOfAssessment, CourseStudentId, CourseSchoolSubjectId, 
	CourseEmployeeId, CourseSemester, StudySemester)
	VALUES (@CourseGrade, @DateOfAssessment, @CourseStudentId, @CourseSchoolSubjectId,
	@CourseEmployeeId, @CourseSemester, @StudySemester)
	--EXEC listeners.uspCheckStudents_SchoolSubjects @CourseStudentId, @CourseSchoolSubjectId;
RETURN 0
