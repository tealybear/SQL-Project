USE [db_Library]
GO
/****** Object:  StoredProcedure [dbo].[BranchNameLoanedBookTotal_Library]    Script Date: 12/8/2017 11:04:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[BranchNameLoanedBookTotal_Library]
AS
BEGIN
SELECT Branch.BranchName, COUNT(Loans.Branch_ID) AS 'Books Loaned Out'
	FROM tbl_libbranch AS BRANCH INNER JOIN tbl_bookloans AS Loans
	ON Branch.BranchId = Loans.Branch_ID
	GROUP BY Branch.BranchName, Loans.Branch_ID
	END