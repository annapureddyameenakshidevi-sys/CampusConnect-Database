PRAGMA foreign_keys = ON;

CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    student_name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    department TEXT NOT NULL
);

CREATE TABLE Courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL,
    credits INTEGER NOT NULL
);

CREATE TABLE Enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    semester TEXT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE INDEX idx_student_department
ON Students(department);

CREATE INDEX idx_enrollment_student_course
ON Enrollments(student_id, course_id);


