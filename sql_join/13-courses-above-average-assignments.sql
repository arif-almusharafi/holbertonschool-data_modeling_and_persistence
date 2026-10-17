SELECT courses.title
FROM courses
LEFT JOIN assignments ON assignments.course_id = courses.id
GROUP BY courses.id
HAVING COUNT(assignments.id) > (
    SELECT AVG(total)
    FROM (
        SELECT COUNT(assignments.id) AS total
        FROM courses
        LEFT JOIN assignments ON assignments.course_id = courses.id
        GROUP BY courses.id
    )
)
ORDER BY courses.title;
