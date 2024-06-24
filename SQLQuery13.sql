/*task1*/
SELECT 
	BookId AS "код книги",
	Title AS "Название",
	Price AS "Цена"
FROM 
	book
Where 
	genre = 'проза'
	AND Price BETWEEN 500 and 1000;
/*task2*/
SELECT
	Surname AS "Фамилия",
	Name AS "Имя",
	phone AS "Телефон"
From Customer
Where 
	Phone IS NOT NULL AND Phone <> '';
/*task3*/
	SELECT *
	FROM book
	Where
	title LIKE '%война%';
/*task4*/
SELECT 
	title AS "Название"
FROM book
WHERE 
	title LIKE 'А%';
/*task5*/
SELECT
	Country AS "Страна",
	COUNT(AuthorId) AS "Количество авторов"
FROM
	Author
Group BY
	Country
Having 
	Count(AuthorId) > 1;
/*task6*/
SELECT
	OrderId AS "Номер заказа",
	SUM(Amount) AS "Количество книг"
FROM
	OrderList
GROUP BY
	OrderId
HAVING
	SUM(Amount) > 5;
/*task7*/
SELECT 
	authorId AS "Id Автора",
	title AS "Название книги",
	COUNT(*) AS "Количество"
FROM
	book
Group BY
AuthorId, Title
HAVING 
	COUNT(*) > 1