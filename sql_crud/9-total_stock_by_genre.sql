SELECT genre, stock, COUNT(stock)
FROM books
GROUP BY genre;
