USE [db_Library]
GO
/****** Object:  StoredProcedure [dbo].[CopiesByAuthorAndLocation_Library]    Script Date: 12/8/2017 11:04:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[CopiesByAuthorAndLocation_Library]
AS
BEGIN
SELECT Book.Title, Copies.NumOfCopies, Branch.BranchName
FROM tbl_book AS Book INNER JOIN tbl_bookcopies AS Copies
ON Book.BookId = Copies.BookId
INNER JOIN tbl_libbranch AS Branch
ON Branch.BranchId = Copies.BranchId
INNER JOIN tbl_authors AS Auth
ON Auth.BookNum = Book.BookId
WHERE Branch.BranchName = 'Central' AND Auth.Author_Name = 'Stephen King' /* Insert Location and Author here.*/
END