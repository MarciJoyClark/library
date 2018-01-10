/* LIBRARY DATABASE */

CREATE DATABASE DB_LIBRARY
USE DB_LIBRARY

/*................BOOK INFO*/

CREATE TABLE book (
	Book_ID INT NOT NULL PRIMARY KEY IDENTITY(99,1),
	Book_Title VARCHAR(900) NOT NULL UNIQUE (book_title),
	Publisher VARCHAR(100) NOT NULL
);

INSERT INTO book
	(Book_Title, Publisher)
		VALUES
	('X', 'X'),
	('A Lost Tribe', 'The Lilliput Press Ltd.'),
	('The Art of Horror Movies: An Illustrated History', 'Applause Books'),
	('Symbolism: A Comprehensive Dictionary', 'McFarland Publishing'),
	('On Writing: A Memoir of the Craft', 'Scribner'),
	('Marie Antoinette: The Journey', 'Anchor'),
	('The Queen of Fashion: What Marie Antoinette Wore to the Revolution', 'Picador'),
	('Pet Semetary', 'Pocket Books'),
	('Sex With Kings: 500 Years of Adultery, Power, Rivalry and Revenge', 'William Morrow Paperbacks'),
	('Sex With the Queen: 900 Years of Vile Kings, Virile Lovers and Passionate Politics', 'William Morrow Paperbacks'),
	('Madame Du Barry: The Wages of Beauty', 'Tauris Parke Paperbacks'),
	('Lady Godiva: A literary History of the Legend', 'Wiley-Blackwell'),
	('Madame Tussaud: A Life in Wax', 'HarperCollins'),
	('Miss Peregrine''s Home for Peculiar Children', 'Quirk Books'),
	('Library of Souls: The Third Novel of Miss Peregrine''s Peculiar Children', 'Quirk Books'),
	('Hollow City:The Second Novel of Miss Peregine''s Peculiar Children', 'Quirk Books'),
	('Maximum Ride: The Angel Experiment', 'Jimmy Patterson'),
	('Alphonse Mucha: Masterworks', 'Flame Tree Publishing'),
	('Erte'': Art Deco Master of Graphic Art and Illustration (MasterWorks)', ' Flame Tree Publishing'),
	('Collected Drawings of Aubrey Beardsley', 'Random House Value Publishing'),
	('Technology Basics Dictionary: Tech and Computers Simplified', 'Prosper Consulting Inc.'),
	('The Montauk Project: Experiments in Time', 'Sky Books'),
	('The Philadelphia Experiment: Project Invisibility: The Startling Account of a Ship that Vanished and Returned to Damn Those Who Knew Why', 'Fawcett')
;

SELECT * FROM book

/*................LIBRARY BRANCH*/

CREATE TABLE branch (
	branch_id INT PRIMARY KEY NOT NULL IDENTITY (3997,3),
	branch_name NVARCHAR(50) UNIQUE NOT NULL,
	BR_addr NVARCHAR(450) UNIQUE NOT NULL
);

INSERT INTO branch 
	(branch_name, BR_addr)
		VALUES
		('X', 'X'),
		('The Mall Library Connection', '8700 NE Vancouver Mall Drive Suite 285 Vancouver, WA 98662'),
		('Sharpstown', '901 C Street Vancouver, WA 98660'),
		('Central', '800-C NE Tenney Road Vancouver, WA 98685'),
		('Fort Vancouver Regional Library and HQ', '1007 E Mill Plain Blvd. Vancouver, WA 98663')
;	

SELECT * FROM branch

/*................BOOK COPIES*/

CREATE TABLE book_copies(
	book_ID INT NOT NULL CONSTRAINT book_book_ID FOREIGN KEY REFERENCES book(book_ID) ON UPDATE CASCADE ON DELETE CASCADE,
	branch_ID INT NOT NULL CONSTRAINT branch_branch_ID FOREIGN KEY REFERENCES branch(branch_ID) ON UPDATE CASCADE ON DELETE CASCADE,
	no_of_copies NVARCHAR(2) NOT NULL
);

INSERT INTO book_copies
	(book_id, branch_id, no_of_copies)
		VALUES
		('100', '4000', '5'), ('100', '4003', '3'), ('100', '4006', '7'),('100', '4009', '2'),
		('101', '4000', '3'), ('101', '4003', '2'), ('101', '4006', '4'),('101', '4009', '3'),
		('102', '4000', '2'), ('102', '4003', '2'), ('102', '4006', '3'),('102', '4009', '5'),
		('103', '4000', '10'), ('103', '4003', '9'), ('103', '4006', '2'),('103', '4009', '2'),
		('104', '4000', '5'), ('104', '4003', '5'), ('104', '4006', '5'),('104', '4009', '5'),
		('105', '4000', '2'), ('105', '4003', '6'), ('105', '4006', '0'),('105', '4009', '2'),
		('106', '4000', '5'), ('106', '4003', '2'), ('106', '4006', '3'),('106', '4009', '0'),
		('107', '4000', '3'), ('107', '4003', '0'), ('107', '4006', '2'),('107', '4009', '5'),
		('108', '4000', '5'), ('108', '4003', '6'), ('108', '4006', '0'),('108', '4009', '3'),
		('109', '4000', '11'), ('109', '4003', '2'), ('109', '4006', '3'),('109', '4009', '2'),
		('110', '4000', '2'), ('110', '4003', '5'), ('110', '4006', '2'),('110', '4009', '2'),
		('111', '4000', '10'), ('111', '4003', '0'), ('111', '4006', '2'),('111', '4009', '3'),
		('112', '4000', '2'), ('112', '4003', '3'), ('112', '4006', '10'),('112', '4009', '2'),
		('113', '4000', '0'), ('113', '4003', '2'), ('113', '4006', '5'),('113', '4009', '8'),
		('114', '4000', '3'), ('114', '4003', '2'), ('114', '4006', '2'),('114', '4009', '7'),
		('115', '4000', '5'), ('115', '4003', '0'), ('115', '4006', '7'),('115', '4009', '5'),
		('116', '4000', '2'), ('116', '4003', '3'), ('116', '4006', '2'),('116', '4009', '3'),
		('117', '4000', '7'), ('117', '4003', '5'), ('117', '4006', '2'),('117', '4009', '4'),
		('118', '4000', '2'), ('118', '4003', '4'), ('118', '4006', '3'),('118', '4009', '2'),
		('119', '4000', '2'), ('119', '4003', '7'), ('119', '4006', '0'),('119', '4009', '5'),
		('120', '4000', '0'), ('120', '4003', '2'), ('120', '4006', '6'),('120', '4009', '3'),
		('121', '4000', '3'), ('121', '4003', '2'), ('121', '4006', '5'),('121', '4009', '0')
;

SELECT * FROM book_copies

/*................PUBLISHER*/

CREATE TABLE publisher_info (
	pub_ID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	pub_name VARCHAR(50) NOT NULL UNIQUE (pub_name),
	pub_add VARCHAR(450) NOT NULL UNIQUE (pub_add),
	pub_phone VARCHAR(20) NOT NULL UNIQUE (pub_phone)
);

INSERT INTO publisher_info
	(pub_name, pub_add, pub_Phone)
		VALUES
		('Anchor', '1745 Broadway, 20th Floor New York, NY 10019', '1-(212)-572-2882'),
		('Applause Books', '1744 Broadway, 20th Floor New York, NY 10019', '1-(212)-572-2884'),
		('Fawcett', '1745 Broadway, New York, NY 10019', '1-(212)-782-9000'),
		('Flame Tree Publishing', '6 Melbray Mews London SW6 3NS United Kingdom', '020 7751 9650'),
		('Harper-Collins', 'HarperCollins Publishers 195 Broadway New York, NY 10007', '1-(212)-207-7000'),
		('Jack Stanley', '310 SW 4th Ave Suite 412 Portland, OR 97204', '1-(503)-206-6915'), 
		('Jimmy Patterson', 'James Patterson c/o Author Mail Hachette Book Group USA 1290 Avenue of the Americas New York, NY 10104', '1-800-759-0190'),
		('The Lilliput Press Ltd.', '62-63 Sitric Road, Arbour Hill, Dublin 7, Ireland', '353-01-671-1647'),
		('McFarland Publishing', '960 NC-88, Jefferson, NC 28640', '1-336-246-4460'),
		('Picador', 'Picador Attn: Permissions Manager 175 Fifth Avenue New York, NY 10010', '44-0207-014-6000'),
		('Pocket Books', '1230 Avenue of the Americas, Rockefeller Center, New York City, New York', '1-(800)-223-2336'),
		('Quirk Books', '215 Church Street Philadelphia, PA 19106', '1-(215)-627-3581 '),
		('Random House Value Publishing', '1745 Broadway New York, NY 10019', '1-(212)-782-9001'),
		('Scribner', '1230 Avenue of the Americas New York New York 10020', '1-(212)-698-7000'),
		('Sky Books', 'Unavailable', 'Unavailable'),
		('Tauris Parke Paperbacks', '6 Salem Road, London, W2 4BU, UK', '44-(0)20-7243-1225'),
		('Wiley-Blackwell', '10475 Crosspoint Blvd. Indianapolis, IN 46256', '1-(877)-762-2974'),
		('William Morrow Paperbacks', '195 Broadway New York, NY 10007', '1-800-242-7737')
;

SELECT * FROM publisher_info

/*................AUTHOR*/

CREATE TABLE author (
	book_ID INT NOT NULL CONSTRAINT AUTHOR_book_ID FOREIGN KEY REFERENCES book(book_ID) ON UPDATE CASCADE ON DELETE CASCADE,
	Author NVARCHAR(75) NOT NULL
);

/*Author names with extra indent are co authors of the books with the person above them*/
INSERT INTO AUTHOR
	(Book_ID, Author)
		VALUES
		('100', 'William King'),
		('101', 'Stephen Jones'),
		('102', 'Steven Olderr'),
		('103', 'Stephen King'),
		('106', 'Stephen King'),
		('104', 'Antonia Fraser'),
		('105', 'Caroline Weber'),
		('107', 'Eleanor Herman'), 
		('108', 'Eleanor Herman'),
		('109', 'Joan Haslip'),
		('110', 'Daniel Donoghue'),
		('111', 'Kate Berridge'),
		('112', 'Ransom Riggs'),
		('113', 'Ransom Riggs'),
		('114', 'Ransom Riggs'),
		('115', 'James Patterson'),
		('116', 'Rosalind Ormiston'),
		('117', 'Rosalind Ormiston'),
			('117', 'Ray Perman'),
		('118', 'Bruce S. Harris'),
			('118', 'Arthur Symons'),
		('119', 'Jack C. Stanley'),
			('119', 'Erik D. Gross'),
		('120', 'William Moore'),
			('120', 'Charles Berlitz'),
		('121', 'Preston B. Nichols'),
			('121', 'Peter Moon')
;

SELECT * FROM author

/*................BORROWER*/

CREATE TABLE borrower (
	card_no NVARCHAR(8) PRIMARY KEY NOT NULL,
	full_name NVARCHAR(50) UNIQUE NOT NULL,
	brw_addr NVARCHAR(100) UNIQUE NOT NULL,
	brw_phone NVARCHAR(20) UNIQUE NOT NULL
);

INSERT INTO borrower
	(card_no, full_name, brw_addr, brw_phone)
		VALUES
		('24428807', 'Sunderland, James', '123 6th St. Melbourne, FL 32904', '(251) 546-9442'),
		('27812077', 'Mason, Harry', '71 Pilgrim Avenue Chevy Chase, MD 20815', '(630) 446-8851'),
		('44284173', 'Mason, Heather', '72 Pilgrim Avenue Chevy Chase, MD 20815', '(630) 446-8852'),
		('69375081', 'Orosco, Angela', '44 Shirley Ave. West Chicago, IL 60185', '(125) 546-4478'),
		('69499254', 'Bennett, Cybil', '70 Bowman St. South Windsor, CT 06074', '(226) 906-2721'),
		('71400061', 'Townshend, Harry', '221 South Brickell Street Silver Spring, MD 20901', '(949) 569-4371'),
		('79984650', 'Smith, Vincent', '7266 South Rose Road Bel Air, MD 21014', '(671) 925-1352'),
		('82728280', 'Sullivan, Walter', '7287 Wild Horse Drive Allen Park, MI 48101', '(694) 670-6790'),
		('85023717', 'Garland, Lisa', '69 N. Lancaster Rd. Brick, NJ 08723', '(938) 251-3974'),
		('91011785', 'Wolf, Claudia', '35 North Santa Clara St. Mountain View, CA 94043', '(488) 772-2290')
;

SELECT * FROM borrower

/*.............LOANS*/

CREATE TABLE loans (
	book_ID INT NOT NULL CONSTRAINT book_ID FOREIGN KEY REFERENCES book(book_ID) ON UPDATE CASCADE ON DELETE CASCADE,
	branch_ID INT NOT NULL CONSTRAINT branchID FOREIGN KEY REFERENCES branch(branch_ID) ON UPDATE CASCADE ON DELETE CASCADE,
	card_no NVARCHAR(8) NOT NULL CONSTRAINT card_no FOREIGN KEY REFERENCES borrower(card_no)  ON UPDATE CASCADE ON DELETE CASCADE,
	DATE_OUT NVARCHAR(10) NOT NULL,
	DATE_DUE NVARCHAR(10) NOT NULL
);

/*Lines with two sets of values represent books checked out on different dates, or from multiple locations*/
INSERT INTO loans
	(book_ID, branch_ID, card_no, DATE_OUT, DATE_DUE)
		VALUES
		('100', '4003', '69499254', '12-01-2017', '01-01-2018'),
		('100', '4006', '44284173', '12-02-2017', '01-02-2018'),
		('100', '4003', '27812077', '11-17-2017', '12-17-2017'),
		('100', '4009', '69375081', '11-15-2017', '12-15-2017'),
		  ('101', '4009', '24428807', '11-23-2017', '12-23-2017'),
		  ('101', '4003', '27812077', '11-17-2017', '12-17-2017'),
		    ('102', '4009', '24428807', '11-23-2017', '12-23-2017'),
			('102', '4000', '69375081', '12-27-2017', '01-27-2018'),
			  ('103', '4009', '79984650', '11-15-2017', '12-15-2017'), 
			  ('103', '4000', '69375081', '12-27-2017', '01-27-2018'),
		('104', '4009', '24428807', '11-23-2017', '12-23-2017'),
		('104', '4000', '71400061', '11-17-2017', '12-17-2017'),
		('104', '4006', '91011785', '12-30-2017', '01-30-2018'),
		  ('105', '4003', '69499254', '12-01-2017', '01-01-2018'),
		  ('105', '4000', '71400061', '11-17-2017', '12-17-2017'),
		  ('105', '4006', '91011785', '12-30-2017', '01-30-2018'),
		    ('106', '4000', '27812077', '11-27-2017', '12-27-2017'),
			('106', '4006', '82728280', '12-02-2017', '01-02-2018'),
		      ('107', '4000', '71400061', '11-17-2017', '12-17-2017'),
			  ('107', '4000', '69375081', '12-27-2017', '01-27-2018'),
		('108', '4000', '71400061', '11-17-2017', '12-17-2017'),
		('108', '4000', '69375081', '12-27-2017', '01-27-2018'),
		  ('109', '4000', '71400061', '11-17-2017', '12-17-2017'),
		    ('110', '4003', '69499254', '12-01-2017', '01-01-2018'),
			('110', '4000', '71400061', '11-17-2017', '12-17-2017'),
			('110', '4006', '91011785', '12-30-2017', '01-30-2018'),
			('110', '4009', '69375081', '11-15-2017', '12-15-2017'),
		      ('111', '4003', '69499254', '12-01-2017', '01-01-2018'),
			  ('111', '4000', '71400061', '11-17-2017', '12-17-2017'),
			  ('111', '4006', '91011785', '12-30-2017', '01-30-2018'),
			  ('111', '4006', '69375081', '12-12-2017', '01-12-2018'),
		('112', '4003', '79984650', '12-02-2017', '01-02-2018'),
		('112', '4006', '82728280', '12-02-2017', '01-02-2018'),
		  ('113', '4003', '79984650', '12-02-2017', '01-02-2018'),
		  ('113', '4006', '82728280', '12-02-2017', '01-02-2018'),
		    ('114', '4009', '79984650', '11-15-2017', '12-15-2017'),
			('114', '4006', '82728280', '12-02-2017', '01-02-2018'),
			  ('115', '4003', '79984650', '12-02-2017', '01-02-2018'),
			  ('115', '4009', '69375081', '11-15-2017', '12-15-2017'),
			  ('115', '4006', '82728280', '12-02-2017', '01-02-2018'),
		('116', '4009', '91011785', '12-21-2017', '01-21-2018'),
		  ('117', '4006', '44284173', '12-02-2017', '01-02-2018'),
		  ('117', '4009', '91011785', '12-21-2017', '01-21-2018'),
		    ('118', '4006', '44284173', '12-02-2017', '01-02-2018'),
			('118', '4009', '91011785', '12-21-2017', '01-21-2018'),
			  ('119', '4003', '27812077', '11-17-2017', '12-17-2017'),
		('120', '4003', '69499254', '12-01-2017', '01-01-2018'),
		('120', '4009', '24428807', '11-23-2017', '12-23-2017'),
		('120', '4000', '27812077', '11-27-2017', '12-27-2017'),
		  ('121', '4003', '69499254', '12-01-2017', '01-01-2018'),
		  ('121', '4009', '24428807', '11-23-2017', '12-23-2017'),
		  ('121', '4000', '69375081', '12-27-2017', '01-27-2018'),
		('99', '3997', '85023717', 'X', 'X')
;

SELECT * FROM loans

/*.....................STORED PROCEDURES.......................*/

CREATE PROC dbo.usplosttribe1
	AS
	SELECT book_id, branch_id, no_of_copies
	FROM book_copies
	WHERE book_id LIKE '100' AND
		  branch_id = '4003' AND
		  no_of_copies LIKE '%'	 
GO

EXEC dbo.usplosttribe1

CREATE PROC dbo.usplosttribe2
	AS 
	SELECT book_id, branch_id, no_of_copies
	FROM book_copies
	WHERE book_id LIKE '100' AND
	      branch_id LIKE '%' AND
		  no_of_copies LIKE '%'
GO

EXEC dbo.usplosttribe2

CREATE PROC dbo.uspnobooks
	AS
	SELECT card_no, book_id
	FROM loans
	WHERE card_no LIKE '%' AND
		  book_id = '99'
GO

EXEC dbo.uspnobooks

CREATE TABLE due_books (
	due_booktitle VARCHAR(900) NOT NULL CONSTRAINT UQ_tbl_book_book_title FOREIGN KEY REFERENCES book(book_title) ON UPDATE CASCADE ON DELETE CASCADE,
	due_fullname NVARCHAR(50) NOT NULL CONSTRAINT due_full_name FOREIGN KEY REFERENCES borrower(full_name) ON UPDATE CASCADE ON DELETE CASCADE,
	due_addr NVARCHAR(100) NOT NULL CONSTRAINT due_brw_addr FOREIGN KEY REFERENCES borrower(brw_addr) ON UPDATE NO ACTION ON DELETE NO ACTION,
	due_branch_ID INT NOT NULL CONSTRAINT due_branchID FOREIGN KEY REFERENCES branch(branch_ID) ON UPDATE CASCADE ON DELETE CASCADE,
	due_DATE_DUE NVARCHAR(10) NOT NULL
);

INSERT INTO due_books
	(due_booktitle, due_fullname, due_addr, due_branch_ID, due_datedue)
	VALUES


CREATE PROC dbo.uspsharpstown_duebooks
	AS
	SELECT due_booktitle, due_fullNAME, due_addr, due_date_due 
	FROM due_books
	WHERE due_date_due LIKE '01-02-2018' AND due_branch_ID LIKE '4003'

EXEC dbo.uspsharpstown_duebooks

SELECT * FROM loans WHERE branch_ID = '4003' AND date_due = '01-02-2018'

-------------_______________-------------

CREATE PROC dbo.uspsharpstown_duebooks1
	AS
	INSERT INTO due_books (due_bookTITLE, due_fullname, due_date_due, due_addr)
	SELECT book_title, borrower.full_name, brw_addr, loans.date_due
	FROM loans
	JOIN dbo.book ON book.book_title = book.book_title
	JOIN dbo.borrower ON borrower.full_name = borrower.full_name
GO

SELECT * FROM due_books1
