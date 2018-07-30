CREATE PROCEDURE [listeners].[uspInsertStudents_Scholarships]
	@StudentId int, 
	@ScholarshipId int,
	@StudentAvg float
AS
	SET @StudentAvg = (SELECT sum(c.CourseGrade*ct.Weighted)/sum(ct.Weighted)
						FROM Courses c
						INNER JOIN studies.SchoolSubjects ss ON c.CourseSchoolSubjectId=ss.SchoolSubjectId
						INNER JOIN utilities.ClassTypes ct ON ss.ClassType = ct.ClassTypeId
						WHERE c.CourseStudentId=@StudentId)

	INSERT INTO Students_Scholarships(StudentId, ScholarshipId, StudentAvg)
	VALUES (@StudentId, @ScholarshipId, @StudentAvg)
RETURN 0
