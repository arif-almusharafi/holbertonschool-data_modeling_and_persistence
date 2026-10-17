SELECT instructors.name
FROM instructors
WHERE instructors.id IN (
    SELECT courses.instructor_id
    FROM courses
    WHERE courses.id IN (
        SELECT registrations.course_id
        FROM registrations
    )
)
ORDER BY instructors.name;
