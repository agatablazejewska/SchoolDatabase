 
 

CREATE TABLE [listeners].[Courses]
(
	CourseId bigint IDENTITY (1,1),
    CourseGrade decimal(2,1),
    DateOfAssessment DATE,
    CourseStudentId int NOT NULL,
    CourseSchoolSubjectId varchar(7) NOT NULL, 
    CourseEmployeeId int,
	CourseSemester int NOT NULL,
	CONSTRAINT FK_CoursesSemesters FOREIGN KEY (CourseSemester) REFERENCES utilities.Semesters,
	CONSTRAINT FK_CoursesGrades FOREIGN KEY (CourseGrade) REFERENCES utilities.Grades,
	CONSTRAINT FK_CoursesStudents FOREIGN KEY (CourseStudentId) REFERENCES listeners.Students ON DELETE CASCADE,
	CONSTRAINT FK_CoursesSchoolSubjects FOREIGN KEY (CourseSchoolSubjectId) REFERENCES studies.SchoolSubjects,
	CONSTRAINT FK_CoursesEmployees FOREIGN KEY (CourseEmployeeId) REFERENCES staff.Employees ON DELETE SET NULL,
	CONSTRAINT PK_Courses PRIMARY KEY (CourseId)
)
