INSERT INTO Students (student_id, student_name, email, department) VALUES
(1, 'Asha', 'asha@example.com', 'CSE'),
(2, 'Rahul', 'rahul@example.com', 'ECE'),
(3, 'Priya', 'priya@example.com', 'EEE'),
(4, 'Kiran', 'kiran@example.com', 'ME'),
(5, 'Neha', 'neha@example.com', 'CSE'),
(6, 'Arjun', 'arjun@example.com', 'ECE'),
(7, 'Divya', 'divya@example.com', 'IT'),
(8, 'Ravi', 'ravi@example.com', 'CIVIL'),
(9, 'Sneha', 'sneha@example.com', 'IT'),
(10, 'Vijay', 'vijay@example.com', 'ME');

INSERT INTO Courses (course_id, course_name, credits) VALUES
(101, 'Database Systems', 4),
(102, 'Operating Systems', 4),
(103, 'Computer Networks', 3),
(104, 'Data Structures', 4),
(105, 'Software Engineering', 3),
(106, 'Web Development', 3),
(107, 'Machine Learning', 4),
(108, 'Cloud Computing', 3),
(109, 'Cyber Security', 4),
(110, 'Artificial Intelligence', 4);

INSERT INTO Enrollments (enrollment_id, student_id, course_id, semester) VALUES
(1, 1, 101, 'Semester 1'),
(2, 2, 102, 'Semester 1'),
(3, 3, 103, 'Semester 1'),
(4, 4, 104, 'Semester 2'),
(5, 5, 105, 'Semester 2'),
(6, 6, 106, 'Semester 2'),
(7, 7, 107, 'Semester 3'),
(8, 8, 108, 'Semester 3'),
(9, 9, 109, 'Semester 4'),
(10, 10, 110, 'Semester 4');
