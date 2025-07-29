-- Step 1: Insert Data
INSERT INTO Students VALUES
(1, 'Ananya', 'Female', 21),
(2, 'Rahul', 'Male', 22),
(3, 'Pooja', 'Female', 23),
(4, 'Arjun', 'Male', 21);

INSERT INTO Courses VALUES
(101, 'Python Programming', '3 months'),
(102, 'Data Science', '6 months'),
(103, 'Web Development', '4 months');

INSERT INTO Enrollments VALUES
(1, 1, 101, '2024-01-10'),
(2, 2, 102, '2024-01-15'),
(3, 1, 102, '2024-02-01'),
(4, 3, 103, '2024-03-10'),
(5, 4, 101, '2024-03-15');

-- Step 2: Queries
-- 1. All enrollments with student and course names
SELECT s.student_name, c.course_name, e.enrollment_date
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id;

-- 2. Total students per course
SELECT c.course_name, COUNT(*) AS total_students
FROM Enrollments e
JOIN Courses c ON e.course_id = c.course_id
GROUP BY c.course_name;

-- 3. Female students enrolled in Data Science
SELECT s.student_name, c.course_name
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE s.gender = 'Female' AND c.course_name = 'Data Science';

-- 4. Monthly enrollments
SELECT MONTH(enrollment_date) AS month, COUNT(*) AS total_enrollments
FROM Enrollments
GROUP BY MONTH(enrollment_date);

-- 5. Students in multiple courses
SELECT s.student_name, COUNT(e.course_id) AS course_count
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
GROUP BY s.student_id
HAVING COUNT(e.course_id) > 1;
