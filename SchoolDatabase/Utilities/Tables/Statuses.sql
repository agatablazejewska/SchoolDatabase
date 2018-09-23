/* Table created to store all available statuses for people - employees and students as well.
For example: active, inactive, dean's leave.
A lot of other tables rely on this one - we delete inactive students and employees or put student one StudySemester down etc. */
CREATE TABLE [utilities].[Statuses]
(
	StatusId int IDENTITY (200,1),
	StatusType varchar(20)
	CONSTRAINT PK_Statuses PRIMARY KEY (StatusId)
)
