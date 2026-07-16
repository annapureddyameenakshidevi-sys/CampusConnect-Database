
SQLite

## Schema Design
This project contains three tables:
- Students
- Courses
- Enrollments

Primary keys are used in all tables.
Foreign keys connect Students and Courses through Enrollments.
NOT NULL constraints ensure required data is entered.

## Normalization

### 1NF
Each column stores only one value, and there are no repeating groups.

### 2NF
All non-key attributes depend on the whole primary key.

### 3NF
There are no transitive dependencies. Student, Course, and Enrollment information are stored in separate tables.

## Indexing

CREATE INDEX idx_student_department
ON Students(department);

CREATE INDEX idx_enrollment_student_course
ON Enrollments(student_id, course_id);

The department column is indexed for faster filtering.
The composite index improves JOIN performance.

Email was not additionally indexed because it is already UNIQUE.

## Transactions and Isolation

Example Transaction:

BEGIN TRANSACTION;

UPDATE Courses
SET credits = credits + 1
WHERE course_id = 101;

UPDATE Students
SET department='CSE'
WHERE student_id=1;

COMMIT;

Isolation Level:
Read Committed

This prevents dirty reads and keeps data consistent during concurrent transactions.
