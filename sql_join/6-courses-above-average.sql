SELECT title AS course_title
FROM courses
INNER JOIN enrollments ON courses.id = enrollments.course_id
GROUP BY courses.id 
HAVING COUNT(*) > (
    SELECT AVG(total) AS Avrage_total
    FROM(SELECT course_id, COUNT(*) AS total
    FROM enrollments
    GROUP BY course_id)
)
ORDER BY courses.title;
