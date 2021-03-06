USE [db_Library]
GO
/****** Object:  StoredProcedure [dbo].[BranchBorrowerDetails_Library]    Script Date: 12/8/2017 11:04:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[BranchBorrowerDetails_Library]
AS
BEGIN
SELECT Loan.DueDate, Book.Title, Person.BorName, Person.BorAddress
	FROM tbl_book AS Book INNER JOIN tbl_bookloans AS Loan
	ON Book.BookId = Loan.Book_Id
	INNER JOIN tbl_borrower AS Person
	ON Person.CardNum = Loan.CardNo
	WHERE Loan.Branch_ID = 5 AND Loan.DueDate = '2016-11-03' /* Insert date here.*/
	END