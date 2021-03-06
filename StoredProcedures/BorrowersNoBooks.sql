USE [db_Library]
GO
/****** Object:  StoredProcedure [dbo].[BorrowersNoBooks_Library]    Script Date: 12/8/2017 11:03:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[BorrowersNoBooks_Library]
AS
BEGIN
SELECT Person.BorName 
	FROM tbl_borrower AS Person INNER JOIN tbl_bookloans AS Loan
	ON Person.CardNum = Loan.CardNo
	WHERE Loan.Book_Id = NULL
END