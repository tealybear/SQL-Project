USE [db_Library]
GO
/****** Object:  StoredProcedure [dbo].[PopulateTables_Library]    Script Date: 12/5/2017 6:18:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[PopulateTables_Library]
AS
BEGIN

	INSERT INTO tbl_book
		(BookId,Title,PublisherName)
		VALUES 
		(01,'The Lost Tribe','Penguin Books'),
		(02,'Ulysses','Rabbit Books'),
		(03,'The Great Gatsby','Gazelle Books'),
		(04,'A Portrait of the Artist as a Young Man','Lionfish Books'),
		(05,'Lolita','Monkey Books'),
		(06,'Brave New World','Horse Books'),
		(07,'Catch-22','Shark Books'),
		(08,'Darkness at Noon','Penguin Books'),
		(09,'Sons and Lovers','Rabbit Books'),
		(10,'The Grapes of Wrath','Gazelle Books'),
		(11,'Under the Volcano','Lionfish Books'),
		(12,'The way of All Flesh','Monkey Books'),
		(13,'1984','Horse Books'),
		(14,'I, Claudius','Shark Books'),
		(15,'To the Lighthouse','Penguin Books'),
		(16,'An American Tragedy','Rabbit Books'),
		(17,'The Heart Is a Lonely Hunter','Gazelle Books'),
		(18,'Slaughterhouse Five','Lionfish Books'),
		(19,'Invisible Man','Monkey Books'),
		(20,'Misery','Horse Books')
	;
	SELECT * FROM tbl_book;

	INSERT INTO tbl_authors
		(BookNum,Author_Name)
		VALUES 
		(01,'Mark Lee'),
		(02,'James Joyce'),
		(03,'F.Scott Fitzgerald'),
		(04,'James Joyce'),
		(05,'Vladimir Nabokov'),
		(06,'Aldous Huxley'),
		(07,'William Falkner'),
		(08,'Joseph Heller'),
		(09,'Arthur Koestler'),
		(10,'D. H. Lawrence'),
		(11,'John Steinbeck'),
		(12,'Malcom Lowry'),
		(13,'Samuel Butler'),
		(14,'George Orwell'),
		(15,'Robert Graves'),
		(16,'Virginia Woolf'),
		(17,'Theodore Dreiser'),
		(18,'Carson McCullers'),
		(19,'Kurt Vonnegut'),
		(20,'Stephen King')
	;
	SELECT * FROM tbl_authors;

	INSERT INTO tbl_libbranch
		(BranchId, BranchName, BranchAddress)
		VALUES 
		(01,'Green', '82nd Rebop Way'),
		(02,'Purple', '83rd Rebop Way'),
		(03,'Lavender', '84th Rebop Way'),
		(04,'Magenta', '85th Rebop Way'),
		(05,'Sharpstown', '86th Rebop Way'),
		(06,'Seafoam', '87th Rebop Way'),
		(07,'Central', '88th Rebop Way')
	;
	SELECT * FROM tbl_libbranch;

	INSERT INTO tbl_publisher
		(PubName,PubAddress,PubPhone)
		VALUES 
		('Penguin Books','11 1st St.','7795555522'),
		('Rabbit Books','12 1st St.','7795555552'),
		('Gazelle Books','13 1st St.','7795555553'),
		('Lionfish Books','14 1st St.','7795555554'),
		('Monkey Books','15 1st St.','7795555555'),
		('Horse Books','16 1st St.','7795555556'),
		('Shark Books','17 1st St.','7795555557')
	;
	SELECT * FROM tbl_publisher;
	
	INSERT INTO tbl_bookcopies
		(BookId,BranchId,NumOfCopies)
		VALUES 
		(01, 01, 4),
		(01, 02, 2),
		(01, 03, 3),
		(01, 07, 4),
		(01, 05, 3),
		(02, 04, 4),
		(02, 05, 7),
		(02, 01, 8),
		(03, 03, 4),
		(03, 02, 2),
		(04, 05, 7),
		(04, 01, 2),
		(04, 02, 6),
		(05, 03, 5),
		(05, 04, 2),
		(05, 06, 5),
		(05, 05, 3),
		(06, 01, 5),
		(06, 02, 3),
		(06, 03, 4),
		(07, 04, 3),
		(07, 05, 2),
		(07, 01, 6),
		(07, 07, 4),
		(08, 02, 4),
		(08, 03, 3),
		(08, 04, 3),
		(08, 05, 2),
		(08, 06, 4),
		(09, 01, 4),
		(09, 02, 3),
		(10, 03, 4),
		(10, 04, 2),
		(10, 05, 5),
		(11, 01, 3),
		(11, 02, 5),
		(12, 03, 3),
		(12, 04, 2),
		(13, 05, 2),
		(13, 01, 2),
		(14, 02, 4),
		(14, 06, 3),
		(14, 03, 6),
		(15, 04, 3),
		(15, 05, 6),
		(16, 01, 7),
		(16, 02, 4),
		(17, 03, 3),
		(17, 02, 7),
		(17, 07, 4),
		(18, 05, 2),
		(18, 01, 3),
		(18, 02, 2),
		(19, 03, 2),
		(19, 04, 4),
		(20, 03, 2),
		(20, 06, 5),
		(20, 05, 4),
		(20, 01, 3),
		(20, 07, 4)
	;
	SELECT * FROM tbl_bookcopies;

	INSERT INTO tbl_borrower
		(CardNum,BorName,BorAddress,BorPhone)
		VALUES 
		(84922,'Alf','20 2nd St.','7725552000'),
		(84923,'Bo','21 2nd St.','7725552001'),
		(84924,'Chappy','22 2nd St.','7725552002'),
		(84925,'Dorian','23 2nd St.','7725552003'),
		(84926,'Eloise','24 2nd St.','7725552004'),
		(84927,'Frank','25 2nd St.','7725552005'),
		(84928,'Gretchen','26 2nd St.','7725552006'),
		(84929,'Helio','27 2nd St.','7725552007'),
		(84930,'Isaac','28 2nd St.','7725552008')
	;
	SELECT * FROM tbl_borrower;

	INSERT INTO tbl_bookloans
		(Book_id,Branch_ID,CardNo,DateOut, DueDate)
		VALUES 
		(01,01,84922,'10/04/2016','11/01/2016'),
		(03,02,84923,'10/05/2016','11/02/2016'),
		(02,03,84925,'10/06/2016','11/03/2016'),
		(05,04,84930,'10/07/2016','11/04/2016'),
		(02,05,84927,'10/08/2016','11/05/2016'),
		(07,06,84926,'10/09/2016','11/06/2016'),
		(04,04,84930,'10/10/2016','11/07/2016'),
		(08,03,84925,'10/11/2016','11/08/2016'),
		(01,04,84930,'10/11/2016','11/08/2016'),
		(04,01,84922,'10/11/2016','11/08/2016'),
		(03,04,84930,'10/11/2016','11/08/2016'),
		(14,07,84924,'10/15/2016','11/12/2016'),
		(16,06,84926,'10/16/2016','11/13/2016'),
		(15,01,84922,'10/17/2016','11/14/2016'),
		(02,05,84929,'10/18/2016','11/15/2016'),
		(17,04,84930,'10/19/2016','11/16/2016'),
		(04,05,84929,'10/20/2016','11/17/2016'),
		(07,05,84927,'10/21/2016','11/18/2016'),
		(08,01,84922,'10/22/2016','11/19/2016'),
		(01,05,84929,'10/23/2016','11/20/2016'),
		(06,02,84923,'10/04/2016','11/01/2016'),
		(03,06,84926,'10/05/2016','11/02/2016'),
		(20,05,84927,'10/06/2016','11/03/2016'),
		(03,01,84928,'10/07/2016','11/04/2016'),
		(10,07,84924,'10/08/2016','11/05/2016'),
		(10,02,84923,'10/09/2016','11/06/2016'),
		(02,06,84926,'10/10/2016','11/07/2016'),
		(19,01,84922,'10/11/2016','11/08/2016'),
		(01,05,84927,'10/12/2016','11/09/2016'),
		(08,02,84923,'10/13/2016','11/10/2016'),
		(14,06,84926,'10/14/2016','11/11/2016'),
		(11,07,84924,'10/15/2016','11/12/2016'),
		(07,05,84924,'10/16/2016','11/13/2016'),
		(10,06,84926,'10/17/2016','11/14/2016'),
		(02,02,84923,'10/18/2016','11/15/2016'),
		(05,05,84927,'10/19/2016','11/16/2016'),
		(16,05,84929,'10/20/2016','11/17/2016'),
		(12,06,84926,'10/21/2016','11/18/2016'),
		(13,01,84928,'10/22/2016','11/19/2016'),
		(18,04,84930,'10/23/2016','11/20/2016'),
		(04,02,84923,'10/04/2016','11/01/2016'),
		(09,02,84923,'10/05/2016','11/02/2016'),
		(16,02,84923,'10/06/2016','11/03/2016'),
		(12,01,84928,'10/07/2016','11/04/2016'),
		(03,07,84923,'10/08/2016','11/05/2016'),
		(04,03,84925,'10/09/2016','11/06/2016'),
		(01,05,84928,'10/10/2016','11/07/2016'),
		(07,05,84929,'10/11/2016','11/08/2016'),
		(01,03,84925,'10/12/2016','11/09/2016'),
		(03,05,84927,'10/13/2016','11/10/2016')
	;
	SELECT * FROM tbl_bookloans;

	END