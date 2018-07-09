CREATE DATABASE db_BookDrill
USE db_BookDrill
GO

CREATE TABLE tbl_book(
	BookId INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR(50) NOT NULL,
	PublisherName INT NOT NULL
);

CREATE TABLE tbl_book_authors(
	BookId INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	AuthorName VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_publisher(
	PublisherId INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_book_loans(
	BookLoansId INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	BookId INT NOT NULL,
	BranchId INT NOT NULL,
	CardNo INT NOT NULL,
	DateOut VARCHAR(50) NOT NULL,
	DueDate VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_book_copies(
	BookCopiesId INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	BookId INT NOT NULL,
	BranchId INT NOT NULL,
	No_Of_Copies INT NOT NULL
);

CREATE TABLE tbl_borrower(
	CardNo INT PRIMARY KEY NOT NULL IDENTITY(100,1),
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Phone VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_library_branch(
	BranchId INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	BranchName VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL
);

--Executed above

INSERT INTO tbl_book
	(Title, PublisherName)
	VALUES
	('The Lost Tribe', 1),
	('Harry Potter and the Philosophers Stone',  2),
	('The Hobbit', 3),
	('The Da Vinci Code', 4),
	('To Kill a Mockingbird', 5),
	('Twilight', 6),
	('The Hunger Games', 2),
	('The Adventures of Huckleberry Finn', 1),
	('A Game of Thrones', 6),
	('The Shining', 7),
	('The Lord of the Rings', 3),
	('It', 7),
	('Harry Potter and the Chamber of Secrets', 2),
	('Frankenstein', 6),
	('Moby Dick', 2),
	('Book_16', 7),
	('Book_17', 1),
	('Book_18', 7),
	('Book_19', 6),
	('Book_20',  1)
;

INSERT INTO tbl_book_authors
	(AuthorName)
	VALUES
	('Author_1'),
	('J. K. Rowling'),
	('J. R. R. Tolkien'),
	('Dan Brown'),
	('Harper Lee'),
	('Stephenie Meyer'),
	('Suzanne Collins'),
	('Mark Twain'),
	('George R. R. Martin'),
	('Stephen King')
;

INSERT INTO tbl_publisher
	(Name, Address, Phone)
	VALUES
	('Publisher_1', '123 Publish St.', '(123)456-7890'),
	('Scholastic', '557 Broadway', '1(800)724-6527'),
	('Allen & Unwin', 'St Leonards NSW 1590', '(612)8425-0100'),
	('DoubleDay', '1745 Broadway', '(212)940-7390'),
	('Warner Books', '1290 Avenue of the Americas', '1(800)WARNER'),
	('Publisher_2', '456 Publish Ave.', '(098)765-4321'),
	('Publisher_3(Stephen King)', '789 Publish Dr.', '(321)654-0987')
;

INSERT INTO tbl_book_loans
	(BookId, BranchId, CardNo, DateOut, DueDate)
	VALUES
	(1, 1, 103, '1-1-18', '1-15-18'),
	(4, 2, 106, '1-3-18', '1-17-18'),
	(20, 4, 101, '1-3-18', '1-17-18'),
	(1, 3, 106, '1-5-18', '1-19-18'),
	(9, 3, 103, '1-5-18', '1-19-18'),
	(3, 1, 100, '1-9-18', '1-23-18'),
	(7, 2, 101, '1-11-18', '1-25-18'),
	(18, 4, 107, '1-15-18', '1-29-18'),
	(19, 3, 102, '1-15-18', '1-29-18'),
	(5, 1, 104, '1-19-18', '2-2-18'),
	(6, 1, 106, '1-23-18', '2-6-18'),
	(9, 2, 100, '1-29-18', '2-12-18'),
	(16, 4, 103, '1-31-18', '2-14-18'),
	(3, 3, 101, '1-31-18', '2-14-18'),
	(19, 2, 105, '2-2-18', '2-16-18'),
	(10, 1, 106, '2-5-18', '2-19-18'),
	(12, 2, 107, '2-8-18', '2-22-18'),
	(14, 4, 102, '2-9-18', '2-23-18'),
	(17, 3, 103, '2-12-18', '2-26-18'),
	(4, 2, 105, '2-12-18', '2-26-18'),
	(12, 1, 106, '2-15-18', '3-1-18'),
	(16, 2, 100, '2-21-18', '3-7-18'),
	(12, 4, 104, '2-23-18', '3-9-18'),
	(5, 3, 103, '2-26-18', '3-12-18'),
	(17, 3, 105, '3-2-18', '3-16-18'),
	(15, 1, 106, '3-5-18', '3-19-18'),
	(19, 2, 107, '3-8-18', '3-22-18'),
	(10, 4, 102, '3-9-18', '3-23-18'),
	(15, 3, 100, '3-14-18', '3-28-18'),
	(13, 3, 105, '3-19-18', '4-2-18'),
	(18, 1, 101, '3-23-18', '4-6-18'),
	(20, 2, 104, '3-27-18', '4-10-18'),
	(8, 4, 107, '3-30-18', '4-13-18'),
	(7, 3, 105, '4-2-18', '4-16-18'),
	(1, 1, 100, '4-4-18', '4-18-18'),
	(2, 1, 105, '4-9-18', '4-23-18'),
	(11, 2, 107, '4-9-18', '4-23-18'),
	(6, 4, 104, '4-12-18', '4-26-18'),
	(13, 3, 102, '4-17-18', '5-1-18'),
	(15, 1, 104, '4-20-18', '5-4-18'),
	(5, 1, 101, '4-20-18', '5-4-18'),
	(14, 2, 105, '4-23-18', '5-7-18'),
	(4, 4, 107, '4-26-18', '5-10-18'),
	(9, 3, 102, '4-30-18', '5-14-18'),
	(7, 2, 104, '5-4-18', '5-18-18'),
	(8, 1, 101, '5-8-18', '5-22-18'),
	(5, 2, 102, '5-11-18', '5-25-18'),
	(2, 4, 107, '5-15-18', '5-29-18'),
	(11, 3, 101, '5-17-18', '5-31-18'),
	(2, 1, 100, '5-18-18', '6-1-18')
;

INSERT INTO tbl_book_copies
	(BookId, BranchId, No_Of_Copies)
	VALUES
	(1, 1, 3),
	(3, 1, 2),
	(6, 1, 5),
	(10, 1, 3),
	(12, 1, 2),
	(15, 1, 2),
	(18, 1, 4),
	(2, 1, 2),
	(5, 1, 3),
	(8, 1, 2),
	(4, 2, 5),
	(7, 2, 3),
	(9, 2, 2),
	(12, 2, 5),
	(16, 2, 2),
	(19, 2, 4),
	(20, 2, 3),
	(10, 2, 6),
	(14, 2, 3),
	(5, 2, 5),
	(1, 3, 2),
	(3, 3, 2),
	(5, 3, 3),
	(7, 3, 2),
	(9, 3, 4),
	(11, 3, 5),
	(13, 3, 6),
	(15, 3, 2),
	(17, 3, 2),
	(19, 3, 3),
	(2, 4, 5),
	(4, 4, 3),
	(6, 4, 2),
	(8, 4, 2),
	(10, 4, 4),
	(12, 4, 3),
	(14, 4, 2),
	(16, 4, 2),
	(18, 4, 4),
	(20, 4, 5)
;

Insert INTO tbl_borrower
	(Name, Address, Phone)
	VALUES
	
	('Bob', '1970 Napa Ct.', '(541)555-1234'),
	('Eric', '9833 Mt. Dias Blv.', '(541)555-5678'),
	('Jessica', '7484 Roundtree Drive', '(541)555-9012'),
	('Bill', '9539 Glenside Dr', '(541)555-3456'),
	('Mary', '1226 Shoe St.', '(541)555-7890'),
	('John', '1399 Firestone Drive', '(541)555-4321'),
	('Michael', '5672 Hale Dr.', '(541)555-8765'),
	('Sarah', '6387 Scenic Avenue', '(541)555-2109'),
	('Adam', '8713 Yosemite Ct.', '(936)555-0134'),
	('Kevin', '250 Race Court', '(262)555-0173'),
	('Anna', '9265 La Paz', '(185)555-0178')
;

INSERT INTO tbl_library_branch
	(BranchName, Address)
	VALUES
	('Sharpstown', '123 Sharp St.'),
	('Central', '456 Cent Ave.'),
	('Branch_3', '789 Bran Dr.'),
	('Branch_4', '321 Ranch St.')
;