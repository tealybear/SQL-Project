USE [db_Library]
GO
/****** Object:  StoredProcedure [dbo].[CreateTables_Library]    Script Date: 12/8/2017 9:07:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[CreateTables_Library]
AS
BEGIN

		IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES tbl_book)
		DROP TABLE tbl_book, tbl_publisher, tbl_authors, tbl_bookloans, tbl_bookcopies, tbl_borrower, tbl_libbranch;
	/******************************************************
	 * Building the tables to later input user data.*
	 ******************************************************/
	CREATE TABLE tbl_book (
		BookId INT PRIMARY KEY,
		Title VARCHAR(200),
		PublisherName VARCHAR(50)
	);

	CREATE TABLE tbl_authors (
		BookNum INT PRIMARY KEY,
		Author_Name VARCHAR(50)
	);

	CREATE TABLE tbl_publisher (
		PubName VARCHAR(50) PRIMARY KEY,
		PubAddress VARCHAR(50),
		PubPhone VARCHAR(20)
	);

	CREATE TABLE tbl_bookcopies (
		BookId INT,
		BranchId INT,
		NumOfCopies INT CONSTRAINT pk_BookCopyNum PRIMARY KEY (BookID, BranchID)
	);

	CREATE TABLE tbl_bookloans (
		Book_Id INT,
		Branch_ID INT,
		CardNo INT,
		DateOut DATE,
		DueDate DATE CONSTRAINT pd_BookLoanID PRIMARY KEY (Book_ID, Branch_ID, CardNo)
	);

	CREATE TABLE tbl_libbranch (
		BranchId INT PRIMARY KEY,
		BranchName VARCHAR(50),
		BranchAddress VARCHAR(200)
	);

	CREATE TABLE tbl_borrower (
		CardNum INT PRIMARY KEY,
		BorName VARCHAR(50),
		BorAddress VARCHAR(200),
		BorPhone VARCHAR(20)
	);

END