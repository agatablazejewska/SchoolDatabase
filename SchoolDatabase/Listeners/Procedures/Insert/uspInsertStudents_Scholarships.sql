CREATE PROCEDURE [listeners].[uspInsertStudents_Scholarships]
	@StudentId int, 
	@ScholarshipId int,
	@StudentAvg decimal(3,2)
AS
	SET @StudentAvg = (SELECT sum(c.CourseGrade*ct.Weighted)/sum(ct.Weighted)
						FROM listeners.Courses AS c
						INNER JOIN studies.SchoolSubjects AS ss
						ON c.CourseSchoolSubjectId=ss.SchoolSubjectId
						INNER JOIN utilities.ClassTypes AS ct 
						ON ss.ClassType = ct.ClassTypeId
						WHERE c.CourseStudentId=@StudentId)

	INSERT INTO listeners.Students_Scholarships(StudentId, ScholarshipId, StudentAvg)
	VALUES (@StudentId, @ScholarshipId, @StudentAvg)
RETURN 0
