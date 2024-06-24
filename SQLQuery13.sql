/*task1*/
SELECT 
	BookId AS "��� �����",
	Title AS "��������",
	Price AS "����"
FROM 
	book
Where 
	genre = '�����'
	AND Price BETWEEN 500 and 1000;
/*task2*/
SELECT
	Surname AS "�������",
	Name AS "���",
	phone AS "�������"
From Customer
Where 
	Phone IS NOT NULL AND Phone <> '';
/*task3*/
	SELECT *
	FROM book
	Where
	title LIKE '%�����%';
/*task4*/
SELECT 
	title AS "��������"
FROM book
WHERE 
	title LIKE '�%';
/*task5*/
SELECT
	Country AS "������",
	COUNT(AuthorId) AS "���������� �������"
FROM
	Author
Group BY
	Country
Having 
	Count(AuthorId) > 1;
/*task6*/
SELECT
	OrderId AS "����� ������",
	SUM(Amount) AS "���������� ����"
FROM
	OrderList
GROUP BY
	OrderId
HAVING
	SUM(Amount) > 5;
/*task7*/
SELECT 
	authorId AS "Id ������",
	title AS "�������� �����",
	COUNT(*) AS "����������"
FROM
	book
Group BY
AuthorId, Title
HAVING 
	COUNT(*) > 1