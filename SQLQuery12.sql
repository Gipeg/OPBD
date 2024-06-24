/*task 1*/
select * FROM book;

/*task 2*/
SELECT [Surnmane],[Name]
FROM Author

/*task 3*/
Select DISTINCT Country FROM Author;

/*task 4*/
Select BookId, Title, Price * 0.95 as Цена_со_скидкой
FROM book
Order BY Цена_со_скидкой DESC, Title;

/*task 5*/
Select AuthorID, Title, Count(*) AS Price
From Book
Group by AuthorId, Title;

/*task 6*/
Select COUNT(*) AS count_book,
MAX(Price) AS max_Price,
AVG(Price) AS avg_Price,
MIN(Price) AS min_Price
FROM book;

/*task 7*/
SELECT genre,
	MAX(Price) AS max_Price,
	AVG(Price) AS avg_Price,
	MIN(Price) AS min_Price
FROM book
Group by genre;