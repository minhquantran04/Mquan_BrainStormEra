USE [master]
GO
/****** Object:  Database [SWP_MAIN]    Script Date: 30-Dec-24 9:53:10 AM ******/
CREATE DATABASE [SWP_MAIN]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP_MAIN', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SWP_MAIN.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP_MAIN_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SWP_MAIN_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SWP_MAIN] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP_MAIN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP_MAIN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP_MAIN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP_MAIN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP_MAIN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP_MAIN] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP_MAIN] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SWP_MAIN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP_MAIN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP_MAIN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP_MAIN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP_MAIN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP_MAIN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP_MAIN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP_MAIN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP_MAIN] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SWP_MAIN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP_MAIN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP_MAIN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP_MAIN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP_MAIN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP_MAIN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP_MAIN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP_MAIN] SET RECOVERY FULL 
GO
ALTER DATABASE [SWP_MAIN] SET  MULTI_USER 
GO
ALTER DATABASE [SWP_MAIN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP_MAIN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP_MAIN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP_MAIN] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP_MAIN] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP_MAIN] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SWP_MAIN', N'ON'
GO
ALTER DATABASE [SWP_MAIN] SET QUERY_STORE = ON
GO
ALTER DATABASE [SWP_MAIN] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SWP_MAIN]
GO
/****** Object:  Table [dbo].[account]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[user_id] [varchar](255) NOT NULL,
	[user_role] [int] NULL,
	[username] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[user_email] [varchar](255) NOT NULL,
	[full_name] [nvarchar](255) NULL,
	[payment_point] [decimal](10, 2) NULL,
	[date_of_birth] [date] NULL,
	[gender] [varchar](6) NULL,
	[phone_number] [varchar](15) NULL,
	[user_address] [nvarchar](max) NULL,
	[user_picture] [nvarchar](max) NULL,
	[account_created_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[achievement]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[achievement](
	[achievement_id] [varchar](255) NOT NULL,
	[achievement_name] [nvarchar](255) NOT NULL,
	[achievement_description] [nvarchar](max) NULL,
	[achievement_icon] [varchar](255) NULL,
	[achievement_created_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[achievement_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chapter]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chapter](
	[chapter_id] [varchar](255) NOT NULL,
	[course_id] [varchar](255) NULL,
	[chapter_name] [nvarchar](255) NOT NULL,
	[chapter_description] [nvarchar](max) NULL,
	[chapter_order] [int] NULL,
	[chapter_status] [int] NULL,
	[chapter_created_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[chapter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chatbot_conversation]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chatbot_conversation](
	[conversation_id] [varchar](255) NOT NULL,
	[user_id] [varchar](255) NULL,
	[conversation_time] [datetime] NOT NULL,
	[conversation_content] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[conversation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course](
	[course_id] [varchar](255) NOT NULL,
	[course_name] [nvarchar](255) NOT NULL,
	[course_description] [nvarchar](max) NULL,
	[course_status] [int] NULL,
	[course_picture] [varchar](255) NULL,
	[price] [decimal](10, 2) NOT NULL,
	[course_created_at] [datetime] NOT NULL,
	[created_by] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[course_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course_category]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course_category](
	[course_category_id] [varchar](255) NOT NULL,
	[course_category_name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[course_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[course_category_mapping]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[course_category_mapping](
	[course_id] [varchar](255) NOT NULL,
	[course_category_id] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[course_id] ASC,
	[course_category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enrollment]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enrollment](
	[enrollment_id] [varchar](255) NOT NULL,
	[user_id] [varchar](255) NULL,
	[course_id] [varchar](255) NULL,
	[enrollment_status] [int] NULL,
	[approved] [bit] NULL,
	[certificate_issued_date] [date] NULL,
	[enrollment_created_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[enrollment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[feedback_id] [varchar](255) NOT NULL,
	[course_id] [varchar](255) NULL,
	[user_id] [varchar](255) NULL,
	[star_rating] [tinyint] NULL,
	[comment] [nvarchar](max) NULL,
	[feedback_date] [date] NOT NULL,
	[hidden_status] [bit] NULL,
	[feedback_created_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lesson]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lesson](
	[lesson_id] [varchar](255) NOT NULL,
	[chapter_id] [varchar](255) NULL,
	[lesson_name] [nvarchar](255) NOT NULL,
	[lesson_description] [nvarchar](max) NULL,
	[lesson_content] [nvarchar](max) NOT NULL,
	[lesson_order] [int] NOT NULL,
	[lesson_type_id] [int] NULL,
	[lesson_status] [int] NULL,
	[lesson_created_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[lesson_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lesson_completion]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lesson_completion](
	[completion_id] [varchar](255) NOT NULL,
	[user_id] [varchar](255) NULL,
	[lesson_id] [varchar](255) NULL,
	[completion_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[completion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lesson_type]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lesson_type](
	[lesson_type_id] [int] NOT NULL,
	[lesson_type_name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[lesson_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notification]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notification](
	[notification_id] [varchar](255) NOT NULL,
	[user_id] [varchar](255) NULL,
	[course_id] [varchar](255) NULL,
	[notification_title] [nvarchar](255) NOT NULL,
	[notification_content] [nvarchar](max) NOT NULL,
	[notification_type] [varchar](50) NULL,
	[notification_created_at] [datetime] NOT NULL,
	[created_by] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[notification_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment](
	[payment_id] [varchar](255) NOT NULL,
	[user_id] [varchar](255) NULL,
	[payment_description] [nvarchar](255) NULL,
	[amount] [decimal](10, 2) NULL,
	[points_earned] [int] NULL,
	[payment_status] [varchar](50) NULL,
	[payment_date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[user_role] [int] NOT NULL,
	[role_name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[status_id] [int] NOT NULL,
	[status_description] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_achievement]    Script Date: 30-Dec-24 9:53:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_achievement](
	[user_id] [varchar](255) NOT NULL,
	[achievement_id] [varchar](255) NOT NULL,
	[received_date] [date] NOT NULL,
	[enrollment_id] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[achievement_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'AD001', 1, N'admin1', N'E00CF25AD42683B3DF678C61F42C6BDA', N'admin1@example.com', N'Phat', CAST(9999999.00 AS Decimal(10, 2)), CAST(N'2004-01-01' AS Date), N'male', N'1234567890', N'123 Admin Street', NULL, CAST(N'2024-11-21T20:44:49.373' AS DateTime))
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'AD002', 1, N'admin2', N'C84258E9C39059A89AB77D846DDAB909', N'admin2@example.com', N'ĐNhan', CAST(9999999.00 AS Decimal(10, 2)), CAST(N'2004-01-01' AS Date), N'female', N'1234567890', N'123 Admin Street', NULL, CAST(N'2024-11-21T20:44:49.373' AS DateTime))
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'AD003', 1, N'admin3', N'32CACB2F994F6B42183A1300D9A3E8D6', N'admin3@example.com', N'HNhan', CAST(9999999.00 AS Decimal(10, 2)), CAST(N'2004-01-01' AS Date), N'female', N'1234567890', N'123 Admin Street', NULL, CAST(N'2024-11-21T20:44:49.373' AS DateTime))
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'AD004', 1, N'admin4', N'FC1EBC848E31E0A68E868432225E3C82', N'admin4@example.com', N'Khang', CAST(9999999.00 AS Decimal(10, 2)), CAST(N'2004-01-01' AS Date), N'male', N'1234567890', N'123 Admin Street', NULL, CAST(N'2024-11-21T20:44:49.373' AS DateTime))
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'AD005', 1, N'admin5', N'26A91342190D515231D7238B0C5438E1', N'admin5@example.com', N'Quan', CAST(9999999.00 AS Decimal(10, 2)), CAST(N'2004-01-01' AS Date), N'male', N'1234567890', N'123 Admin Street', NULL, CAST(N'2024-11-21T20:44:49.373' AS DateTime))
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'AD006', 1, N'admin6', N'C6B853D6A7CC7EC49172937F68F446C8', N'admin6@example.com', N'Phuc', CAST(9999999.00 AS Decimal(10, 2)), CAST(N'2004-01-01' AS Date), N'male', N'1234567890', N'123 Admin Street', NULL, CAST(N'2024-11-21T20:44:49.373' AS DateTime))
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'IN001', 2, N'instructor1', N'B4CD29F38B87EFCE1490B0755785E237', N'instructor1@example.com', N'Phat', CAST(9999999.00 AS Decimal(10, 2)), CAST(N'2004-01-01' AS Date), N'Male', N'0907450814', N'456 Instructor Ave', N'/uploads/User-img/Screenshot 2024-11-05 175317.png', CAST(N'2024-11-21T20:44:49.373' AS DateTime))
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'IN002', 2, N'instructor2', N'1B19B1098AFF7A9AFDBC29C3A980C15B', N'instructor2@example.com', N'ĐNhan', CAST(9999999.00 AS Decimal(10, 2)), CAST(N'2004-01-01' AS Date), N'female', N'1234567890', N'456 Instructor Ave', NULL, CAST(N'2024-11-21T20:44:49.373' AS DateTime))
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'IN003', 2, N'instructor3', N'2381E6B52CDB508D7D92CF76CE04D3DF', N'instructor3@example.com', N'HNhan', CAST(9999999.00 AS Decimal(10, 2)), CAST(N'2004-01-01' AS Date), N'female', N'1234567890', N'456 Instructor Ave', NULL, CAST(N'2024-11-21T20:44:49.373' AS DateTime))
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'IN004', 2, N'instructor4', N'28D6657B769C1EE1C325F20604138CE6', N'instructor4@example.com', N'Khang', CAST(9999999.00 AS Decimal(10, 2)), CAST(N'2004-01-01' AS Date), N'male', N'1234567890', N'456 Instructor Ave', NULL, CAST(N'2024-11-21T20:44:49.373' AS DateTime))
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'IN005', 2, N'instructor5', N'A014BAE5CC89CCE09A0C8DB717DBB84F', N'instructor5@example.com', N'Quan', CAST(9999999.00 AS Decimal(10, 2)), CAST(N'2004-01-01' AS Date), N'male', N'1234567890', N'456 Instructor Ave', NULL, CAST(N'2024-11-21T20:44:49.373' AS DateTime))
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'IN006', 2, N'instructor6', N'EC6530EB05FBEB34F9AA81851A7F7382', N'instructor6@example.com', N'Phuc', CAST(9999999.00 AS Decimal(10, 2)), CAST(N'2004-01-01' AS Date), N'male', N'1234567890', N'456 Instructor Ave', NULL, CAST(N'2024-11-21T20:44:49.373' AS DateTime))
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'LN001', 3, N'learner', N'C0A24B98E089B6B0F5D3674430CEBE0C', N'student@example.com', N'Thùy Dương', CAST(1760000.00 AS Decimal(10, 2)), CAST(N'2005-10-10' AS Date), N'Female', N'0399483776', N'Kế Sách', N'/uploads/User-img/z6056802688516_99dd6c5898f5328e67f3a5b3426d1ad6.jpg', CAST(N'2024-11-21T20:44:49.373' AS DateTime))
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'LN002', 3, N'learner-test', N'C0A24B98E089B6B0F5D3674430CEBE0C', N'quantmce181985@fpt.edu.vn', N'Minh Quan', CAST(250000.00 AS Decimal(10, 2)), CAST(N'2004-01-25' AS Date), N'Male', N'0916764937', N'Can Tho', N'/uploads/User-img/logo1.png', CAST(N'2024-11-21T20:44:49.373' AS DateTime))
INSERT [dbo].[account] ([user_id], [user_role], [username], [password], [user_email], [full_name], [payment_point], [date_of_birth], [gender], [phone_number], [user_address], [user_picture], [account_created_at]) VALUES (N'LN003', 3, N'quantm', N'E10ADC3949BA59ABBE56E057F20F883E', N'quantm@gmail.com', N'UserLN003', CAST(0.00 AS Decimal(10, 2)), NULL, NULL, NULL, NULL, N'/uploads/User-img/default_user.png', CAST(N'2024-11-22T02:21:25.033' AS DateTime))
GO
INSERT [dbo].[achievement] ([achievement_id], [achievement_name], [achievement_description], [achievement_icon], [achievement_created_at]) VALUES (N'A001', N'Complete first course', N'1', N'/uploads/Achievement/achi_streak_1.png', CAST(N'2024-11-22T00:00:00.000' AS DateTime))
INSERT [dbo].[achievement] ([achievement_id], [achievement_name], [achievement_description], [achievement_icon], [achievement_created_at]) VALUES (N'A002', N'Complete 5 courses', N'5', N'/uploads/Achievement/streak_5.png', CAST(N'2024-11-22T00:00:00.000' AS DateTime))
INSERT [dbo].[achievement] ([achievement_id], [achievement_name], [achievement_description], [achievement_icon], [achievement_created_at]) VALUES (N'A003', N'Complete 10 courses', N'10', N'/uploads/Achievement/streak_10.png', CAST(N'2024-11-22T00:00:00.000' AS DateTime))
INSERT [dbo].[achievement] ([achievement_id], [achievement_name], [achievement_description], [achievement_icon], [achievement_created_at]) VALUES (N'A004', N'Complete  20 courses', N'20', N'/uploads/Achievement/streak_20.png', CAST(N'2024-11-22T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[chapter] ([chapter_id], [course_id], [chapter_name], [chapter_description], [chapter_order], [chapter_status], [chapter_created_at]) VALUES (N'CH001', N'CO001', N'Introduction to AI', N'This chapter serves as the gateway to the exciting field of Artificial Intelligence. It explains the core principles of AI, traces its historical journey, and categorizes its types. You''ll also discover how AI is disrupting traditional industries and paving the way for innovative solutions in technology and beyond.', 1, 0, CAST(N'2024-11-22T00:15:04.747' AS DateTime))
INSERT [dbo].[chapter] ([chapter_id], [course_id], [chapter_name], [chapter_description], [chapter_order], [chapter_status], [chapter_created_at]) VALUES (N'CH002', N'CO001', N'Machine Learning Basics', N'Machine Learning (ML) is the driving force behind many AI advancements. This chapter breaks down ML concepts and teaches you how machines learn from data to perform tasks independently. You''ll also explore the ML workflow and tools.', 2, 0, CAST(N'2024-11-22T00:20:30.690' AS DateTime))
INSERT [dbo].[chapter] ([chapter_id], [course_id], [chapter_name], [chapter_description], [chapter_order], [chapter_status], [chapter_created_at]) VALUES (N'CH003', N'CO001', N'Neural Networks and Deep Learning', N'Dive deeper into neural networks, the backbone of deep learning. Learn about their structure and how they enable AI systems to perform tasks like image and speech recognition.', 3, 0, CAST(N'2024-11-22T00:24:18.613' AS DateTime))
INSERT [dbo].[chapter] ([chapter_id], [course_id], [chapter_name], [chapter_description], [chapter_order], [chapter_status], [chapter_created_at]) VALUES (N'CH004', N'CO001', N'Ethical Considerations in AI', N'Discover how deep learning, an advanced subset of machine learning, enables machines to handle intricate tasks like image recognition and natural language processing.', 4, 0, CAST(N'2024-11-22T00:25:45.190' AS DateTime))
INSERT [dbo].[chapter] ([chapter_id], [course_id], [chapter_name], [chapter_description], [chapter_order], [chapter_status], [chapter_created_at]) VALUES (N'CH005', N'CO003', N'Introduction to RAG_BOT', N'This chapter introduces the fundamental concepts of Retrieval-Augmented Generation (RAG) technology. It highlights its role in revolutionizing chatbot capabilities by integrating vast knowledge bases and advanced retrieval mechanisms. The lessons explain what RAG is, how it works, and its evolution in artificial intelligence.', 1, 0, CAST(N'2024-11-22T09:12:59.423' AS DateTime))
INSERT [dbo].[chapter] ([chapter_id], [course_id], [chapter_name], [chapter_description], [chapter_order], [chapter_status], [chapter_created_at]) VALUES (N'CH006', N'CO003', N'Deploying RAG_BOT', N'A practical chapter focusing on creating and deploying a RAG_BOT system. This section covers the architecture, technical setup, knowledge base creation, and system integration. Perfect for learners aiming to build their own RAG_BOT solutions from the ground up.', 2, 0, CAST(N'2024-11-22T09:15:42.830' AS DateTime))
INSERT [dbo].[chapter] ([chapter_id], [course_id], [chapter_name], [chapter_description], [chapter_order], [chapter_status], [chapter_created_at]) VALUES (N'CH007', N'CO003', N'Real-World Applications', N'Explore how RAG_BOT technology is applied in various industries, including education, healthcare, and commerce. This chapter provides examples and strategies for leveraging RAG_BOT to enhance user experiences and operational efficiency. 
How to apply RAG_BOT in fields like education, healthcare, and commerce.
', 3, 0, CAST(N'2024-11-22T09:16:57.523' AS DateTime))
INSERT [dbo].[chapter] ([chapter_id], [course_id], [chapter_name], [chapter_description], [chapter_order], [chapter_status], [chapter_created_at]) VALUES (N'CH008', N'CO002', N'Introduction to Object-Oriented Programming', N'This chapter introduces learners to the fundamental concepts of Object-Oriented Programming (OOP) and provides historical context to understand how OOP evolved over time. It lays the groundwork for understanding how OOP differs from other programming paradigms, particularly proced ural programming. The lessons in this chapter aim to establish a strong theoretical base, ensuring learners are well-prepared for deeper exploration of OOP principles.', NULL, NULL, CAST(N'2024-11-22T09:53:09.597' AS DateTime))
GO
INSERT [dbo].[chatbot_conversation] ([conversation_id], [user_id], [conversation_time], [conversation_content]) VALUES (N'1', N'IN001', CAST(N'2024-11-22T00:19:58.050' AS DateTime), N'hi')
INSERT [dbo].[chatbot_conversation] ([conversation_id], [user_id], [conversation_time], [conversation_content]) VALUES (N'2', N'IN001', CAST(N'2024-11-22T00:19:58.190' AS DateTime), N'Xin lỗi bạn, đã xảy ra lỗi khi xử lý câu hỏi của bạn. Vui lòng thử lại sau.')
INSERT [dbo].[chatbot_conversation] ([conversation_id], [user_id], [conversation_time], [conversation_content]) VALUES (N'3', N'LN001', CAST(N'2024-11-22T09:44:02.970' AS DateTime), N'hi')
INSERT [dbo].[chatbot_conversation] ([conversation_id], [user_id], [conversation_time], [conversation_content]) VALUES (N'4', N'LN001', CAST(N'2024-11-22T09:44:05.647' AS DateTime), N'Chào bạn!  "Hi" là một lời chào thân thiện. Tôi là BrainStormEra, trợ lý AI được PhatLam tạo ra.  Tôi sẵn sàng hỗ trợ bạn trong khóa học "Trí tuệ nhân tạo dành cho người mới bắt đầu".  Bạn có câu hỏi nào cụ thể về trí tuệ nhân tạo, về bài học "Định nghĩa trí tuệ nhân tạo" hay bất kỳ phần nào khác trong chương "Giới thiệu về AI" không?  Tôi rất vui được giúp bạn!
')
INSERT [dbo].[chatbot_conversation] ([conversation_id], [user_id], [conversation_time], [conversation_content]) VALUES (N'5', N'LN001', CAST(N'2024-11-22T09:44:16.677' AS DateTime), N'ban biet j ve AI')
INSERT [dbo].[chatbot_conversation] ([conversation_id], [user_id], [conversation_time], [conversation_content]) VALUES (N'6', N'LN001', CAST(N'2024-11-22T09:44:21.137' AS DateTime), N'Chào bạn!  Tôi là BrainStormEra, trợ lý AI do PhatLam tạo ra.  Câu hỏi của bạn về AI ("bạn biết gì về AI") hoàn toàn liên quan đến khóa học "Artificial Intelligence for Beginners".

Tóm tắt: AI, hay Trí tuệ Nhân tạo, là khả năng của máy móc để mô phỏng trí thông minh của con người. Nó bao gồm nhiều loại, từ AI hẹp (thực hiện nhiệm vụ cụ thể) đến AI tổng quát (giả thuyết, có khả năng thực hiện mọi nhiệm vụ trí tuệ như con người) và siêu AI (giả thuyết, vượt trội hơn con người).  Lịch sử AI bắt đầu từ những năm 1950.

Chi tiết hơn:

Trí tuệ nhân tạo (AI) là một lĩnh vực rộng lớn, tập trung vào việc tạo ra các máy móc có thể thực hiện các nhiệm vụ thường đòi hỏi trí thông minh của con người.  Điều này bao gồm:

* **Học máy (Machine Learning):**  Cho phép máy móc học từ dữ liệu mà không cần được lập trình rõ ràng.
* **Học sâu (Deep Learning):** Một nhánh của học máy sử dụng mạng nơ-ron nhân tạo để phân tích dữ liệu phức tạp.
* **Xử lý ngôn ngữ tự nhiên (Natural Language Processing):** Cho phép máy tính hiểu và xử lý ngôn ngữ con người.
* **Tầm nhìn máy tính (Computer Vision):** Cho phép máy tính "nhìn" và hiểu hình ảnh.


AI được phân loại thành nhiều loại, bao gồm:

* **AI hẹp (Narrow AI):**  Đây là loại AI phổ biến nhất hiện nay. Nó được thiết kế để thực hiện một nhiệm vụ cụ thể, ví dụ như Siri (trợ lý ảo) hoặc các hệ thống đề xuất sản phẩm trên trang web thương mại điện tử.
* **AI tổng quát (General AI):** Đây là một khái niệm lý thuyết về một AI có khả năng thực hiện bất kỳ nhiệm vụ trí tuệ nào mà con người có thể làm. Hiện nay, loại AI này vẫn chưa tồn tại.
* **Siêu AI (Super AI):**  Đây cũng là một khái niệm lý thuyết về một AI vượt trội hơn cả trí thông minh của con người.

Lịch sử của AI bắt đầu từ những năm 1950, với sự phát triển của các thuật toán và mô hình đầu tiên.  Alan Turing và bài toán Turing Test đóng vai trò quan trọng trong sự phát triển của lĩnh vực này.


Bạn muốn tìm hiểu thêm về khía cạnh nào của AI?  Ví dụ, bạn có muốn tìm hiểu sâu hơn về học máy, học sâu, hoặc các ứng dụng của AI trong các ngành cụ thể không?
')
GO
INSERT [dbo].[course] ([course_id], [course_name], [course_description], [course_status], [course_picture], [price], [course_created_at], [created_by]) VALUES (N'CO001', N'Artificial Intelligence for Beginners', N'Artificial Intelligence (AI) is rapidly transforming the world, touching every aspect of modern life. This beginner-friendly course introduces the fundamental principles of AI, providing a comprehensive overview of its concepts, applications, and impact. You''ll explore machine learning, deep learning, and their practical applications in industries like healthcare, finance, and entertainment. Through structured lessons, you''ll gain insights into how AI works, its ethical implications, and its role in shaping the future.', 2, N'/uploads/Course-img/ai-overview.png', CAST(250000.00 AS Decimal(10, 2)), CAST(N'2024-11-22T00:14:11.350' AS DateTime), N'IN001')
INSERT [dbo].[course] ([course_id], [course_name], [course_description], [course_status], [course_picture], [price], [course_created_at], [created_by]) VALUES (N'CO002', N'OOP Fundamentals', N'The "OOP Fundamentals" course is designed to provide both foundational and advanced knowledge of Object-Oriented Programming (OOP). Through a combination of theoretical explanations and practical exercises, this course delves into the essential principles of OOP: Abstraction, Encapsulation, Inheritance, and Polymorphism. Learners will gain a deep understanding of how these principles are applied in modern software development to create scalable, reusable, and maintainable code. By the end of the course, participants will have the skills to implement OOP concepts in real-world projects using relevant programming languages.

', 3, N'/uploads/Course-img/Object-oriented-programming-blog.png', CAST(500000.00 AS Decimal(10, 2)), CAST(N'2024-11-22T00:49:43.967' AS DateTime), N'IN001')
INSERT [dbo].[course] ([course_id], [course_name], [course_description], [course_status], [course_picture], [price], [course_created_at], [created_by]) VALUES (N'CO003', N'RAG_BOT - Deployment and Applications', N'This course provides an in-depth understanding of Retrieval-Augmented Generation (RAG) technology and its transformative applications. Learn how to deploy bots integrating RAG in practical settings, including business operations, educational systems, healthcare, and more. Gain practical experience through structured lessons, real-world use cases, and hands-on deployment guidance.', 3, N'/uploads/Course-img/ragbot.png', CAST(500000.00 AS Decimal(10, 2)), CAST(N'2024-11-22T09:12:27.947' AS DateTime), N'IN002')
GO
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC001', N'Programming')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC002', N'Design')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC003', N'Marketing')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC004', N'Data Science')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC005', N'Artificial Intelligence')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC006', N'Web Development')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC007', N'Mobile App Development')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC008', N'Cloud Computing')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC009', N'Cybersecurity')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC010', N'DevOps')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC011', N'UI/UX Design')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC012', N'Game Development')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC013', N'Digital Marketing')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC014', N'Content Writing')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC015', N'Photography')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC016', N'Video Editing')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC017', N'3D Animation')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC018', N'Graphic Design Advanced')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC019', N'Interior Design')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC020', N'Fashion Design')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC021', N'Business Management')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC022', N'Project Management')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC023', N'Entrepreneurship')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC024', N'Finance and Accounting')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC025', N'Stock Market Trading')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC026', N'Cryptocurrency and Blockchain')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC027', N'Personal Development')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC028', N'Leadership Skills')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC029', N'Public Speaking')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC030', N'Time Management')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC031', N'Stress Management')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC032', N'Language Learning')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC033', N'Spanish Language')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC034', N'French Language')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC035', N'Japanese Language')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC036', N'German Language')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC037', N'Music Production')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC038', N'Piano Lessons')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC039', N'Guitar Lessons')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC040', N'Fitness and Health')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC041', N'Yoga and Meditation')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC042', N'Nutrition and Diet')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC043', N'Cooking')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC044', N'Baking')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC045', N'Art and Drawing')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC046', N'Calligraphy')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC047', N'Machine Learning')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC048', N'Deep Learning')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC049', N'Big Data')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC050', N'Ethical Hacking')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC051', N'Augmented Reality')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC052', N'Virtual Reality')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC053', N'Robotics')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC054', N'E-commerce')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC055', N'SEO Optimization')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC056', N'Affiliate Marketing')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC057', N'Social Media Marketing')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC058', N'Human Resource Management')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC059', N'Event Management')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC060', N'Supply Chain Management')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC061', N'Economics')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC062', N'Statistics')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC063', N'Psychology')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC064', N'Sociology')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC065', N'Political Science')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC066', N'Philosophy')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC067', N'History')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC068', N'Creative Writing')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC069', N'Screenwriting')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC070', N'Film Making')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC071', N'Photography Advanced')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC072', N'Illustration')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC073', N'Tattoo Art')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC074', N'Jewelry Design')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC075', N'Architecture Basics')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC076', N'Digital Sculpting')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC077', N'Character Design')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC078', N'Industrial Design')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC079', N'Automobile Design')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC080', N'Aeronautical Engineering')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC081', N'Civil Engineering')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC082', N'Mechanical Engineering')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC083', N'Electrical Engineering')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC084', N'Software Engineering')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC085', N'Networking Basics')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC086', N'Database Management')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC087', N'Artificial Intelligence Advanced')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC088', N'Cybersecurity Advanced')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC089', N'Cloud Architecture')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC090', N'Mobile Game Development')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC091', N'Game Design Theory')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC092', N'Quantum Computing')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC093', N'Nanotechnology')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC094', N'Biotechnology')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC095', N'Astronomy')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC096', N'Astrophysics')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC097', N'Marine Biology')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC098', N'Environmental Science')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC099', N'Geology')
INSERT [dbo].[course_category] ([course_category_id], [course_category_name]) VALUES (N'CC100', N'Meteorology')
GO
INSERT [dbo].[course_category_mapping] ([course_id], [course_category_id]) VALUES (N'CO001', N'CC001')
INSERT [dbo].[course_category_mapping] ([course_id], [course_category_id]) VALUES (N'CO002', N'CC001')
INSERT [dbo].[course_category_mapping] ([course_id], [course_category_id]) VALUES (N'CO003', N'CC008')
GO
INSERT [dbo].[enrollment] ([enrollment_id], [user_id], [course_id], [enrollment_status], [approved], [certificate_issued_date], [enrollment_created_at]) VALUES (N'EN001', N'LN001', N'CO001', 5, 1, CAST(N'2024-11-22' AS Date), CAST(N'2024-11-22T00:34:40.410' AS DateTime))
INSERT [dbo].[enrollment] ([enrollment_id], [user_id], [course_id], [enrollment_status], [approved], [certificate_issued_date], [enrollment_created_at]) VALUES (N'EN002', N'LN002', N'CO001', 1, 0, NULL, CAST(N'2024-11-22T09:18:35.910' AS DateTime))
GO
INSERT [dbo].[feedback] ([feedback_id], [course_id], [user_id], [star_rating], [comment], [feedback_date], [hidden_status], [feedback_created_at]) VALUES (N'FE001', N'CO001', N'LN001', 4, N'Hay vcl', CAST(N'2024-11-21' AS Date), 0, CAST(N'2024-11-21T17:41:38.013' AS DateTime))
INSERT [dbo].[feedback] ([feedback_id], [course_id], [user_id], [star_rating], [comment], [feedback_date], [hidden_status], [feedback_created_at]) VALUES (N'FE002', N'CO001', N'IN001', 4, N'm', CAST(N'2024-11-22' AS Date), 0, CAST(N'2024-11-22T03:00:16.643' AS DateTime))
GO
INSERT [dbo].[lesson] ([lesson_id], [chapter_id], [lesson_name], [lesson_description], [lesson_content], [lesson_order], [lesson_type_id], [lesson_status], [lesson_created_at]) VALUES (N'LE001', N'CH001', N'What is Artificial Intelligence?', N'This lesson defines Artificial Intelligence, explores its history, and explains its key concepts. Artificial Intelligence (AI) refers to the simulation of human intelligence in machines designed to perform tasks that typically require human cognition. This includes problem-solving, learning, reasoning, and understanding language. AI''s history dates back to the 1950s, with pioneers like Alan Turing laying its groundwork. The Turing Test, introduced by Turing, remains a benchmark for evaluating machine intelligence.
Types of AI:
Narrow AI: AI designed for specific tasks (e.g., voice assistants).
General AI: Hypothetical AI capable of performing any intellectual task like a human.
Super AI: Speculative AI surpassing human intelligence.
', N'/uploads/lessons/Lesson_1_1_What_is_Artificial_Intelligence.pdf', 1, 2, 4, CAST(N'2024-11-22T00:18:20.517' AS DateTime))
INSERT [dbo].[lesson] ([lesson_id], [chapter_id], [lesson_name], [lesson_description], [lesson_content], [lesson_order], [lesson_type_id], [lesson_status], [lesson_created_at]) VALUES (N'LE002', N'CH001', N'Applications of AI', N'Explore the transformative power of AI across various domains. Understand how AI optimizes processes, enhances decision-making, and introduces groundbreaking innovations. You''ll see its real-world applications in industries that impact our daily lives.
AI''s applications span various industries:
Healthcare: AI powers diagnostic tools, drug discovery, and personalized medicine.
Transportation: Self-driving cars, route optimization, and smart traffic systems.
Finance: Fraud detection, algorithmic trading, and credit scoring.
Entertainment: Content recommendations, gaming, and CGI in movies.
With AI''s rapid evolution, its impact on daily life continues to grow.
', N'/uploads/lessons/Lesson_1_2_Applications_of_AI.pdf', 2, 2, 4, CAST(N'2024-11-22T00:19:55.033' AS DateTime))
INSERT [dbo].[lesson] ([lesson_id], [chapter_id], [lesson_name], [lesson_description], [lesson_content], [lesson_order], [lesson_type_id], [lesson_status], [lesson_created_at]) VALUES (N'LE003', N'CH002', N'Understanding Machine Learning', N'Learn about the primary types of machine learning and their practical uses. Gain insight into how systems are trained to recognize patterns and make decisions without explicit programming.
Machine Learning allows systems to improve performance with experience.
Supervised Learning: The model learns from labeled data (e.g., email spam detection).
Unsupervised Learning: Identifies patterns in unlabeled data (e.g., customer segmentation).
Reinforcement Learning: Machines learn through trial and error (e.g., AlphaGo).
The ML workflow involves data collection, preprocessing, model selection, training, evaluation, and deployment.
', N'/uploads/lessons/Lesson_2_1_Understanding_Machine_Learning.pdf', 1, 2, 4, CAST(N'2024-11-22T00:23:30.430' AS DateTime))
INSERT [dbo].[lesson] ([lesson_id], [chapter_id], [lesson_name], [lesson_description], [lesson_content], [lesson_order], [lesson_type_id], [lesson_status], [lesson_created_at]) VALUES (N'LE004', N'CH002', N'Common Machine Learning Tools', N'Description:
Discover popular tools and frameworks for implementing machine learning. This lesson provides hands-on guidance for using libraries like TensorFlow and Scikit-learn to build your first ML models.
Setting up ML tools:
Install Python.
Use libraries like Scikit-learn for basic models and TensorFlow for deep learning.
Build models such as linear regression, decision trees, and neural networks.

', N'/uploads/lessons/Lesson_2_2_Common_Machine_Learning_Tools (1).pdf', 2, 2, 4, CAST(N'2024-11-22T00:23:52.173' AS DateTime))
INSERT [dbo].[lesson] ([lesson_id], [chapter_id], [lesson_name], [lesson_description], [lesson_content], [lesson_order], [lesson_type_id], [lesson_status], [lesson_created_at]) VALUES (N'LE005', N'CH003', N'Basics of Neural Networks', N'Dive into the fascinating world of neural networks, the backbone of AI''s deep learning capabilities. This chapter explains their architecture, training methods, and real-world applications.
Neural networks consist of layers:
Input Layer: Accepts data.
Hidden Layers: Processes data using weights and biases.
Output Layer: Produces the result.
Training involves forward propagation, error calculation, and backpropagation.
', N'/uploads/lessons/Lesson_3_1_Basics_of_Neural_Networks.pdf', 1, 2, 4, CAST(N'2024-11-22T00:24:47.820' AS DateTime))
INSERT [dbo].[lesson] ([lesson_id], [chapter_id], [lesson_name], [lesson_description], [lesson_content], [lesson_order], [lesson_type_id], [lesson_status], [lesson_created_at]) VALUES (N'LE006', N'CH003', N'Introduction to Deep Learning', N'Discover how deep learning, an advanced subset of machine learning, enables machines to handle intricate tasks like image recognition and natural language processing.
Convolutional Neural Networks (CNNs): Excellent for image analysis.
Recurrent Neural Networks (RNNs): Ideal for sequential data like text and speech.
Deep learning has enabled breakthroughs in autonomous vehicles, voice assistants, and more.

', N'/uploads/lessons/Lesson_3_2_Introduction_to_Deep_Learning.pdf', 2, 2, 4, CAST(N'2024-11-22T00:25:21.300' AS DateTime))
INSERT [dbo].[lesson] ([lesson_id], [chapter_id], [lesson_name], [lesson_description], [lesson_content], [lesson_order], [lesson_type_id], [lesson_status], [lesson_created_at]) VALUES (N'LE007', N'CH004', N'Ethical Challenges in AI', N'AI systems can unintentionally perpetuate biases or invade privacy due to the data they use. Learn how to identify and mitigate these challenges to build fair and ethical AI solutions.
Ethical issues include:
Bias: AI systems may inherit biases from training data.
Privacy: Data collection raises concerns about personal information security.
Automation: Widespread AI adoption might lead to job displacement.

', N'/uploads/lessons/Lesson_4_1_Ethical_Challenges_in_AI.pdf', 1, 2, 4, CAST(N'2024-11-22T00:26:30.043' AS DateTime))
INSERT [dbo].[lesson] ([lesson_id], [chapter_id], [lesson_name], [lesson_description], [lesson_content], [lesson_order], [lesson_type_id], [lesson_status], [lesson_created_at]) VALUES (N'LE008', N'CH004', N'The Future of AI', N'Explore the opportunities and challenges that lie ahead as AI continues to evolve. This lesson encourages thoughtful discussions about the responsible integration of AI into society.

Content (Excerpt):
The future of AI holds immense potential:
Positive Impact: Enhanced productivity, personalized healthcare, and educational tools.
Risks: Misuse of AI, over-dependence, and ethical concerns.
Governments, corporations, and individuals must collaborate to ensure AI is used responsibly.

', N'/uploads/lessons/Lesson_4_2_The_Future_of_AI.pdf', 2, 2, 4, CAST(N'2024-11-22T00:27:09.503' AS DateTime))
INSERT [dbo].[lesson] ([lesson_id], [chapter_id], [lesson_name], [lesson_description], [lesson_content], [lesson_order], [lesson_type_id], [lesson_status], [lesson_created_at]) VALUES (N'LE009', N'CH005', N'Overview of RAG', N'Discover the foundational principles of RAG, including its architecture, functionality, and problem-solving capabilities. Learn how RAG enhances chatbot efficiency by integrating external knowledge with generative responses. 
What is RAG, how does it work, and what problems does it solve?
', N'https://www.youtube.com/watch?v=wd7TZ4w1mSw&t=1s', 1, 1, 4, CAST(N'2024-11-22T09:13:31.237' AS DateTime))
INSERT [dbo].[lesson] ([lesson_id], [chapter_id], [lesson_name], [lesson_description], [lesson_content], [lesson_order], [lesson_type_id], [lesson_status], [lesson_created_at]) VALUES (N'LE010', N'CH005', N'History and Development of RAG', N'Delve into the origins and historical advancements of RAG technology. Understand how RAG has evolved to become a cornerstone of modern AI-powered conversational systems.
 Explore the origins and evolution of RAG technology in AI.
', N'/uploads/lessons/History_and_Development_of_RAG (1).docx', 2, 2, 4, CAST(N'2024-11-22T09:14:50.937' AS DateTime))
INSERT [dbo].[lesson] ([lesson_id], [chapter_id], [lesson_name], [lesson_description], [lesson_content], [lesson_order], [lesson_type_id], [lesson_status], [lesson_created_at]) VALUES (N'LE011', N'CH006', N'Architecture of RAG_BOT', N'Gain insights into the design and structure of a RAG_BOT system. Learn about the components, data flow, and interactions that enable a robust and scalable bot architecture. 
Learn about the main components of a RAG_BOT system.
', N'https://www.youtube.com/watch?v=hFfxDM2-7Rg', 1, 1, 4, CAST(N'2024-11-22T09:16:06.177' AS DateTime))
INSERT [dbo].[lesson] ([lesson_id], [chapter_id], [lesson_name], [lesson_description], [lesson_content], [lesson_order], [lesson_type_id], [lesson_status], [lesson_created_at]) VALUES (N'LE012', N'CH006', N'Building the Knowledge Base', N'Learn how to create and manage a comprehensive knowledge base for RAG_BOT. This lesson provides step-by-step instructions for setting up databases, optimizing data retrieval, and ensuring accurate, context-aware bot responses. 
A guide to creating and managing a database for RAG_BOT.
', N'https://www.youtube.com/watch?v=JF4Bb4YdgW0', 2, 1, 4, CAST(N'2024-11-22T09:16:29.953' AS DateTime))
INSERT [dbo].[lesson] ([lesson_id], [chapter_id], [lesson_name], [lesson_description], [lesson_content], [lesson_order], [lesson_type_id], [lesson_status], [lesson_created_at]) VALUES (N'LE013', N'CH007', N'Integration in Education', N'Learn how RAG_BOT can revolutionize education by providing personalized learning experiences, automating administrative tasks, and improving student-teacher interaction. This lesson highlights practical implementation strategies in educational settings. 
How can RAG_BOT transform learning and teaching methods?
', N'https://www.youtube.com/watch?v=-k8c3NI3Y48', 1, 1, 4, CAST(N'2024-11-22T09:17:22.977' AS DateTime))
GO
INSERT [dbo].[lesson_completion] ([completion_id], [user_id], [lesson_id], [completion_date]) VALUES (N'LC001', N'LN001', N'LE001', CAST(N'2024-11-22T00:34:45.277' AS DateTime))
INSERT [dbo].[lesson_completion] ([completion_id], [user_id], [lesson_id], [completion_date]) VALUES (N'LC002', N'LN001', N'LE002', CAST(N'2024-11-22T00:34:49.630' AS DateTime))
INSERT [dbo].[lesson_completion] ([completion_id], [user_id], [lesson_id], [completion_date]) VALUES (N'LC003', N'LN001', N'LE003', CAST(N'2024-11-22T00:34:53.277' AS DateTime))
INSERT [dbo].[lesson_completion] ([completion_id], [user_id], [lesson_id], [completion_date]) VALUES (N'LC004', N'LN001', N'LE004', CAST(N'2024-11-22T00:34:56.513' AS DateTime))
INSERT [dbo].[lesson_completion] ([completion_id], [user_id], [lesson_id], [completion_date]) VALUES (N'LC005', N'LN001', N'LE005', CAST(N'2024-11-22T00:35:00.173' AS DateTime))
INSERT [dbo].[lesson_completion] ([completion_id], [user_id], [lesson_id], [completion_date]) VALUES (N'LC006', N'LN001', N'LE006', CAST(N'2024-11-22T00:35:02.253' AS DateTime))
INSERT [dbo].[lesson_completion] ([completion_id], [user_id], [lesson_id], [completion_date]) VALUES (N'LC007', N'LN001', N'LE007', CAST(N'2024-11-22T00:35:05.283' AS DateTime))
INSERT [dbo].[lesson_completion] ([completion_id], [user_id], [lesson_id], [completion_date]) VALUES (N'LC008', N'LN001', N'LE008', CAST(N'2024-11-22T00:35:10.227' AS DateTime))
GO
INSERT [dbo].[lesson_type] ([lesson_type_id], [lesson_type_name]) VALUES (1, N'Doc')
INSERT [dbo].[lesson_type] ([lesson_type_id], [lesson_type_name]) VALUES (2, N'Video')
GO
INSERT [dbo].[notification] ([notification_id], [user_id], [course_id], [notification_title], [notification_content], [notification_type], [notification_created_at], [created_by]) VALUES (N'N001', N'LN001', N'CO001', N'Congratulations', N'Congratulations, you have received a new certificate!', N'Info', CAST(N'2024-11-22T00:35:10.247' AS DateTime), N'LN001')
GO
INSERT [dbo].[payment] ([payment_id], [user_id], [payment_description], [amount], [points_earned], [payment_status], [payment_date]) VALUES (N'PA001', N'LN001', N'LN001 - 2,000,000 points update', CAST(2000000.00 AS Decimal(10, 2)), 2000000, N'Completed', CAST(N'2024-11-22T00:29:04.537' AS DateTime))
GO
INSERT [dbo].[role] ([user_role], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[role] ([user_role], [role_name]) VALUES (2, N'Instructor')
INSERT [dbo].[role] ([user_role], [role_name]) VALUES (3, N'Learner')
GO
INSERT [dbo].[status] ([status_id], [status_description]) VALUES (0, N'Rejected')
INSERT [dbo].[status] ([status_id], [status_description]) VALUES (1, N'Pending')
INSERT [dbo].[status] ([status_id], [status_description]) VALUES (2, N'Approved')
INSERT [dbo].[status] ([status_id], [status_description]) VALUES (3, N'Inactive')
INSERT [dbo].[status] ([status_id], [status_description]) VALUES (4, N'Active')
INSERT [dbo].[status] ([status_id], [status_description]) VALUES (5, N'Completed')
GO
INSERT [dbo].[user_achievement] ([user_id], [achievement_id], [received_date], [enrollment_id]) VALUES (N'LN001', N'A001', CAST(N'2024-11-22' AS Date), NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__account__B0FBA212EE8BBD10]    Script Date: 30-Dec-24 9:53:10 AM ******/
ALTER TABLE [dbo].[account] ADD UNIQUE NONCLUSTERED 
(
	[user_email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__account__F3DBC5728276873C]    Script Date: 30-Dec-24 9:53:10 AM ******/
ALTER TABLE [dbo].[account] ADD UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_chapter_order_per_course]    Script Date: 30-Dec-24 9:53:10 AM ******/
ALTER TABLE [dbo].[chapter] ADD  CONSTRAINT [unique_chapter_order_per_course] UNIQUE NONCLUSTERED 
(
	[course_id] ASC,
	[chapter_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [unique_lesson_order_per_chapter]    Script Date: 30-Dec-24 9:53:10 AM ******/
ALTER TABLE [dbo].[lesson] ADD  CONSTRAINT [unique_lesson_order_per_chapter] UNIQUE NONCLUSTERED 
(
	[chapter_id] ASC,
	[lesson_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[account] ADD  DEFAULT ((0)) FOR [payment_point]
GO
ALTER TABLE [dbo].[account] ADD  DEFAULT (getdate()) FOR [account_created_at]
GO
ALTER TABLE [dbo].[achievement] ADD  DEFAULT (getdate()) FOR [achievement_created_at]
GO
ALTER TABLE [dbo].[chapter] ADD  DEFAULT (getdate()) FOR [chapter_created_at]
GO
ALTER TABLE [dbo].[chatbot_conversation] ADD  DEFAULT (getdate()) FOR [conversation_time]
GO
ALTER TABLE [dbo].[course] ADD  DEFAULT ((0.00)) FOR [price]
GO
ALTER TABLE [dbo].[course] ADD  DEFAULT (getdate()) FOR [course_created_at]
GO
ALTER TABLE [dbo].[enrollment] ADD  DEFAULT ((0)) FOR [approved]
GO
ALTER TABLE [dbo].[enrollment] ADD  DEFAULT (getdate()) FOR [enrollment_created_at]
GO
ALTER TABLE [dbo].[feedback] ADD  DEFAULT ((0)) FOR [hidden_status]
GO
ALTER TABLE [dbo].[feedback] ADD  DEFAULT (getdate()) FOR [feedback_created_at]
GO
ALTER TABLE [dbo].[lesson] ADD  DEFAULT (getdate()) FOR [lesson_created_at]
GO
ALTER TABLE [dbo].[lesson_completion] ADD  DEFAULT (getdate()) FOR [completion_date]
GO
ALTER TABLE [dbo].[notification] ADD  DEFAULT (getdate()) FOR [notification_created_at]
GO
ALTER TABLE [dbo].[payment] ADD  DEFAULT (getdate()) FOR [payment_date]
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD FOREIGN KEY([user_role])
REFERENCES [dbo].[role] ([user_role])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[chapter]  WITH CHECK ADD FOREIGN KEY([chapter_status])
REFERENCES [dbo].[status] ([status_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[chapter]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[course] ([course_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chatbot_conversation]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[account] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[course]  WITH CHECK ADD FOREIGN KEY([course_status])
REFERENCES [dbo].[status] ([status_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[course]  WITH CHECK ADD FOREIGN KEY([created_by])
REFERENCES [dbo].[account] ([user_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[course_category_mapping]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[course] ([course_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[course_category_mapping]  WITH CHECK ADD FOREIGN KEY([course_category_id])
REFERENCES [dbo].[course_category] ([course_category_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[enrollment]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[course] ([course_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[enrollment]  WITH CHECK ADD FOREIGN KEY([enrollment_status])
REFERENCES [dbo].[status] ([status_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[enrollment]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[account] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[course] ([course_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[account] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lesson]  WITH CHECK ADD FOREIGN KEY([chapter_id])
REFERENCES [dbo].[chapter] ([chapter_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lesson]  WITH CHECK ADD FOREIGN KEY([lesson_status])
REFERENCES [dbo].[status] ([status_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[lesson]  WITH CHECK ADD FOREIGN KEY([lesson_type_id])
REFERENCES [dbo].[lesson_type] ([lesson_type_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[lesson_completion]  WITH CHECK ADD FOREIGN KEY([lesson_id])
REFERENCES [dbo].[lesson] ([lesson_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lesson_completion]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[account] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[notification]  WITH CHECK ADD FOREIGN KEY([course_id])
REFERENCES [dbo].[course] ([course_id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[notification]  WITH CHECK ADD FOREIGN KEY([created_by])
REFERENCES [dbo].[account] ([user_id])
GO
ALTER TABLE [dbo].[notification]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[account] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[payment]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[account] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_achievement]  WITH CHECK ADD FOREIGN KEY([achievement_id])
REFERENCES [dbo].[achievement] ([achievement_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_achievement]  WITH CHECK ADD FOREIGN KEY([enrollment_id])
REFERENCES [dbo].[enrollment] ([enrollment_id])
GO
ALTER TABLE [dbo].[user_achievement]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[account] ([user_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[account]  WITH CHECK ADD CHECK  (([gender]='other' OR [gender]='female' OR [gender]='male'))
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD CHECK  (([star_rating]>=(1) AND [star_rating]<=(5)))
GO
ALTER TABLE [dbo].[notification]  WITH CHECK ADD CHECK  (([notification_type]='reminder' OR [notification_type]='warning' OR [notification_type]='info'))
GO
ALTER TABLE [dbo].[payment]  WITH CHECK ADD CHECK  (([payment_status]='Failed' OR [payment_status]='Completed' OR [payment_status]='Pending'))
GO
USE [master]
GO
ALTER DATABASE [SWP_MAIN] SET  READ_WRITE 
GO
