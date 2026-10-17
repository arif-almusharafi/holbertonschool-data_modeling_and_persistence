SELECT students.name, courses.title AS student_name, course_title
FROM students
INNER JOIN courses, enrollments ON students.id = courses.id = enrollments.student_id
ORDER BY student.name, courses.title;
