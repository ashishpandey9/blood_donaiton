USE [master]
GO
/****** Object:  Database [demo1]    Script Date: 09/13/2023 17:10:50 ******/
CREATE DATABASE [demo1] ON  PRIMARY 
( NAME = N'demo1', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\demo1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'demo1_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\demo1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [demo1] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [demo1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [demo1] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [demo1] SET ANSI_NULLS OFF
GO
ALTER DATABASE [demo1] SET ANSI_PADDING OFF
GO
ALTER DATABASE [demo1] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [demo1] SET ARITHABORT OFF
GO
ALTER DATABASE [demo1] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [demo1] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [demo1] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [demo1] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [demo1] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [demo1] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [demo1] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [demo1] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [demo1] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [demo1] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [demo1] SET  DISABLE_BROKER
GO
ALTER DATABASE [demo1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [demo1] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [demo1] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [demo1] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [demo1] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [demo1] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [demo1] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [demo1] SET  READ_WRITE
GO
ALTER DATABASE [demo1] SET RECOVERY SIMPLE
GO
ALTER DATABASE [demo1] SET  MULTI_USER
GO
ALTER DATABASE [demo1] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [demo1] SET DB_CHAINING OFF
GO
USE [demo1]
GO
/****** Object:  Table [dbo].[TBL_Registration]    Script Date: 09/13/2023 17:10:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_Registration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Gender] [varchar](20) NULL,
	[Email] [varchar](200) NULL,
	[Profile] [varchar](max) NULL,
	[Qualification] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
	[District] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[RegDate] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_Registration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_Registration] ON
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (1, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'Tourism.pdf', NULL, N'lucknow
', NULL, N'2023-09-14', N'07-09-2023 19:45:18')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (2, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'Tourism.pdf', NULL, N'lucknow
', NULL, N'2023-09-14', N'07-09-2023 19:46:13')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (3, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'Tourism.pdf', NULL, N'lucknow
', NULL, N'2023-09-14', N'07-09-2023 19:46:41')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (4, N'sdlfeoifafs', N'456765434567', N'Gender', N'ghjg@gmail.com', N'gym and yoga  case study.pdf', NULL, N'sdfghjgsd', NULL, N'2001-04-10', N'07-09-2023 20:07:52')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (5, N'Ashish pandey', N'54664', N'male', N'ashishpandey635383@gmail.com', N'', NULL, N'kg', NULL, N'2023-09-18', N'10-09-2023 10:38:04')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (6, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'Tourism.pdf', NULL, N'my name is ashish pandey and he is the very good boy ', NULL, N'2023-09-16', N'10-09-2023 10:39:11')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (7, N'kefe', N'9554303136', N'female', N'ashishpandey635383@gmail.com', N'Tourism.pdf', NULL, N'i am ashish psdney', NULL, N'2023-09-30', N'10-09-2023 10:40:30')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (8, N'kefe', N'9554303136', N'female', N'ashishpandey635383@gmail.com', N'Tourism.pdf', NULL, N'i am ashish psdney', NULL, N'2023-09-30', N'10-09-2023 10:40:41')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (9, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'Real Estate.pdf', NULL, N'I am ashish pandey
', NULL, N'2020-01-28', N'10-09-2023 10:42:31')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (10, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'gym and yoga  case study.pdf', NULL, N'kjh', NULL, N'2023-10-08', N'10-09-2023 10:44:10')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (11, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 10:44:27')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (12, N'Ashish pandey', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 10:45:07')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (13, N'Ashish pandey', N'955430316', N'male', N'ashishpandey635383@gmail.com', N'', NULL, N'ylufujy', NULL, N'2023-09-22', N'10-09-2023 10:45:40')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (14, N'Ashish pandey', N'955430316', N'male', N'ashishpandey635383@gmail.com', N'', NULL, N'ylufujy', NULL, N'2023-09-22', N'10-09-2023 10:46:11')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (15, N'Ashish pandey', N'955430316', N'male', N'ashishpandey635383@gmail.com', N'', NULL, N'ylufujy', NULL, N'2023-09-22', N'10-09-2023 10:46:19')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (16, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 10:46:33')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (17, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 10:50:50')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (18, N'Ashish pandey', N'9554303436', N'male', N'ashishpandey635383@gmail.com', N'online events booking.pdf', NULL, N'igyg', NULL, N'0095-02-05', N'10-09-2023 10:51:25')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (19, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'gym and yoga  case study.pdf', NULL, N'hvf', NULL, N'2023-09-13', N'10-09-2023 11:03:48')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (20, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'gym and yoga  case study.pdf', NULL, N'hvf', NULL, N'2023-09-13', N'10-09-2023 11:26:46')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (21, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'gym and yoga  case study.pdf', NULL, N'hvf', NULL, N'2023-09-13', N'10-09-2023 11:26:51')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (22, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'gym and yoga  case study.pdf', NULL, N'hvf', NULL, N'2023-09-13', N'10-09-2023 11:27:53')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (23, N'Ashish pandey', N'9554303136', NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 11:28:17')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (24, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 11:28:40')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (25, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'Real Estate.pdf', NULL, N'wkjg', NULL, N'2023-09-06', N'10-09-2023 11:31:37')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (26, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'Online Study.pdf', NULL, N'yuuty', NULL, N'2023-09-07', N'10-09-2023 11:50:09')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (27, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'Online Study.pdf', NULL, N'yuuty', NULL, N'2023-09-07', N'10-09-2023 11:51:25')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (28, N'dsvsd', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 11:51:28')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (29, N'retwet', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 11:51:38')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (30, N'dfdsfdsf', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'online events booking.pdf', NULL, N'ashishi', NULL, N'2023-09-10', N'10-09-2023 11:54:08')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (31, N'dfdsfdsf', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'online events booking.pdf', NULL, N'ashishi', NULL, N'2023-09-10', N'10-09-2023 11:55:09')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (32, N'dvdsfd', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 11:55:13')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (33, N'cscs', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 11:57:49')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (34, N'CDSSD', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 11:57:55')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (35, N'CDSSD', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 11:58:35')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (36, N'sfklf', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 11:58:38')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (37, N'Ashish pandey', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 11:58:50')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (38, N'Ashish pandey', N'6494622', N'male', N'ashishpandey635383@gmail.com', N'online events booking.pdf', NULL, N'kjiuh', NULL, N'2023-09-01', N'10-09-2023 11:59:17')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (40, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 12:30:00')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (41, N'Ashish pandey', N'9554303136', NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 12:30:08')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (42, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'Case study of E-Village.pdf', NULL, N'fdv', NULL, N'2023-09-08', N'10-09-2023 12:30:44')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (43, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'Real Estate.pdf', NULL, N'fghdfgf', NULL, N'2023-09-06', N'10-09-2023 12:32:41')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (44, N'sbak', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 13:13:30')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (45, N'sbak', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 13:14:48')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (46, N'Ashish pandey', N'955430316', N'male', N'ashishpandey635383@gmail.com', N'Online Study.pdf', NULL, N'uuigu', NULL, N'2023-09-01', N'10-09-2023 13:56:36')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (47, N'sdlfeoifafs', N'543', N'male', NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 13:58:06')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (48, N'sdlfeoifafs', N'543', N'male', NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 13:58:48')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (49, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 13:58:56')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (50, N'Ashish pandey', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 14:00:14')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (51, N'sdlfeoifafs', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 14:02:36')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (52, N'sdlfeoifafs', N'12345678', N'male', N'ashishpandey635383@gmail.com', N'carousel-1.jpg', NULL, N'123', NULL, N'2023-09-23', N'10-09-2023 14:06:06')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (54, N'Ashish pandey', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 14:11:14')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (55, N'Ashish pandey', N'955422', NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 19:25:04')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (56, N'Ashish pandey', N'955422', NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 19:25:04')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (57, N'Ashish pandey', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'10-09-2023 19:32:51')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (58, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'vendor-2.jpg', NULL, N'I am form padrauna', NULL, N'2023-09-11', N'11-09-2023 13:28:25')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (60, N'Ashish pandey', N'9554303136', N'male', N'ashishpandey635383@gmail.com', N'vendor-1.jpg', NULL, N'ekjb', NULL, N'2023-09-11', N'11-09-2023 13:44:57')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (61, N'Ashish pandey', N'5646', N'male', N'ghjg@gmail.com', N'', NULL, N'fm,g', NULL, N'2023-09-11', N'11-09-2023 20:21:30')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (63, N'bbb', NULL, NULL, NULL, N'', NULL, NULL, NULL, NULL, N'12-09-2023 17:45:47')
INSERT [dbo].[TBL_Registration] ([Id], [Name], [Mobile], [Gender], [Email], [Profile], [Qualification], [Address], [District], [DOB], [RegDate]) VALUES (69, N'b', N'9554303136', N'male', N'e@gmail.com', N'vendor-2.jpg', N'diploma', N'tfgf', N'c', N'2023-09-13', N'13-09-2023 10:40:11')
SET IDENTITY_INSERT [dbo].[TBL_Registration] OFF
/****** Object:  Table [dbo].[TBL_Login]    Script Date: 09/13/2023 17:10:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_Login](
	[Email] [varchar](200) NOT NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_Login_1] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TBL_Login] ([Email], [Password]) VALUES (N'admin@gmail.com', N'abc')
/****** Object:  Table [dbo].[TBL_Contact]    Script Date: 09/13/2023 17:10:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](200) NULL,
	[MSG] [varchar](300) NULL,
	[Contactdate] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_Contact] ON
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (1, N'Ashish pandey', N'grtert', N'rtyuio', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (2, N'sdlfeoifafs', N'ashishpandey635383@gmail.com', N'd''', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (3, N'sdlfeoifafs', N'ashishpandey635383@gmail.com', N'dfgk;''
', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (4, NULL, NULL, NULL, NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (5, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'wertw', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (6, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'wertw', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (7, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'wertw', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (8, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'wertw', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (9, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'wertw', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (10, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'wertw', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (11, N'sdlfeoifafs', N'ashishpandey635383@gmail.com', N'dfgk;''
', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (12, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'wertw', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (13, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'wertw', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (14, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'wertw', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (15, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'wertw', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (16, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'wertw', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (17, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'wertw', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (18, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'hfhdfvgdfg', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (19, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'bibligbkjb', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (20, N'mv,jh', NULL, NULL, NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (21, N'Ashish pandey', NULL, NULL, NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (22, N'Ashish pandey', NULL, NULL, NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (23, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'gs', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (24, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'gs', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (25, N'Ashish pandey', N'ashishpandey635383@gmail.com', N'gs', NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (26, NULL, NULL, NULL, NULL)
INSERT [dbo].[TBL_Contact] ([Id], [Name], [Email], [MSG], [Contactdate]) VALUES (27, N'Ashish pandey', N'sdf@gmail.com', N'grfdgdf', NULL)
SET IDENTITY_INSERT [dbo].[TBL_Contact] OFF
