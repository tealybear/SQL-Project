USE [db_Library]
GO
/****** Object:  StoredProcedure [dbo].[CopiesOfTitleAtBranch_Library]    Script Date: 12/8/2017 11:04:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[CopiesOfTitleAtBranch_Library]
AS
BEGIN
SELECT Book.Title, Copies.NumOfCopies, Branch.BranchName
	FROM tbl_book AS Book INNER JOIN tbl_bookcopies AS Copies
	ON Book.BookID = Copies.BookID
	INNER JOIN tbl_libbranch AS Branch
	ON Copies.BranchID = Branch.BranchID
	WHERE Book.Title = 'The Lost Tribe' AND Branch.BranchName = 'Sharpstown'
END