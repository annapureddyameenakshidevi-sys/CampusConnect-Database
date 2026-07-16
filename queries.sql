-- Query using IN
SELECT * FROM Students
WHERE department IN ('CSE', 'ECE');

-- Query using BETWEEN
SELECT * FROM Courses
WHERE credits BETWEEN 3 AND 4;

-- Query using IS NOT NULL
SELECT * FROM Students
WHERE email IS NOT NULL;

-- Query using GROUP BY and HAVING
SELECT department, COUNT(*) AS total_students
FROM Students
GROUP BY department
HAVING COUNT(*) >= 2;

-- INNER JOIN
SELECT Students.student_name, Courses.course_name
FROM Enrollments
INNER JOIN Students ON Enrollments.student_id = Students.student_id
INNER JOIN Courses ON Enrollments.course_id = Courses.course_id;

-- LEFT JOIN
SELECT Students.student_name, Enrollments.semester
FROM Students
LEFT JOIN Enrollments
ON Students.student_id = Enrollments.student_id;

-- Scalar Subquery
SELECT student_name
FROM Students
WHERE student_id = (
    SELECT MIN(student_id)
    FROM Students
);

-- Correlated Subquery
SELECT student_name
FROM Students s
WHERE EXISTS (
    SELECT 1
    FROM Enrollments e
    WHERE e.student_id = s.student_id
);

-- EXISTS Query
SELECT *
FROM Courses c
WHERE EXISTS (
    SELECT 1
    FROM Enrollments e
    WHERE e.course_id = c.course_id
);

-- UNION
SELECT student_name AS Name
FROM Students
UNION
SELECT course_name
FROM Courses;

-- ROW_NUMBER Window Function
SELECT
ROW_NUMBER() OVER (ORDER BY student_name) AS Row_Num,
student_name,
department
FROM Students;

-- Transaction Example

BEGIN TRANSACTION;

UPDATE Courses
SET credits = credits + 1
WHERE course_id = 101;

UPDATE Students
SET department='CSE'
WHERE student_id=1;

COMMIT;
