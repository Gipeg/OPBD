--Task 1
INSERT INTO book(AuthorId, BookId,  Title, PublicationYear)
values (1, 1, '����� � ���', 1923);

--Task2
Delete From Customer
Where Phone IS NULL;

--Task3

UPDATE book
SET Price = price - 100
WHERE Genre	LIKE '%������';

--Task4

Select Author.Surnmane, Author.Name, book.Title, book.Price, book.PublicationYear
FROM book
	JOIN Author ON book.AuthorId = Author.Authorid
Where Genre=N'�����'

--Task5 (� ����������)

--DELETE FROM OrderList
--WHERE OrderId (SELECT OrderId, From Order where BookId IS NULL OR BookId ='');

--Task6

Update book
SET Price = Price + 100
FROM	Author
Where	 book.AuthorId = Author.Authorid
			And Author.Country = '������';

--Task7

Update Book
SET price = 
CASE 
	When genre = '����1' THEN Price + 100
	ELSE Price
	End;

