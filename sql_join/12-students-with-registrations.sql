SELECT students.name
FROM students
WHERE students.id IN (
    SELECT registrations.student_id
    FROM registrations
)
ORDER BY students.name;
