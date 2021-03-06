USE [db_Library]
GO
/****** Object:  StoredProcedure [dbo].[BorrowerDetails_Library]    Script Date: 12/8/2017 11:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[BorrowerDetails_Library]
AS
BEGIN
SELECT Person.BorName, Person.BorAddress, COUNT(Loans.CardNo)
FROM tbl_borrower AS Person INNER JOIN tbl_bookloans AS Loans
ON Person.CardNum = Loans.CardNo
GROUP BY Person.BorName, Person.BorAddress
HAVING COUNT(Loans.CardNo) > 5 /* Insert amount of checked out Books here.*/
END