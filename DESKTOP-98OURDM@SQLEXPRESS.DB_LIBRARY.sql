/*=============================================================
SCRIPT HEADER

VERSION:   1.01.0001
DATE:      03-04-2018 16:02:57
SERVER:    DESKTOP-98OURDM\SQLEXPRESS

DATABASE:	DB_LIBRARY
	Procedures:
		usp_SteKin, usplosttribe1, usplosttribe2, uspnobooks, uspsharpstown_duebooks_plus5
		usptotalbooks
	Schemas:
		db_accessadmin, db_backupoperator, db_datareader, db_datawriter
		db_ddladmin, db_denydatareader, db_denydatawriter, db_owner, db_securityadmin
		dbo, guest, INFORMATION_SCHEMA, sys
	Tables:
		author, book, book_copies, borrower, branch, loans, losttribe1
		publisher_info


=============================================================*/
SET ANSI_WARNINGS ON
SET XACT_ABORT ON
SET ARITHABORT ON
SET NOCOUNT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
GO
-- BEGINNING TRANSACTION STRUCTURE
PRINT 'Beginning transaction STRUCTURE'
BEGIN TRANSACTION _STRUCTURE_
GO
-- Create Schema [db_datawriter]
Print 'Create Schema [db_datawriter]'
GO
ALTER AUTHORIZATION
	ON SCHEMA::[db_datawriter]
	TO [db_datawriter]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Schema [db_datareader]
Print 'Create Schema [db_datareader]'
GO
ALTER AUTHORIZATION
	ON SCHEMA::[db_datareader]
	TO [db_datareader]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Schema [db_owner]
Print 'Create Schema [db_owner]'
GO
ALTER AUTHORIZATION
	ON SCHEMA::[db_owner]
	TO [db_owner]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Schema [db_denydatareader]
Print 'Create Schema [db_denydatareader]'
GO
ALTER AUTHORIZATION
	ON SCHEMA::[db_denydatareader]
	TO [db_denydatareader]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Schema [db_ddladmin]
Print 'Create Schema [db_ddladmin]'
GO
ALTER AUTHORIZATION
	ON SCHEMA::[db_ddladmin]
	TO [db_ddladmin]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Schema [db_denydatawriter]
Print 'Create Schema [db_denydatawriter]'
GO
ALTER AUTHORIZATION
	ON SCHEMA::[db_denydatawriter]
	TO [db_denydatawriter]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Schema [db_securityadmin]
Print 'Create Schema [db_securityadmin]'
GO
ALTER AUTHORIZATION
	ON SCHEMA::[db_securityadmin]
	TO [db_securityadmin]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Schema [db_backupoperator]
Print 'Create Schema [db_backupoperator]'
GO
ALTER AUTHORIZATION
	ON SCHEMA::[db_backupoperator]
	TO [db_backupoperator]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Schema [db_accessadmin]
Print 'Create Schema [db_accessadmin]'
GO
ALTER AUTHORIZATION
	ON SCHEMA::[db_accessadmin]
	TO [db_accessadmin]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Table [dbo].[borrower]
Print 'Create Table [dbo].[borrower]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[borrower] (
		[card_no]       [nvarchar](8) NOT NULL,
		[full_name]     [nvarchar](50) NULL,
		[brw_addr]      [nvarchar](100) NULL,
		[brw_phone]     [nvarchar](20) NULL,
		CONSTRAINT [PK__borrower__BDF5DAFDE85A641C]
		PRIMARY KEY
		CLUSTERED
		([card_no])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[borrower] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[branch]
Print 'Create Table [dbo].[branch]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[branch] (
		[branch_id]       [int] IDENTITY(3997, 3) NOT NULL,
		[branch_name]     [nvarchar](50) NULL,
		[BR_addr]         [nvarchar](450) NULL,
		CONSTRAINT [PK__branch__E55E37DE48792FC1]
		PRIMARY KEY
		CLUSTERED
		([branch_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[branch] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[losttribe1]
Print 'Create Table [dbo].[losttribe1]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[losttribe1] (
		[branch_name]      [varchar](20) NULL,
		[book_title]       [varchar](100) NULL,
		[no_of_copies]     [varchar](2) NULL
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[losttribe1] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[publisher_info]
Print 'Create Table [dbo].[publisher_info]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[publisher_info] (
		[pub_name]      [varchar](50) NOT NULL,
		[pub_add]       [varchar](450) NULL,
		[pub_phone]     [varchar](20) NULL,
		CONSTRAINT [PK__publishe__CDDBC9B6ADA137EA]
		PRIMARY KEY
		CLUSTERED
		([pub_name])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[publisher_info] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[book]
Print 'Create Table [dbo].[book]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[book] (
		[Book_ID]        [int] IDENTITY(99, 1) NOT NULL,
		[Book_Title]     [varchar](900) NOT NULL,
		[Publisher]      [varchar](50) NULL,
		CONSTRAINT [PK__book__C223F394823CA234]
		PRIMARY KEY
		CLUSTERED
		([Book_ID])
	ON [PRIMARY]
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[book] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[author]
Print 'Create Table [dbo].[author]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[author] (
		[a_book_ID]     [int] NOT NULL,
		[Author]        [nvarchar](75) NOT NULL
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[author] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[book_copies]
Print 'Create Table [dbo].[book_copies]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[book_copies] (
		[book_ID]          [int] NOT NULL,
		[branch_ID]        [int] NOT NULL,
		[no_of_copies]     [nvarchar](2) NOT NULL
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[book_copies] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Table [dbo].[loans]
Print 'Create Table [dbo].[loans]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE TABLE [dbo].[loans] (
		[l_book_ID]       [int] NOT NULL,
		[l_branch_ID]     [int] NOT NULL,
		[l_card_no]       [nvarchar](8) NOT NULL,
		[DATE_OUT]        [nvarchar](10) NOT NULL,
		[DATE_DUE]        [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
ALTER TABLE [dbo].[loans] SET (LOCK_ESCALATION = TABLE)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Procedure [dbo].[usp_SteKin]
Print 'Create Procedure [dbo].[usp_SteKin]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE PROC dbo.usp_SteKin
	AS
		SELECT book.book_title, book_copies.no_of_copies
		FROM book, book_copies, author, branch		
			  WHERE
			  book.book_ID = book_copies.book_ID 
			  AND book_copies.book_ID = author.a_book_id 
			  AND book_copies.branch_ID = branch.branch_ID
			  AND author.author = 'STEPHEN KING'
			  AND branch.branch_name = 'Central'
			  group by book.book_Title, book_copies.no_of_copies

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[usplosttribe1]
Print 'Create Procedure [dbo].[usplosttribe1]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE PROC dbo.usplosttribe1
	AS
	SELECT book_id, branch_id, no_of_copies
	FROM book_copies
	WHERE book_id LIKE '100' AND
		  branch_id = '4003' AND
		  no_of_copies LIKE '%'	 
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[usplosttribe2]
Print 'Create Procedure [dbo].[usplosttribe2]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE PROC dbo.usplosttribe2
	AS 
	SELECT book_id, branch_id, no_of_copies
	FROM book_copies
	WHERE book_id LIKE '100' AND
	      branch_id LIKE '%' AND
		  no_of_copies LIKE '%'
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[uspnobooks]
Print 'Create Procedure [dbo].[uspnobooks]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE PROC dbo.uspnobooks
	AS
	SELECT full_name
	FROM borrower 
	WHERE card_no not in(select l_card_no from loans)
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[uspsharpstown_duebooks_plus5]
Print 'Create Procedure [dbo].[uspsharpstown_duebooks_plus5]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE PROC dbo.uspsharpstown_duebooks_plus5
	AS
		SELECT borrower.full_NAME, borrower.brw_addr, count(loans.l_card_no) AS total
		FROM borrower, loans		
			  WHERE
			  borrower.card_no = loans.l_card_no
			  group by borrower.full_NAME, borrower.brw_addr
			  having count(loans.l_card_no) >= '5'
			  order by borrower.full_name
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Procedure [dbo].[usptotalbooks]
Print 'Create Procedure [dbo].[usptotalbooks]'
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
CREATE PROC dbo.usptotalbooks
	AS
		SELECT 
			(SELECT branch_name 
			FROM branch 
				WHERE branch_id = loans.l_branch_id) AS branch_name, (COUNT(DATE_OUT)) AS total
		FROM loans 
		GROUP BY l_branch_id
GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key pub_name On book
Print 'Create Foreign Key pub_name On book'
GO
ALTER TABLE [dbo].[book]
	WITH CHECK
	ADD CONSTRAINT [pub_name]
	FOREIGN KEY ([Publisher]) REFERENCES [dbo].[publisher_info] ([pub_name])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [dbo].[book]
	CHECK CONSTRAINT [pub_name]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Foreign Key a_book_id On author
Print 'Create Foreign Key a_book_id On author'
GO
ALTER TABLE [dbo].[author]
	WITH CHECK
	ADD CONSTRAINT [a_book_id]
	FOREIGN KEY ([a_book_ID]) REFERENCES [dbo].[book] ([Book_ID])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [dbo].[author]
	CHECK CONSTRAINT [a_book_id]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Foreign Key book_id On book_copies
Print 'Create Foreign Key book_id On book_copies'
GO
ALTER TABLE [dbo].[book_copies]
	WITH CHECK
	ADD CONSTRAINT [book_id]
	FOREIGN KEY ([book_ID]) REFERENCES [dbo].[book] ([Book_ID])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [dbo].[book_copies]
	CHECK CONSTRAINT [book_id]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key branch_branch_ID On book_copies
Print 'Create Foreign Key branch_branch_ID On book_copies'
GO
ALTER TABLE [dbo].[book_copies]
	WITH CHECK
	ADD CONSTRAINT [branch_branch_ID]
	FOREIGN KEY ([branch_ID]) REFERENCES [dbo].[branch] ([branch_id])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [dbo].[book_copies]
	CHECK CONSTRAINT [branch_branch_ID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- Create Foreign Key l_book_ID On loans
Print 'Create Foreign Key l_book_ID On loans'
GO
ALTER TABLE [dbo].[loans]
	WITH CHECK
	ADD CONSTRAINT [l_book_ID]
	FOREIGN KEY ([l_book_ID]) REFERENCES [dbo].[book] ([Book_ID])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [dbo].[loans]
	CHECK CONSTRAINT [l_book_ID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key l_branchID On loans
Print 'Create Foreign Key l_branchID On loans'
GO
ALTER TABLE [dbo].[loans]
	WITH CHECK
	ADD CONSTRAINT [l_branchID]
	FOREIGN KEY ([l_branch_ID]) REFERENCES [dbo].[branch] ([branch_id])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [dbo].[loans]
	CHECK CONSTRAINT [l_branchID]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO
-- Create Foreign Key l_card_no On loans
Print 'Create Foreign Key l_card_no On loans'
GO
ALTER TABLE [dbo].[loans]
	WITH CHECK
	ADD CONSTRAINT [l_card_no]
	FOREIGN KEY ([l_card_no]) REFERENCES [dbo].[borrower] ([card_no])
	ON DELETE CASCADE
	ON UPDATE CASCADE
ALTER TABLE [dbo].[loans]
	CHECK CONSTRAINT [l_card_no]

GO

IF @@ERROR<>0 OR @@TRANCOUNT=0 BEGIN IF @@TRANCOUNT>0 ROLLBACK SET NOEXEC ON END
GO

-- COMMITTING TRANSACTION STRUCTURE
PRINT 'Committing transaction STRUCTURE'
IF @@TRANCOUNT>0
	COMMIT TRANSACTION _STRUCTURE_
GO

SET NOEXEC OFF
GO
-- BEGINNING TRANSACTION DATA
PRINT 'Beginning transaction DATA'
BEGIN TRANSACTION _DATA_
GO
SET NOEXEC OFF
SET IMPLICIT_TRANSACTIONS OFF
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
GO

-- Foreign Key Constraint Disable's for Table: [dbo].[book]
Print 'Foreign Key Constraint Disable''s for Table: [dbo].[book]'
ALTER TABLE [dbo].[book] NOCHECK CONSTRAINT [pub_name]

-- Foreign Key Constraint Disable's for Table: [dbo].[author]
Print 'Foreign Key Constraint Disable''s for Table: [dbo].[author]'
ALTER TABLE [dbo].[author] NOCHECK CONSTRAINT [a_book_id]

-- Foreign Key Constraint Disable's for Table: [dbo].[book_copies]
Print 'Foreign Key Constraint Disable''s for Table: [dbo].[book_copies]'
ALTER TABLE [dbo].[book_copies] NOCHECK CONSTRAINT [book_id]
ALTER TABLE [dbo].[book_copies] NOCHECK CONSTRAINT [branch_branch_ID]

-- Foreign Key Constraint Disable's for Table: [dbo].[loans]
Print 'Foreign Key Constraint Disable''s for Table: [dbo].[loans]'
ALTER TABLE [dbo].[loans] NOCHECK CONSTRAINT [l_book_ID]
ALTER TABLE [dbo].[loans] NOCHECK CONSTRAINT [l_branchID]
ALTER TABLE [dbo].[loans] NOCHECK CONSTRAINT [l_card_no]

-- Insert scripts for table: borrower
PRINT 'Inserting rows into table: borrower'
INSERT INTO [dbo].[borrower] ([card_no], [full_name], [brw_addr], [brw_phone]) VALUES (N'24428807', N'Sunderland, James', N'123 6th St. Melbourne, FL 32904', N'(251) 546-9442')
INSERT INTO [dbo].[borrower] ([card_no], [full_name], [brw_addr], [brw_phone]) VALUES (N'27812077', N'Mason, Harry', N'71 Pilgrim Avenue Chevy Chase, MD 20815', N'(630) 446-8851')
INSERT INTO [dbo].[borrower] ([card_no], [full_name], [brw_addr], [brw_phone]) VALUES (N'44284173', N'Mason, Heather', N'72 Pilgrim Avenue Chevy Chase, MD 20815', N'(630) 446-8852')
INSERT INTO [dbo].[borrower] ([card_no], [full_name], [brw_addr], [brw_phone]) VALUES (N'69375081', N'Orosco, Angela', N'44 Shirley Ave. West Chicago, IL 60185', N'(125) 546-4478')
INSERT INTO [dbo].[borrower] ([card_no], [full_name], [brw_addr], [brw_phone]) VALUES (N'69499254', N'Bennett, Cybil', N'70 Bowman St. South Windsor, CT 06074', N'(226) 906-2721')
INSERT INTO [dbo].[borrower] ([card_no], [full_name], [brw_addr], [brw_phone]) VALUES (N'71400061', N'Townshend, Harry', N'221 South Brickell Street Silver Spring, MD 20901', N'(949) 569-4371')
INSERT INTO [dbo].[borrower] ([card_no], [full_name], [brw_addr], [brw_phone]) VALUES (N'79984650', N'Smith, Vincent', N'7266 South Rose Road Bel Air, MD 21014', N'(671) 925-1352')
INSERT INTO [dbo].[borrower] ([card_no], [full_name], [brw_addr], [brw_phone]) VALUES (N'82728280', N'Sullivan, Walter', N'7287 Wild Horse Drive Allen Park, MI 48101', N'(694) 670-6790')
INSERT INTO [dbo].[borrower] ([card_no], [full_name], [brw_addr], [brw_phone]) VALUES (N'85023717', N'Garland, Lisa', N'69 N. Lancaster Rd. Brick, NJ 08723', N'(938) 251-3974')
INSERT INTO [dbo].[borrower] ([card_no], [full_name], [brw_addr], [brw_phone]) VALUES (N'91011785', N'Wolf, Claudia', N'35 North Santa Clara St. Mountain View, CA 94043', N'(488) 772-2290')
GO

-- Insert scripts for table: branch
PRINT 'Inserting rows into table: branch'
SET IDENTITY_INSERT [dbo].[branch] ON

INSERT INTO [dbo].[branch] ([branch_id], [branch_name], [BR_addr]) VALUES (4000, N'The Mall Library Connection', N'8700 NE Vancouver Mall Drive Suite 285 Vancouver, WA 98662')
INSERT INTO [dbo].[branch] ([branch_id], [branch_name], [BR_addr]) VALUES (4003, N'Sharpstown', N'901 C Street Vancouver, WA 98660')
INSERT INTO [dbo].[branch] ([branch_id], [branch_name], [BR_addr]) VALUES (4006, N'Central', N'800-C NE Tenney Road Vancouver, WA 98685')
INSERT INTO [dbo].[branch] ([branch_id], [branch_name], [BR_addr]) VALUES (4009, N'Fort Vancouver Regional Library and HQ', N'1007 E Mill Plain Blvd. Vancouver, WA 98663')
GO

SET IDENTITY_INSERT [dbo].[branch] OFF

-- Insert scripts for table: losttribe1
PRINT 'Inserting rows into table: losttribe1'
INSERT INTO [dbo].[losttribe1] ([branch_name], [book_title], [no_of_copies]) VALUES (N'Sharpstown', N'A Lost Tribe', N'3')
GO

-- Insert scripts for table: publisher_info
PRINT 'Inserting rows into table: publisher_info'
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Anchor', N'1745 Broadway, 20th Floor New York, NY 10019', N'1-(212)-572-2882')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Applause Books', N'1744 Broadway, 20th Floor New York, NY 10019', N'1-(212)-572-2884')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Fawcett', N'1745 Broadway, New York, NY 10019', N'1-(212)-782-9000')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Flame Tree Publishing', N'6 Melbray Mews London SW6 3NS United Kingdom', N'020 7751 9650')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Harper-Collins', N'HarperCollins Publishers 195 Broadway New York, NY 10007', N'1-(212)-207-7000')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Jack Stanley', N'310 SW 4th Ave Suite 412 Portland, OR 97204', N'1-(503)-206-6915')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Jimmy Patterson', N'James Patterson c/o Author Mail Hachette Book Group USA 1290 Avenue of the Americas New York, NY 10104', N'1-800-759-0190')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'McFarland Publishing', N'960 NC-88, Jefferson, NC 28640', N'1-336-246-4460')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Picador', N'Picador Attn: Permissions Manager 175 Fifth Avenue New York, NY 10010', N'44-0207-014-6000')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Pocket Books', N'1230 Avenue of the Americas, Rockefeller Center, New York City, New York', N'1-(800)-223-2336')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Quirk Books', N'215 Church Street Philadelphia, PA 19106', N'1-(215)-627-3581 ')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Random House Value Publishing', N'1745 Broadway New York, NY 10019', N'1-(212)-782-9001')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Scribner', N'1230 Avenue of the Americas New York New York 10020', N'1-(212)-698-7000')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Sky Books', N'Unavailable', N'Unavailable')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Tauris Parke Paperbacks', N'6 Salem Road, London, W2 4BU, UK', N'44-(0)20-7243-1225')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'The Lilliput Press Ltd.', N'62-63 Sitric Road, Arbour Hill, Dublin 7, Ireland', N'353-01-671-1647')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'Wiley-Blackwell', N'10475 Crosspoint Blvd. Indianapolis, IN 46256', N'1-(877)-762-2974')
INSERT INTO [dbo].[publisher_info] ([pub_name], [pub_add], [pub_phone]) VALUES (N'William Morrow Paperbacks', N'195 Broadway New York, NY 10007', N'1-800-242-7737')
GO

-- Insert scripts for table: book
PRINT 'Inserting rows into table: book'
SET IDENTITY_INSERT [dbo].[book] ON

INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (100, N'A Lost Tribe', N'The Lilliput Press Ltd.')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (101, N'The Art of Horror Movies: An Illustrated History', N'Applause Books')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (102, N'Symbolism: A Comprehensive Dictionary', N'McFarland Publishing')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (103, N'On Writing: A Memoir of the Craft', N'Scribner')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (104, N'Marie Antoinette: The Journey', N'Anchor')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (105, N'The Queen of Fashion: What Marie Antoinette Wore to the Revolution', N'Picador')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (106, N'Pet Semetary', N'Pocket Books')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (107, N'Sex With Kings: 500 Years of Adultery, Power, Rivalry and Revenge', N'William Morrow Paperbacks')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (108, N'Sex With the Queen: 900 Years of Vile Kings, Virile Lovers and Passionate Politics', N'William Morrow Paperbacks')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (109, N'Madame Du Barry: The Wages of Beauty', N'Tauris Parke Paperbacks')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (110, N'Lady Godiva: A literary History of the Legend', N'Wiley-Blackwell')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (111, N'Madame Tussaud: A Life in Wax', N'Harper-Collins')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (112, N'Miss Peregrine''s Home for Peculiar Children', N'Quirk Books')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (113, N'Library of Souls: The Third Novel of Miss Peregrine''s Peculiar Children', N'Quirk Books')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (114, N'Hollow City:The Second Novel of Miss Peregine''s Peculiar Children', N'Quirk Books')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (115, N'Maximum Ride: The Angel Experiment', N'Jimmy Patterson')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (116, N'Alphonse Mucha: Masterworks', N'Flame Tree Publishing')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (117, N'Erte'': Art Deco Master of Graphic Art and Illustration (MasterWorks)', N'Flame Tree Publishing')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (118, N'Collected Drawings of Aubrey Beardsley', N'Random House Value Publishing')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (119, N'Technology Basics Dictionary: Tech and Computers Simplified', N'Jack Stanley')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (120, N'The Montauk Project: Experiments in Time', N'Sky Books')
INSERT INTO [dbo].[book] ([Book_ID], [Book_Title], [Publisher]) VALUES (121, N'The Philadelphia Experiment: Project Invisibility: The Startling Account of a Ship that Vanished and Returned to Damn Those Who Knew Why', N'Fawcett')
GO

SET IDENTITY_INSERT [dbo].[book] OFF

-- Insert scripts for table: author
PRINT 'Inserting rows into table: author'
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (100, N'William King')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (101, N'Stephen Jones')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (102, N'Steven Olderr')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (103, N'Stephen King')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (106, N'Stephen King')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (104, N'Antonia Fraser')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (105, N'Caroline Weber')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (107, N'Eleanor Herman')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (108, N'Eleanor Herman')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (109, N'Joan Haslip')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (110, N'Daniel Donoghue')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (111, N'Kate Berridge')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (112, N'Ransom Riggs')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (113, N'Ransom Riggs')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (114, N'Ransom Riggs')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (115, N'James Patterson')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (116, N'Rosalind Ormiston')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (117, N'Rosalind Ormiston')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (117, N'Ray Perman')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (118, N'Bruce S. Harris')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (118, N'Arthur Symons')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (119, N'Jack C. Stanley')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (119, N'Erik D. Gross')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (120, N'William Moore')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (120, N'Charles Berlitz')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (121, N'Preston B. Nichols')
INSERT INTO [dbo].[author] ([a_book_ID], [Author]) VALUES (121, N'Peter Moon')
GO

-- Insert scripts for table: book_copies
PRINT 'Inserting rows into table: book_copies'
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (100, 4000, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (100, 4003, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (100, 4006, N'7')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (100, 4009, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (101, 4000, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (101, 4003, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (101, 4006, N'4')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (101, 4009, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (102, 4000, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (102, 4003, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (102, 4006, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (102, 4009, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (103, 4000, N'10')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (103, 4003, N'9')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (103, 4006, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (103, 4009, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (104, 4000, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (104, 4003, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (104, 4006, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (104, 4009, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (105, 4000, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (105, 4003, N'6')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (105, 4006, N'0')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (105, 4009, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (106, 4000, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (106, 4003, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (106, 4006, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (106, 4009, N'0')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (107, 4000, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (107, 4003, N'0')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (107, 4006, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (107, 4009, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (108, 4000, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (108, 4003, N'6')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (108, 4006, N'0')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (108, 4009, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (109, 4000, N'11')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (109, 4003, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (109, 4006, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (109, 4009, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (110, 4000, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (110, 4003, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (110, 4006, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (110, 4009, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (111, 4000, N'10')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (111, 4003, N'0')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (111, 4006, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (111, 4009, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (112, 4000, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (112, 4003, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (112, 4006, N'10')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (112, 4009, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (113, 4000, N'0')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (113, 4003, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (113, 4006, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (113, 4009, N'8')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (114, 4000, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (114, 4003, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (114, 4006, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (114, 4009, N'7')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (115, 4000, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (115, 4003, N'0')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (115, 4006, N'7')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (115, 4009, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (116, 4000, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (116, 4003, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (116, 4006, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (116, 4009, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (117, 4000, N'7')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (117, 4003, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (117, 4006, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (117, 4009, N'4')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (118, 4000, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (118, 4003, N'4')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (118, 4006, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (118, 4009, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (119, 4000, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (119, 4003, N'7')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (119, 4006, N'0')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (119, 4009, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (120, 4000, N'0')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (120, 4003, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (120, 4006, N'6')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (120, 4009, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (121, 4000, N'3')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (121, 4003, N'2')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (121, 4006, N'5')
INSERT INTO [dbo].[book_copies] ([book_ID], [branch_ID], [no_of_copies]) VALUES (121, 4009, N'0')
GO

-- Insert scripts for table: loans
PRINT 'Inserting rows into table: loans'
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (100, 4003, N'69499254', N'12-01-2017', N'01-01-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (100, 4006, N'44284173', N'12-02-2017', N'01-02-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (100, 4003, N'27812077', N'11-17-2017', N'12-17-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (100, 4009, N'69375081', N'11-15-2017', N'12-15-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (101, 4009, N'24428807', N'11-23-2017', N'12-23-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (101, 4003, N'27812077', N'11-17-2017', N'12-17-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (102, 4009, N'24428807', N'11-23-2017', N'12-23-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (102, 4000, N'69375081', N'12-27-2017', N'01-27-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (103, 4009, N'79984650', N'11-15-2017', N'12-15-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (103, 4000, N'69375081', N'12-27-2017', N'01-27-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (104, 4009, N'24428807', N'11-23-2017', N'12-23-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (104, 4000, N'71400061', N'11-17-2017', N'12-17-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (104, 4006, N'91011785', N'12-30-2017', N'01-30-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (105, 4003, N'69499254', N'12-01-2017', N'01-01-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (105, 4000, N'71400061', N'11-17-2017', N'12-17-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (105, 4006, N'91011785', N'12-30-2017', N'01-30-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (106, 4000, N'27812077', N'11-27-2017', N'12-27-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (106, 4006, N'82728280', N'12-02-2017', N'01-02-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (107, 4000, N'71400061', N'11-17-2017', N'12-17-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (107, 4000, N'69375081', N'12-27-2017', N'01-27-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (108, 4000, N'71400061', N'11-17-2017', N'12-17-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (108, 4000, N'69375081', N'12-27-2017', N'01-27-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (109, 4000, N'71400061', N'11-17-2017', N'12-17-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (110, 4003, N'69499254', N'12-01-2017', N'01-01-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (110, 4000, N'71400061', N'11-17-2017', N'12-17-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (110, 4006, N'91011785', N'12-30-2017', N'01-30-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (110, 4009, N'69375081', N'11-15-2017', N'12-15-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (111, 4003, N'69499254', N'12-01-2017', N'01-01-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (111, 4000, N'71400061', N'11-17-2017', N'12-17-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (111, 4006, N'91011785', N'12-30-2017', N'01-30-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (111, 4006, N'69375081', N'12-12-2017', N'01-12-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (112, 4003, N'79984650', N'12-02-2017', N'01-02-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (112, 4006, N'82728280', N'12-02-2017', N'01-02-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (113, 4003, N'79984650', N'12-02-2017', N'01-02-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (113, 4006, N'82728280', N'12-02-2017', N'01-02-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (114, 4009, N'79984650', N'11-15-2017', N'12-15-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (114, 4006, N'82728280', N'12-02-2017', N'01-02-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (115, 4003, N'79984650', N'12-02-2017', N'01-02-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (115, 4009, N'69375081', N'11-15-2017', N'12-15-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (115, 4006, N'82728280', N'12-02-2017', N'01-02-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (116, 4009, N'91011785', N'12-21-2017', N'01-21-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (117, 4006, N'44284173', N'12-02-2017', N'01-02-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (117, 4009, N'91011785', N'12-21-2017', N'01-21-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (118, 4006, N'44284173', N'12-02-2017', N'01-02-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (118, 4009, N'91011785', N'12-21-2017', N'01-21-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (119, 4003, N'27812077', N'11-17-2017', N'12-17-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (120, 4003, N'69499254', N'12-01-2017', N'01-01-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (120, 4009, N'24428807', N'11-23-2017', N'12-23-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (120, 4000, N'27812077', N'11-27-2017', N'12-27-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (121, 4003, N'69499254', N'12-01-2017', N'01-01-2018')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (121, 4009, N'24428807', N'11-23-2017', N'12-23-2017')
INSERT INTO [dbo].[loans] ([l_book_ID], [l_branch_ID], [l_card_no], [DATE_OUT], [DATE_DUE]) VALUES (121, 4000, N'69375081', N'12-27-2017', N'01-27-2018')
GO

-- Foreign Key Constraint Enable's for Table: [dbo].[book]
Print 'Foreign Key Constraint Enable''s for Table: [dbo].[book]'
ALTER TABLE [dbo].[book] CHECK CONSTRAINT [pub_name]

-- Foreign Key Constraint Enable's for Table: [dbo].[author]
Print 'Foreign Key Constraint Enable''s for Table: [dbo].[author]'
ALTER TABLE [dbo].[author] CHECK CONSTRAINT [a_book_id]

-- Foreign Key Constraint Enable's for Table: [dbo].[book_copies]
Print 'Foreign Key Constraint Enable''s for Table: [dbo].[book_copies]'
ALTER TABLE [dbo].[book_copies] CHECK CONSTRAINT [book_id]
ALTER TABLE [dbo].[book_copies] CHECK CONSTRAINT [branch_branch_ID]

-- Foreign Key Constraint Enable's for Table: [dbo].[loans]
Print 'Foreign Key Constraint Enable''s for Table: [dbo].[loans]'
ALTER TABLE [dbo].[loans] CHECK CONSTRAINT [l_book_ID]
ALTER TABLE [dbo].[loans] CHECK CONSTRAINT [l_branchID]
ALTER TABLE [dbo].[loans] CHECK CONSTRAINT [l_card_no]


-- COMMITTING TRANSACTION DATA
PRINT 'Committing transaction DATA'
IF @@TRANCOUNT>0
	COMMIT TRANSACTION _DATA_
GO

SET NOEXEC OFF
GO

