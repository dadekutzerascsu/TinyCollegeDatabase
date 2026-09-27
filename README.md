# Tiny College Database

This project contains a small relational database for a college management system. It models departments, instructors, students, courses, and enrollments.

## Project Files

- [schema.sql](schema.sql) – creates the database tables and relationships
- [data.sql](data.sql) – inserts sample department, instructor, student, course, and enrollment data
- [tinycollege.db](tinycollege.db) – the SQLite database file with the populated schema

## Database Structure

The database includes these tables:

- Department
- Instructor
- Student
- Course
- Enrollment

The schema defines key relationships such as:

- each instructor belongs to a department
- each student has a major department
- each course belongs to a department and is taught by an instructor
- each enrollment links a student to a course and includes semester and grade data

## How to Set Up the Database

From the project folder, run:

```bash
cd /workspaces/TinyCollegeDatabase
sqlite3 tinycollege.db < schema.sql
sqlite3 tinycollege.db < data.sql
```

This creates the tables and inserts the sample records.

## How to Open the Database

```bash
cd /workspaces/TinyCollegeDatabase
sqlite3 tinycollege.db
```

Once connected, you can view tables and run queries:

```sql
.tables
.schema
SELECT * FROM Student;
SELECT * FROM Course;
```

## Example Queries

View all student enrollments:

```sql
SELECT s.FirstName, s.LastName, c.CourseName, e.Semester, e.Grade
FROM Enrollment e
JOIN Student s ON e.StudentID = s.StudentID
JOIN Course c ON e.CourseID = c.CourseID;
```

View course offerings with department and instructor details:

```sql
SELECT c.CourseName, d.DeptName, i.FirstName, i.LastName
FROM Course c
JOIN Department d ON c.DeptID = d.DeptID
JOIN Instructor i ON c.InstructorID = i.InstructorID;
```

## Notes

This project is implemented as a SQLite database, so the SQL is compatible with the SQLite command-line tool. The sample data is intentionally small and suitable for learning relational database design and joins.

## AI Note
This project was developed with assistance from Copilot/Github Copilot, which was used to [brainstorm ideas / structure sections / edit for style and clarity]. The final content was reviewed, verified, and edited by the author."