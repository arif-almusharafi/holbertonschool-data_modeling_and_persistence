SELECT price, genre, AVG(price)
FROM books
GROUP BY genre;
