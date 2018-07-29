CREATE TABLE [listeners].[Courses]
(
	CourseId int IDENTITY (1,1),
    CourseGrade float,
    DateOfAssessment DATE,
    CourseStudentId int NOT NULL,
    CourseSchoolSubjectId varchar(7) NOT NULL, 
    CourseEmployeeId int,
	CourseSemester int NOT NULL,
	CONSTRAINT FK_CourseSemesters FOREIGN KEY (CourseSemester) REFERENCES utilities.Semesters,
	CONSTRAINT FK_CourseGrades FOREIGN KEY (CourseGrade) REFERENCES utilities.Grades,
	CONSTRAINT FK_CourseStudents FOREIGN KEY (CourseStudentId) REFERENCES listeners.Students ON DELETE CASCADE,
	CONSTRAINT FK_CoursesSchoolSubjects FOREIGN KEY (CourseSchoolSubjectId) REFERENCES studies.SchoolSubjects,
	CONSTRAINT FK_CoursesEmployees FOREIGN KEY (CourseEmployeeId) REFERENCES staff.Employees ON DELETE SET NULL,
	CONSTRAINT PK_Course PRIMARY KEY (CourseId)
)
