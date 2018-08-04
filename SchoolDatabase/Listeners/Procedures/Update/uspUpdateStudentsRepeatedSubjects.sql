 
 

CREATE PROCEDURE [listeners].[uspUpdateStudentsRepeatedSubjects]
	@RepeatingStudentId int,
	@RepeatedSchoolSubjectId varchar(7)
AS
	UPDATE listeners.StudentsRepeatedSubjects
	SET RepeatingStudentId = @RepeatingStudentId, RepeatedSubjectId=@RepeatedSchoolSubjectId;
RETURN 0
