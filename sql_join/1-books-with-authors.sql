SELECT books.title, authors.name AS author_name
FROM books
INNER JOIN authors ON authors.id = books.author_id
ORDER BY books.title ASC; 
