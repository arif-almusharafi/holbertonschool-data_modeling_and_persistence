SELECT students.name AS student_name, courses.title AS course_title
FROM students
INNER JOIN courses, enrollments ON students.id = courses.id = enrollments.student_id
ORDER BY students.name, courses.title;
