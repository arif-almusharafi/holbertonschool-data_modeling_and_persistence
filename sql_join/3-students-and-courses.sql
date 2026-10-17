SELECT students.name, courses.title AS student_name
FROM students
INNER JOIN courses, enrollments ON students.id = courses.id = enrollments.student_id
ORDER BY students.name, courses.title;
