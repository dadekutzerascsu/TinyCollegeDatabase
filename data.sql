-- ============================
-- Insert Departments
-- ============================
INSERT INTO Department VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Business');

-- ============================
-- Insert Instructors
-- ============================
INSERT INTO Instructor VALUES
(101, 'Alice', 'Johnson', 1),
(102, 'Bob', 'Smith', 2);

-- ============================
-- Insert Students
-- ============================
INSERT INTO Student VALUES
(201, 'Dade', 'Miller', 'dade@example.edu', 1),
(202, 'Sara', 'Lee', 'sara@example.edu', 2);

-- ============================
-- Insert Courses
-- ============================
INSERT INTO Course VALUES
(301, 'Database Systems', 3, 1, 101),
(302, 'Calculus I', 4, 2, 102);

-- ============================
-- Insert Enrollments
-- ============================
INSERT INTO Enrollment VALUES
(401, 201, 301, 'Fall 2026', 'A'),
(402, 202, 302, 'Fall 2026', 'B');

-- ============================
-- Sample Queries
-- ============================

-- Student enrollments
SELECT s.FirstName, s.LastName, c.CourseName, e.Semester, e.Grade
FROM Enrollment e
JOIN Student s ON e.StudentID = s.StudentID
JOIN Course c ON e.CourseID = c.CourseID;

-- Course offerings
SELECT c.CourseName, d.DeptName, i.FirstName, i.LastName
FROM Course c
JOIN Department d ON c.DeptID = d.DeptID
JOIN Instructor i ON c.InstructorID = i.InstructorID;

-- Instructor assignments
SELECT i.FirstName, i.LastName, c.CourseName
FROM Instructor i
JOIN Course c ON i.InstructorID = c.InstructorID;

-- Department details
SELECT d.DeptName, c.CourseName
FROM Department d
JOIN Course c ON d.DeptID = c.DeptID;
