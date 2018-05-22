drop table dbo.Enrollments
drop table dbo.Courses
drop table dbo.Students

CREATE TABLE [dbo].Courses
(
	[CourseID] INT NOT NULL PRIMARY KEY,
	[Title]TEXT NOT NULL,
	[Credits]INT NOT NULL
)

CREATE TABLE [dbo].Students
(
	[ID] INT NOT NULL identity PRIMARY KEY,
	[LastName] Text NOT NULL,
	[FirstMidName] Text NOT NULL,
	[EnrollmentDate] Date NOT NULL,
)

CREATE TABLE [dbo].Enrollments
(
	[EnrollmentID] INT NOT NULL identity PRIMARY KEY,
	[CourseID] INT NOT NULL,
	[StudentID] INT NOT NULL,
	[Title] TEXT NOT NULL,
	[Credits] INT NOT NULL,
	FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
	FOREIGN KEY (StudentID) REFERENCES Students(ID)
)