-- Query using IN
SELECT * FROM Students
WHERE department IN ('CSE', 'ECE');

-- Query using BETWEEN
SELECT * FROM Courses
WHERE credits BETWEEN 3 AND 4;
