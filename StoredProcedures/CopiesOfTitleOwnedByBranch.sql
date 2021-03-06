USE [db_Library]
GO
/****** Object:  StoredProcedure [dbo].[CopiesOfTitleOwnedByBranch_Library]    Script Date: 12/8/2017 11:05:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[CopiesOfTitleOwnedByBranch_Library]
AS
BEGIN
SELECT Copies.NumOfCopies AS 'Copies Held', Branch.BranchName AS 'Branch Name', Book.Title
	FROM tbl_bookcopies AS Copies INNER JOIN tbl_libbranch AS Branch
	ON Branch.BranchId = Copies.BranchId
	INNER JOIN tbl_book AS Book
	ON Copies.BookId = Book.BookId
	WHERE Book.Title = 'The Lost Tribe'
END