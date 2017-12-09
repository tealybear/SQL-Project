/* Database and SQL Course Item# 27
Q1.) How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?
*/
SELECT Book.Title, Copies.NumOfCopies, Branch.BranchName
	FROM tbl_book AS Book INNER JOIN tbl_bookcopies AS Copies
	ON Book.BookID = Copies.BookID
	INNER JOIN tbl_libbranch AS Branch
	ON Copies.BranchID = Branch.BranchID
	WHERE Book.Title = 'The Lost Tribe' AND Branch.BranchName = 'Sharpstown'
END

/*
Q2.) How many copies of the book titled "The Lost Tribe" are owned by each library branch?
*/

SELECT Copies.NumOfCopies AS 'Copies Held', Branch.BranchName AS 'Branch Name', Book.Title
	FROM tbl_bookcopies AS Copies INNER JOIN tbl_libbranch AS Branch
	ON Branch.BranchId = Copies.BranchId
	INNER JOIN tbl_book AS Book
	ON Copies.BookId = Book.BookId
	WHERE Book.Title = 'The Lost Tribe'
/*
Q3.) Retrieve the names of all borrowers who do not have any books checked out.
*/
SELECT Person.BorName 
	FROM tbl_borrower AS Person INNER JOIN tbl_bookloans AS Loan
	ON Person.CardNum = Loan.CardNo
	WHERE Loan.Book_Id = NULL

/*
Q4.) For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address.
*/
SELECT Loan.DueDate, Book.Title, Person.BorName, Person.BorAddress
	FROM tbl_book AS Book INNER JOIN tbl_bookloans AS Loan
	ON Book.BookId = Loan.Book_Id
	INNER JOIN tbl_borrower AS Person
	ON Person.CardNum = Loan.CardNo
	WHERE Loan.Branch_ID = 5 AND Loan.DueDate = '2016-11-03' /* Insert date here.*/

/*
Q5.) For each library branch, retrieve the branch name and the total number of books loaned out from that branch.
*/
SELECT Branch.BranchName, COUNT(Loans.Branch_ID) AS 'Books Loaned Out'
	FROM tbl_libbranch AS BRANCH INNER JOIN tbl_bookloans AS Loans
	ON Branch.BranchId = Loans.Branch_ID
	GROUP BY Branch.BranchName, Loans.Branch_ID

/*
Q6.) Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.
*/
SELECT Person.BorName, Person.BorAddress, COUNT(Loans.CardNo)
FROM tbl_borrower AS Person INNER JOIN tbl_bookloans AS Loans
ON Person.CardNum = Loans.CardNo
GROUP BY Person.BorName, Person.BorAddress
HAVING COUNT(Loans.CardNo) > 5 /* Insert amount of checked out Books here.*/

/*
Q7.) For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central".
*/
SELECT Book.Title, Copies.NumOfCopies, Branch.BranchName
FROM tbl_book AS Book INNER JOIN tbl_bookcopies AS Copies
ON Book.BookId = Copies.BookId
INNER JOIN tbl_libbranch AS Branch
ON Branch.BranchId = Copies.BranchId
INNER JOIN tbl_authors AS Auth
ON Auth.BookNum = Book.BookId
WHERE Branch.BranchName = 'Central' AND Auth.Author_Name = 'Stephen King' /* Insert Location and Author here.*/