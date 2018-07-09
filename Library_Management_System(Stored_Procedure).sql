USE db_BookDrill
GO

CREATE PROC LibraryManageProj
AS

BEGIN

--1--
SELECT Title, BranchName, No_Of_Copies
FROM tbl_book_copies
INNER JOIN tbl_library_branch ON tbl_library_branch.BranchId = tbl_book_copies.BranchId
INNER JOIN tbl_book ON tbl_book.BookId = tbl_book_copies.BookId
WHERE Title = 'The Lost Tribe'
AND BranchName = 'Sharpstown';

--2--
SELECT Title, BranchName, No_Of_Copies
FROM tbl_book_copies
INNER JOIN tbl_book ON tbl_book.BookId = tbl_book_copies.BookId
INNER JOIN tbl_library_branch ON tbl_library_branch.BranchId = tbl_book_copies.BranchId
WHERE Title = 'The Lost Tribe';

--3--
SELECT Name
FROM tbl_borrower
WHERE CardNo NOT IN (SELECT CardNo FROM tbl_book_loans)

--4--
SELECT Title, Name, tbl_borrower.Address
FROM tbl_book_loans
INNER JOIN tbl_book ON tbl_book.BookId = tbl_book_loans.BookId
INNER JOIN tbl_borrower ON tbl_borrower.CardNo = tbl_book_loans.CardNo
INNER JOIN tbl_library_branch ON tbl_library_branch.BranchId = tbl_book_loans.BranchId
WHERE BranchName = 'Sharpstown'
AND DueDate = GETDATE();

--5--
SELECT BranchName, COUNT(tbl_book_loans.BranchId) AS 'Books Loaned out'
FROM tbl_book_loans
INNER JOIN tbl_library_branch ON tbl_library_branch.BranchId = tbl_book_loans.BranchId
GROUP BY BranchName

--6--
SELECT Name, Address, COUNT(tbl_book_loans.BookLoansId) AS 'Number Books Checked out'
FROM tbl_book_loans
INNER JOIN tbl_borrower ON tbl_borrower.CardNo = tbl_book_loans.CardNo
GROUP BY Name, Address
HAVING COUNT(tbl_book_loans.BookLoansId) > 5

--7--
SELECT Title, No_Of_Copies
FROM tbl_book_copies
INNER JOIN tbl_book ON tbl_book.BookId = tbl_book_copies.BookId
INNER JOIN tbl_library_branch ON tbl_library_branch.BranchId = tbl_book_copies.BranchId
INNER JOIN tbl_publisher ON tbl_publisher.PublisherId = tbl_book.PublisherName
WHERE tbl_publisher.Name = 'Publisher_3(Stephen King)'
AND BranchName = 'Central'

END