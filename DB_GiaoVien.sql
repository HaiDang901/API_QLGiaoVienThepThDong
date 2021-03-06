USE [master]
GO
/****** Object:  Database [DB_DoAn5_1]    Script Date: 9/28/2020 10:20:53 PM ******/
CREATE DATABASE [DB_DoAn5_1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_DoAn5_1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_DoAn5_1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_DoAn5_1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_DoAn5_1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_DoAn5_1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_DoAn5_1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_DoAn5_1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DB_DoAn5_1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_DoAn5_1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_DoAn5_1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_DoAn5_1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_DoAn5_1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_DoAn5_1] SET  MULTI_USER 
GO
ALTER DATABASE [DB_DoAn5_1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_DoAn5_1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_DoAn5_1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_DoAn5_1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_DoAn5_1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_DoAn5_1] SET QUERY_STORE = OFF
GO
USE [DB_DoAn5_1]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 9/28/2020 10:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[ID_Teacher] [varchar](20) NOT NULL,
	[ID_Subject] [int] NULL,
	[ID_Position] [int] NULL,
	[ID_Ranks] [int] NULL,
	[ID_Wage] [int] NULL,
	[First_Name] [nvarchar](255) NULL,
	[Last_Name] [nvarchar](255) NULL,
	[Name_Teacher] [nvarchar](255) NULL,
	[Image_Teacher] [nvarchar](255) NULL,
	[Gende_Teacher] [bit] NULL,
	[Phone__Teacher] [varchar](20) NULL,
	[Email_Teacher] [nvarchar](255) NULL,
	[DateBirth_Teacher] [date] NULL,
	[Address_Teacher] [nvarchar](255) NULL,
	[CurrentAddress_Teacher] [nvarchar](255) NULL,
	[Nation_Teacher] [nvarchar](255) NULL,
	[Religion_Teacher] [nvarchar](255) NULL,
	[Level_Teacher] [nvarchar](255) NULL,
	[Experience_Teacher] [text] NULL,
	[IdentityCard_Teacher] [varchar](50) NULL,
	[DateRange_Teacher] [date] NULL,
	[IssuedBy_Teacher] [nvarchar](100) NULL,
	[DayAdim_Teacher] [date] NULL,
	[AddressAdmin_Teacher] [nvarchar](255) NULL,
	[status] [int] NULL,
	[DP1] [text] NULL,
	[DP2] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Teacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Academic]    Script Date: 9/28/2020 10:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Academic](
	[ID_Academic] [int] IDENTITY(1,1) NOT NULL,
	[ID_Teacher] [varchar](20) NULL,
	[Name_Academic] [nvarchar](255) NULL,
	[YearGredu_Academic] [date] NULL,
	[Certificate_Academic] [nvarchar](255) NULL,
	[Specialy_Academic] [nvarchar](255) NULL,
	[UnitWork_Academic] [nvarchar](255) NULL,
	[LevelIT_Academic] [nvarchar](255) NULL,
	[LevelLag_Academic] [nvarchar](255) NULL,
	[YeasTeaching_Academic] [varchar](10) NULL,
	[status] [int] NULL,
	[DP1] [text] NULL,
	[DP2] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Academic] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Contract]    Script Date: 9/28/2020 10:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Contract](
	[ID_Contract] [int] IDENTITY(1,1) NOT NULL,
	[ID_Teacher] [varchar](20) NULL,
	[Type_Contract] [nvarchar](255) NULL,
	[Since_Contract] [date] NULL,
	[Come_Contract] [date] NULL,
	[Note_Contract] [ntext] NULL,
	[status] [int] NULL,
	[DP1] [text] NULL,
	[DP2] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Contract] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_DiscipRewards]    Script Date: 9/28/2020 10:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_DiscipRewards](
	[ID_DisRewards] [int] IDENTITY(1,1) NOT NULL,
	[ID_Teacher] [varchar](20) NULL,
	[Name_DisRewards] [nvarchar](255) NULL,
	[Reason_DisRewards] [ntext] NULL,
	[Day_DisRewards] [date] NULL,
	[Form_DisRewards] [nvarchar](255) NULL,
	[Note_DisRewards] [ntext] NULL,
	[status] [int] NULL,
	[DP1] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_DisRewards] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Faculty]    Script Date: 9/28/2020 10:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Faculty](
	[ID_Faculty] [int] IDENTITY(1,1) NOT NULL,
	[Name_Faculty] [nvarchar](225) NULL,
	[Address_Faculty] [nvarchar](225) NULL,
	[Learder_Faculty] [nvarchar](255) NULL,
	[Website_Facuty] [varchar](225) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Faculty] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Position]    Script Date: 9/28/2020 10:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Position](
	[ID_Position] [int] IDENTITY(1,1) NOT NULL,
	[ID_Faculty] [int] NULL,
	[Name_Position] [nvarchar](255) NULL,
	[Cent_Position] [int] NULL,
	[Note_Position] [nvarchar](255) NULL,
	[Respon_Position] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_RanksOfficer]    Script Date: 9/28/2020 10:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_RanksOfficer](
	[ID_Ranks] [int] IDENTITY(1,1) NOT NULL,
	[Code_Ranks] [varchar](100) NULL,
	[Name_Ranks] [nvarchar](255) NULL,
	[Descript_Ranks] [nvarchar](255) NULL,
	[status] [int] NULL,
	[DP1] [text] NULL,
	[DP2] [text] NULL,
	[Note_Ranks] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Ranks] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Salary]    Script Date: 9/28/2020 10:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Salary](
	[ID_Salary] [int] IDENTITY(1,1) NOT NULL,
	[ID_Wage] [int] NULL,
	[Wage_Salary] [int] NULL,
	[Basic_Salary] [int] NULL,
	[Sub_Salary] [int] NULL,
	[Date_Salary] [nvarchar](255) NULL,
	[DateIcre_Salary] [date] NULL,
	[status] [int] NULL,
	[DP1] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Salary] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_SalaryRaise]    Script Date: 9/28/2020 10:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_SalaryRaise](
	[ID_Raise] [int] IDENTITY(1,1) NOT NULL,
	[ID_Salary] [int] NULL,
	[ID_Wage] [int] NULL,
	[CoeffOld_Raise] [float] NULL,
	[CoeffNew_Raise] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Raise] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Scientist]    Script Date: 9/28/2020 10:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Scientist](
	[ID_Scientist] [int] IDENTITY(1,1) NOT NULL,
	[ID_Teacher] [varchar](20) NULL,
	[Name_Scientist] [nvarchar](255) NULL,
	[Type_Scientist] [ntext] NULL,
	[Link_Scientist] [nvarchar](255) NULL,
	[Note_Scientist] [ntext] NULL,
	[status] [int] NULL,
	[DP1] [text] NULL,
	[DP2] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Scientist] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_SignUp]    Script Date: 9/28/2020 10:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_SignUp](
	[ID_SignUp] [int] IDENTITY(1,1) NOT NULL,
	[ID_Teacher] [varchar](20) NULL,
	[ID_Sub] [int] NULL,
	[Date_SignUp] [datetime] NULL,
	[Note_SignUp] [ntext] NULL,
	[status] [int] NULL,
	[DP1] [text] NULL,
	[DP2] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_SignUp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Subject]    Script Date: 9/28/2020 10:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Subject](
	[ID_Subject] [int] IDENTITY(1,1) NOT NULL,
	[ID_Faculty] [int] NULL,
	[Name_Subject] [nvarchar](225) NULL,
	[Address_Subject] [nvarchar](225) NULL,
	[Phone_Subject] [varchar](20) NULL,
	[Leader] [nvarchar](255) NULL,
	[Leader_Assis] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_SubLession]    Script Date: 9/28/2020 10:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_SubLession](
	[ID_Sub] [int] IDENTITY(1,1) NOT NULL,
	[Name_Sub] [nvarchar](255) NULL,
	[Type_Sub] [nvarchar](255) NULL,
	[Number_credits_Sub] [int] NULL,
	[status] [int] NULL,
	[DP1] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Sub] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Wage]    Script Date: 9/28/2020 10:20:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Wage](
	[ID_Wage] [int] IDENTITY(1,1) NOT NULL,
	[Name_Wage] [nvarchar](255) NULL,
	[Coeff_Wage] [float] NULL,
	[status] [int] NULL,
	[Group_Wage] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Wage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000001', 1, 2, 1, 14, N'Nguyễn Văn', N'Hậu ', N'TS. Nguyễn Văn Hậu ', NULL, 0, N'0943. 651.135', N'nvhau666@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', N'Phật Giáo', N'Tiến sĩ', N'co 10 nam kinh nghiem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000002', 1, 5, 2, 3, N'Nguyễn Minh', N'Quý', N'TS. Nguyễn Minh Quý', NULL, 0, N'0912.068.582', N'quyutehy@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, N'Tiến sĩ', N'co 10 nam kinh nghiem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000003', 1, 3, 1, 14, N'Nguyễn Văn ', N'Quyết', N'TS. Nguyễn Văn Quyết', NULL, 0, N'0912.188.636', N'quyetict@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, N'Tiến sĩ ', N'co 10 nam kinh nghiem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000004', 1, 4, 1, 13, N'Chu Thị ', N'Minh Huệ ', N'TS. Chu Thị Minh Huệ ', NULL, 1, N'0982.817.392', N'HueCtm@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, N'Tiến sĩ ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000005', 1, 6, 3, 14, N'Nguyễn Quang ', N'Hoan', N'PGS.TS Nguyễn Quang Hoan', NULL, 0, N'0903.438.226', N'quanghoanptit@yahoo.com.vn', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, N'Phó Giáo Sư Tiến Sĩ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000006', 1, 6, 9, 19, N'Nguyễn Hữu', N'Đông', N'ThS. Nguyễn Hữu Đông', NULL, 0, N'0983.539.745', N'dongcntt77@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, N'Thạc Sĩ ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000007', 1, 6, 9, 19, N'Nguyễn Minh ', N'Tiến', N'TS. Nguyễn Minh Tiến', NULL, 0, N'0983.860.318', N'minhtienhy@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000008', 1, 6, 9, 19, N'Ngô Thanh ', N'Huyền ', N'ThS. Ngô Thanh Huyền', NULL, 1, N'0982.713.518', N'nthuyen@utehy.edu.vn', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000009', 1, 6, 9, 19, N'Nguyễn Thị ', N'Hải Năng', N'ThS. Nguyễn Thị Hải Năng', NULL, 1, N'0912.384.299', N'hainangtk1@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000010', 1, 14, 9, 17, N'Lê Thị ', N'Thu Hương', N'NCS. Lê Thị Thu Hương', NULL, 1, N' 0915.324.041', N'Lehuong7885@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000011', 1, 14, 9, 17, N'Hoàng Quốc ', N'Việt ', N'NCS. Hoàng Quốc Việt ', NULL, 0, N'0976.124.669', N' viethqtk1@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000012', 1, 6, 9, 19, N'Trịnh Thị ', N' Nhị ', N'ThS. Trịnh Thị Nhị ', NULL, 1, N'0978.606.526', N'Nhicntt@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000013', 1, 6, 9, 19, N'Nguyễn Hoàng  ', N'Điệp ', N'ThS. Nguyễn Hoàng Điệp ', NULL, 1, N'0923.848.008', N'diep82003@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000014', 1, 6, 9, 19, N'Đỗ Thị ', N'Thu Trang', N'ThS. Đỗ Thị Thu TRang', NULL, 1, N'0396.911.336', N'TrangLexus@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000015', 1, 6, 9, 19, N'Trần Đỗ', N'Thu Hà ', N'ThS. Trần Đỗ Thu Hà ', NULL, 1, N'0976.289.988', N'tdhapi@gmail.com ', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000016', 1, 14, 9, 17, N'Đào Anh ', N'Hiển ', N'NCS. Đào Anh Hiển', NULL, 0, N'0983.264.436', N'hienda@utehy.edu.vn', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000017', 2, 12, 1, 14, N'Bùi Thế ', N'Hồng', N'PGC.TS Bùi Thế Hồng', NULL, 0, N'0904.238.643', N'hong@ioit.ac.vn', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000018', 2, 7, 1, 19, N'Phạm Minh ', N'Chuẩn', N'TS. Phạm Minh Chuẩn', NULL, 0, N'0983.081.120', N'chuanpm@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000019', 2, 6, 1, 19, N'Nguyễn  Duy ', N'Tân', N'TS. Nguyễn Duy Tân', NULL, 0, N'0972.947.808', N'tanndhyvn@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000020', 2, 11, 1, 19, N'Vũ Khánh', N'Quý', N'TS. Vũ Khánh Quý', NULL, 0, N'0945.528.686', N'quyvk0705@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000021', 2, 6, 1, 19, N'Phạm Quốc', N'Hùng', N'ThS. Phạm Quốc Hùng', NULL, 0, N'0983.360.925', N'quochungvnu@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000022', 2, 6, 1, 19, N'Vi Hoài', N'Nam ', N'ThS. Vi Hoài Nam ', NULL, 0, N'0375.326.504', N'vihoainam@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000023', 2, 6, 1, 19, N'Vũ Xuân ', N'Thắng', N'ThS. Vũ Xuân Thắng', NULL, 0, N'0988.169.829', N'xuanthangtk1@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000024', 2, 8, 1, 19, N'Nguyễn Thị ', N'Thanh Huệ', N'ThS. Nguyễn Thị Thanh Huệ ', NULL, 1, N'0979.851.509', N'huentt1509@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000025', 2, 9, 1, 19, N'Đặng Vân ', N'Anh ', N'ThS. Đặng Vân Anh ', NULL, 1, N'0983.702.911', N'vananh271785@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000026', 3, 10, 1, 19, N'Chu Bá', N'Thành', N'NCS. Chu Bá Thành ', NULL, 0, N'0901.582.882', N'nhatthanhhy@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000027', 3, 1, 1, 19, N'Phạm Ngọc ', N'Hưng', N'TS. Phạm Ngọc Hưng', NULL, 0, N'0982.713.301', N'PhamNgocHung@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000028', 3, 3, 1, 14, N'Nguyễn Đình ', N'Chiến', N'TS. Nguyễn Đình Chiến', NULL, 0, N'0962.836.394', N'chienql@gmail.com
', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000029', 3, 13, 1, 14, N'Võ Thị ', N'Thanh Mai', N'CN. Võ Thị Thanh Mai ', NULL, 1, N'0986.254.415 ', N'vttmai1964@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000030', 3, 6, 1, 19, N'Nguyễn VInh ', N'Quy ', N'ThS. Nguyễn Vinh Quy', NULL, 0, N'0367.122.505', N'vinhquynguyen@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000031', 3, 6, 1, 19, N'Vũ Huy ', N'Thế', N'TS. Vũ Huy Thế', NULL, 0, N'0978.823.873', N'thevh.bn@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000032', 3, 6, 1, 19, N'Trần Thị ', N'Phương', N'ThS. Trần Thị Phương', NULL, 1, N'0975.822.600 ', N'phuongutehy2405@gmail.com', NULL, NULL, NULL, N'Dân tộc Kinh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [ID_Subject], [ID_Position], [ID_Ranks], [ID_Wage], [First_Name], [Last_Name], [Name_Teacher], [Image_Teacher], [Gende_Teacher], [Phone__Teacher], [Email_Teacher], [DateBirth_Teacher], [Address_Teacher], [CurrentAddress_Teacher], [Nation_Teacher], [Religion_Teacher], [Level_Teacher], [Experience_Teacher], [IdentityCard_Teacher], [DateRange_Teacher], [IssuedBy_Teacher], [DayAdim_Teacher], [AddressAdmin_Teacher], [status], [DP1], [DP2]) VALUES (N'00000040', 1, 6, 3, 16, N'Nguyễn Văn ', N'Dũng', N'Nguyễn Văn Dũng', NULL, 0, N' 097510 0568', N'nguyenvandung@gmail.com', NULL, NULL, NULL, N'Kinh', NULL, N'Tiến Sĩ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Teacher_Faculty] ON 

INSERT [dbo].[Teacher_Faculty] ([ID_Faculty], [Name_Faculty], [Address_Faculty], [Learder_Faculty], [Website_Facuty]) VALUES (1, N'KHOA CÔNG NGHÊ THÔNG TIN ', N'Nhân Hòa - Mỹ Hòa - Hưng Yên ', N'TS. Phạm Ngọc Hưng ', N'http://www.fit.utehy.edu.vn/')
INSERT [dbo].[Teacher_Faculty] ([ID_Faculty], [Name_Faculty], [Address_Faculty], [Learder_Faculty], [Website_Facuty]) VALUES (2, N'KHOA CÔNG NGHỆ MAY ', N'Nhân Hòa - Mỹ Hào - Hưng Yên ', NULL, NULL)
INSERT [dbo].[Teacher_Faculty] ([ID_Faculty], [Name_Faculty], [Address_Faculty], [Learder_Faculty], [Website_Facuty]) VALUES (3, N'KHOA KINH TẾ', N'Nhân Hòa - Mỹ Hào - Hưng Yên ', NULL, NULL)
INSERT [dbo].[Teacher_Faculty] ([ID_Faculty], [Name_Faculty], [Address_Faculty], [Learder_Faculty], [Website_Facuty]) VALUES (4, N'KHOA NGOẠI NGỮ', N'Nhân Hòa - Mỹ Hào - Hưng Yên ', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Teacher_Faculty] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher_Position] ON 

INSERT [dbo].[Teacher_Position] ([ID_Position], [ID_Faculty], [Name_Position], [Cent_Position], [Note_Position], [Respon_Position]) VALUES (1, 1, N'Trưởng Khoa', NULL, N'Phụ trách Khoa', NULL)
INSERT [dbo].[Teacher_Position] ([ID_Position], [ID_Faculty], [Name_Position], [Cent_Position], [Note_Position], [Respon_Position]) VALUES (2, 1, N'Phó trưởng Khoa', NULL, NULL, NULL)
INSERT [dbo].[Teacher_Position] ([ID_Position], [ID_Faculty], [Name_Position], [Cent_Position], [Note_Position], [Respon_Position]) VALUES (3, 1, N'Trưởng Bộ Môn ', NULL, NULL, NULL)
INSERT [dbo].[Teacher_Position] ([ID_Position], [ID_Faculty], [Name_Position], [Cent_Position], [Note_Position], [Respon_Position]) VALUES (4, 1, N'Phó trưởng Bộ Môn ', NULL, NULL, NULL)
INSERT [dbo].[Teacher_Position] ([ID_Position], [ID_Faculty], [Name_Position], [Cent_Position], [Note_Position], [Respon_Position]) VALUES (5, 1, N'Trưởng Phòng Đào Tạo', NULL, NULL, NULL)
INSERT [dbo].[Teacher_Position] ([ID_Position], [ID_Faculty], [Name_Position], [Cent_Position], [Note_Position], [Respon_Position]) VALUES (6, 1, N'Giảng viên ', NULL, NULL, NULL)
INSERT [dbo].[Teacher_Position] ([ID_Position], [ID_Faculty], [Name_Position], [Cent_Position], [Note_Position], [Respon_Position]) VALUES (7, 1, N'Giảng viên', NULL, NULL, N'Phó Bí Thư Chi Bộ ')
INSERT [dbo].[Teacher_Position] ([ID_Position], [ID_Faculty], [Name_Position], [Cent_Position], [Note_Position], [Respon_Position]) VALUES (8, 1, N'Giảng Viên', NULL, NULL, N'Bí Thư LCĐ CNTT')
INSERT [dbo].[Teacher_Position] ([ID_Position], [ID_Faculty], [Name_Position], [Cent_Position], [Note_Position], [Respon_Position]) VALUES (9, 1, N'Giảng Viên', NULL, NULL, N'Bí Thư Đoàn Trường')
INSERT [dbo].[Teacher_Position] ([ID_Position], [ID_Faculty], [Name_Position], [Cent_Position], [Note_Position], [Respon_Position]) VALUES (10, 1, N'Giảng Viên', NULL, NULL, N'Chủ TỊch Công Đoàn')
INSERT [dbo].[Teacher_Position] ([ID_Position], [ID_Faculty], [Name_Position], [Cent_Position], [Note_Position], [Respon_Position]) VALUES (11, 1, N'GĐ TT Hưng Yên Aptech: CNTT & TT', NULL, NULL, NULL)
INSERT [dbo].[Teacher_Position] ([ID_Position], [ID_Faculty], [Name_Position], [Cent_Position], [Note_Position], [Respon_Position]) VALUES (12, 1, N'Giảng Viên CC-Thỉnh Giảng', NULL, NULL, NULL)
INSERT [dbo].[Teacher_Position] ([ID_Position], [ID_Faculty], [Name_Position], [Cent_Position], [Note_Position], [Respon_Position]) VALUES (13, 1, N'Giáo Vụ Khoa', NULL, NULL, NULL)
INSERT [dbo].[Teacher_Position] ([ID_Position], [ID_Faculty], [Name_Position], [Cent_Position], [Note_Position], [Respon_Position]) VALUES (14, 1, N'Nghiên cứu sinh', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Teacher_Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher_RanksOfficer] ON 

INSERT [dbo].[Teacher_RanksOfficer] ([ID_Ranks], [Code_Ranks], [Name_Ranks], [Descript_Ranks], [status], [DP1], [DP2], [Note_Ranks]) VALUES (1, N'V.07.01.01', N'Giảng viên cao cấp (hạng I)', N'Mã ngạch viên chức là giảng viên giảng dạy trong cơ sở giáo dục đại học công lập', 1, NULL, NULL, N'Giảng dạy trình độ cao đẳng, đại học trở lên; hướng dẫn và chấm đồ án, khóa luận tốt nghiệp cao đẳng, đại học; hướng dẫn luận văn thạc sĩ, luận án tiến sĩ; chủ trì hoặc tham gia các hội đồng đánh giá luận văn thạc sĩ, luận án tiến sĩ')
INSERT [dbo].[Teacher_RanksOfficer] ([ID_Ranks], [Code_Ranks], [Name_Ranks], [Descript_Ranks], [status], [DP1], [DP2], [Note_Ranks]) VALUES (2, N'V.07.01.02', N'Giảng viên chính (hạng II)', N'Mã ngạch viên chức là giảng viên giảng dạy trong cơ sở giáo dục đại học công lập', 1, NULL, NULL, N'Giảng dạy, hướng dẫn và chấm đồ án, khóa luận tốt nghiệp trình độ cao đẳng, đại học,Tham gia giảng dạy chương trình đào tạo trình độ thạc sĩ, tiến sĩ và hướng dẫn, đánh giá luận văn thạc sĩ, luận án tiến sĩ nếu có đủ tiêu chuẩn theo quy định')
INSERT [dbo].[Teacher_RanksOfficer] ([ID_Ranks], [Code_Ranks], [Name_Ranks], [Descript_Ranks], [status], [DP1], [DP2], [Note_Ranks]) VALUES (3, N'V.07.01.03', N'Giảng viên (hạng III)', N'Mã ngạch viên chức là giảng viên giảng dạy trong cơ sở giáo dục đại học công lập', 1, NULL, NULL, NULL)
INSERT [dbo].[Teacher_RanksOfficer] ([ID_Ranks], [Code_Ranks], [Name_Ranks], [Descript_Ranks], [status], [DP1], [DP2], [Note_Ranks]) VALUES (4, N'V.09.02.01', N'Giảng viên giáo dục nghề nghiệp cao cấp (hạng I)', N'Mã ngạch viên chức là giảng viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL)
INSERT [dbo].[Teacher_RanksOfficer] ([ID_Ranks], [Code_Ranks], [Name_Ranks], [Descript_Ranks], [status], [DP1], [DP2], [Note_Ranks]) VALUES (5, N'V.09.02.02', N'Giảng viên giáo dục nghề nghiệp chính (hạng II)', N'Mã ngạch viên chức là giảng viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL)
INSERT [dbo].[Teacher_RanksOfficer] ([ID_Ranks], [Code_Ranks], [Name_Ranks], [Descript_Ranks], [status], [DP1], [DP2], [Note_Ranks]) VALUES (6, N'V.09.02.03', N'Giảng viên giáo dục nghề nghiệp lý thuyết (hạng III)  ', N'Mã ngạch viên chức là giảng viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL)
INSERT [dbo].[Teacher_RanksOfficer] ([ID_Ranks], [Code_Ranks], [Name_Ranks], [Descript_Ranks], [status], [DP1], [DP2], [Note_Ranks]) VALUES (7, N'V.09.02.04', N'Giảng viên giáo dục nghề nghiệp thực hành (hạng III)', N'Mã ngạch viên chức là giảng viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL)
INSERT [dbo].[Teacher_RanksOfficer] ([ID_Ranks], [Code_Ranks], [Name_Ranks], [Descript_Ranks], [status], [DP1], [DP2], [Note_Ranks]) VALUES (8, N'V.09.02.05', N'Giáo viên giáo dục nghề nghiệp hạng I', N'Mã số chức danh nghề nghiệp giáo viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL)
INSERT [dbo].[Teacher_RanksOfficer] ([ID_Ranks], [Code_Ranks], [Name_Ranks], [Descript_Ranks], [status], [DP1], [DP2], [Note_Ranks]) VALUES (9, N'V.09.02.06', N' Giáo viên giáo dục nghề nghiệp hạng II ', N'Mã số chức danh nghề nghiệp giáo viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL)
INSERT [dbo].[Teacher_RanksOfficer] ([ID_Ranks], [Code_Ranks], [Name_Ranks], [Descript_Ranks], [status], [DP1], [DP2], [Note_Ranks]) VALUES (10, N'V.09.02.07', N'Giáo viên giáo dục nghề nghiệp mảng lý thuyết hạng III', N'Mã số chức danh nghề nghiệp giáo viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL)
INSERT [dbo].[Teacher_RanksOfficer] ([ID_Ranks], [Code_Ranks], [Name_Ranks], [Descript_Ranks], [status], [DP1], [DP2], [Note_Ranks]) VALUES (11, N'V.09.02.08', N'Giáo viên giáo dục nghề nghiệp mảng thực hành hạng III ', N'Mã số chức danh nghề nghiệp giáo viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL)
INSERT [dbo].[Teacher_RanksOfficer] ([ID_Ranks], [Code_Ranks], [Name_Ranks], [Descript_Ranks], [status], [DP1], [DP2], [Note_Ranks]) VALUES (12, N'V.09.02.09', N'Giáo viên giáo dục nghề nghiệp hạng IV', N'Mã số chức danh nghề nghiệp giáo viên giáo dục nghề nghiệp', 1, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Teacher_RanksOfficer] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher_Salary] ON 

INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (5, 1, 9920000, 9238000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (6, 2, 10496000, 9774400, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (7, 3, 11072000, 10310000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (8, 4, 11648000, 10847000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (9, 5, 12224000, 11383000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (10, 6, 12800000, 11920000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (11, 7, 7040000, 6556000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (12, 8, 7584000, 7062000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (13, 9, 8128000, 7569000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (14, 10, 8672000, 8075000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (15, 11, 9216000, 8582000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (16, 12, 9760000, 9089000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (17, 13, 10304000, 9595000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (18, 14, 10848000, 10102000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (19, 15, 9200000, 8567000, NULL, N'2020/01/01', NULL, 1, NULL)
INSERT [dbo].[Teacher_Salary] ([ID_Salary], [ID_Wage], [Wage_Salary], [Basic_Salary], [Sub_Salary], [Date_Salary], [DateIcre_Salary], [status], [DP1]) VALUES (20, 16, 9776000, 9103000, NULL, N'2020/01/01', NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Teacher_Salary] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher_Subject] ON 

INSERT [dbo].[Teacher_Subject] ([ID_Subject], [ID_Faculty], [Name_Subject], [Address_Subject], [Phone_Subject], [Leader], [Leader_Assis]) VALUES (1, 1, N'Công nghệ phần mềm', N'Tầng 2,  Tòa nhà điều hành – Trường ĐH SPKT Hưng Yên (Nhân Hòa – Mỹ Hào- Hưng Yên', N'02213689555', N'TS. Nguyễn Văn Quyết', N'TS. Chu Thị Minh Huệ')
INSERT [dbo].[Teacher_Subject] ([ID_Subject], [ID_Faculty], [Name_Subject], [Address_Subject], [Phone_Subject], [Leader], [Leader_Assis]) VALUES (2, 1, N'Mạng máy tính và truyền thông ', N'Tầng 2,  Tòa nhà điều hành – Trường ĐH SPKT Hưng Yên (Nhân Hòa – Mỹ Hào- Hưng Yên', N'0983081120', N'TS. Phạm MInh Chuẩn', NULL)
INSERT [dbo].[Teacher_Subject] ([ID_Subject], [ID_Faculty], [Name_Subject], [Address_Subject], [Phone_Subject], [Leader], [Leader_Assis]) VALUES (3, 1, N'Kỹ Thuật Máy Tính', N'Tầng 2,  Tòa nhà điều hành – Trường ĐH SPKT Hưng Yên (Nhân Hòa – Mỹ Hào- Hưng Yên', N'0962836394', N'TS. Nguyễn Đình Chiến', NULL)
INSERT [dbo].[Teacher_Subject] ([ID_Subject], [ID_Faculty], [Name_Subject], [Address_Subject], [Phone_Subject], [Leader], [Leader_Assis]) VALUES (4, 1, N'Hưng Yên Aptech: CNTT và TT', N'P107, Tòa nhà điều hành – Trường ĐH SPKT Hưng Yên (Nhân Hòa – Mỹ Hào- Hưng Yên', N'0945528686', N'TS. Vũ Khánh Quý', NULL)
SET IDENTITY_INSERT [dbo].[Teacher_Subject] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher_SubLession] ON 

INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (1, N'Lập trình hướng đối tượng(2+1)', N'Lý thuyết và thực hành ', 3, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (2, N'Cơ sở dữ liệu (3+1)', N'Lý thuyết và thực hành ', 4, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (3, N'Xác suất thống kê ', N'Lý thuyết', 2, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (4, N'Tiếng Anh 2', N'Lý thuyết', 3, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (5, N'Đồ Án 1: Xây dựng ứng dụng trên C#', NULL, 4, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (6, N'Tiếng Anh 3 ', N'Lý thuyết ', 2, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (7, N'Vật lý đại cương 2 (2+1)', N'Lý thuyết và thực hành ', 3, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (8, N'Giáo dục thể chất 3', N'Lý thuyết và thực hành', 1, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (9, N'Lập trình nâng cao với C# (2+1*)
', N'Lý thuyết và thực hành ', 3, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (10, N'CĐ1: Thiết kế Web với HTML,...(3+1*)
', N'Lý thuyết và thực hành', 4, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (11, N'ĐA2: Thiết kế Web với HTML5,CSS3,...
', NULL, 3, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (12, N'Hệ quản trị cơ sở dữ liệu (2+1*)
', N'Lý thuyết và thực hành', 3, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (13, N'Phân tích thiết kế phần mềm (2+1*)
', N'Lý thuyết và thực hành', 3, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (14, N'Kỹ năng mềm 2
', NULL, 1, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (15, N'Những NLCB của CN Mác-Lênin 1
', N'Lý thuyết', 2, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (16, N'ĐC về kinh tế và môi trường
', N'Lý thuyết', 2, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (17, N'Thiết kế và P.tích thuật toán (2+1*)
', N'Lý thuyết và thực hành', 3, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (18, N'ĐA3: XDHT Web với ASP.NET,...
', NULL, 3, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (19, N'Phân tích T.kế hướng đối tượng (2+1*)
', N'Lý thuyết và thực hành', 3, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (20, N'CĐ2: Lập trình Web với mô hình MVC(3+1*)
', N'Lý thuyết và thực hành', 4, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (21, N'Những NLCB của CN Mác-Lênin 2
', N'Lý thuyết', 3, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (22, N'Pháp luật đại cương
', N'Lý thuyết', 2, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (23, N'Phương pháp tính
', N'Lý thuyết', 2, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (24, N'CĐ3: LTW với PHP,... (3+1*)
', N'Lý thuyết và thực hành', 4, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (25, N'ĐA4: XDHT Web với PHP & MySQL
', NULL, 3, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (26, N'Toán rời rạc
', N'Lý thuyết', 4, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (27, N'Mạng máy tính (2+1*)
', N'Lý thuyết và thực hành', 3, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (28, N'Kỹ năng mềm 3
', NULL, 1, 1, NULL)
INSERT [dbo].[Teacher_SubLession] ([ID_Sub], [Name_Sub], [Type_Sub], [Number_credits_Sub], [status], [DP1]) VALUES (29, N'Tư tưởng Hồ Chí Minh
', N'Lý thuyết', 2, 1, NULL)
SET IDENTITY_INSERT [dbo].[Teacher_SubLession] OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher_Wage] ON 

INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (1, N'Bâc 1 ', 6.2, 1, N'Giáo sư và Giảng viên cao cấp

(Nhóm 1 (A3.1))')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (2, N'Bậc 2', 6.56, 1, N'Giáo sư và Giảng viên cao cấp

(Nhóm 1 (A3.1))')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (3, N'Bâc 3', 6.92, 1, N'Giáo sư và Giảng viên cao cấp

(Nhóm 1 (A3.1))')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (4, N'Bậc 4', 7.28, 1, N'Giáo sư và Giảng viên cao cấp

(Nhóm 1 (A3.1))')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (5, N'Bậc 5', 7.64, 1, N'Giáo sư và Giảng viên cao cấp

(Nhóm 1 (A3.1))')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (6, N'Bậc 6', 8, 1, N'Giáo sư và Giảng viên cao cấp

(Nhóm 1 (A3.1))')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (7, N'Bậc 1', 4.4, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (8, N'Bậc 2', 4.74, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (9, N'Bậc 3', 5.08, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (10, N'Bậc 4', 5.42, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (11, N'Bậc 5', 5.76, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (12, N'Bậc 6', 6.1, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (13, N'Bậc 7', 6.44, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (14, N'Bậc 8', 6.78, 1, N'Phó giáo sư- Giảng viên chính

(Nhóm 1 (A2.1))')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (15, N'Bậc 1', 5.75, 1, N'Nhóm 2 (A3.2)')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (16, N'Bậc 2', 6.11, 1, N'Nhóm 2 (A3.2)')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (17, N'Bậc 3', 6.47, 1, N'Nhóm 2 (A3.2)')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (19, N'Bậc 4', 6.83, 1, N'Nhóm 2 (A3.2)')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (20, N'Bậc 5', 7.19, 1, N'Nhóm 2 (A3.2)')
INSERT [dbo].[Teacher_Wage] ([ID_Wage], [Name_Wage], [Coeff_Wage], [status], [Group_Wage]) VALUES (21, N'Bậc 6', 7.55, 1, N'Nhóm 2 (A3.2)')
SET IDENTITY_INSERT [dbo].[Teacher_Wage] OFF
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD FOREIGN KEY([ID_Position])
REFERENCES [dbo].[Teacher_Position] ([ID_Position])
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD FOREIGN KEY([ID_Ranks])
REFERENCES [dbo].[Teacher_RanksOfficer] ([ID_Ranks])
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD FOREIGN KEY([ID_Subject])
REFERENCES [dbo].[Teacher_Subject] ([ID_Subject])
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD FOREIGN KEY([ID_Wage])
REFERENCES [dbo].[Teacher_Wage] ([ID_Wage])
GO
ALTER TABLE [dbo].[Teacher_Academic]  WITH CHECK ADD FOREIGN KEY([ID_Teacher])
REFERENCES [dbo].[Teacher] ([ID_Teacher])
GO
ALTER TABLE [dbo].[Teacher_Contract]  WITH CHECK ADD FOREIGN KEY([ID_Teacher])
REFERENCES [dbo].[Teacher] ([ID_Teacher])
GO
ALTER TABLE [dbo].[Teacher_DiscipRewards]  WITH CHECK ADD FOREIGN KEY([ID_Teacher])
REFERENCES [dbo].[Teacher] ([ID_Teacher])
GO
ALTER TABLE [dbo].[Teacher_Position]  WITH CHECK ADD FOREIGN KEY([ID_Faculty])
REFERENCES [dbo].[Teacher_Faculty] ([ID_Faculty])
GO
ALTER TABLE [dbo].[Teacher_Salary]  WITH CHECK ADD FOREIGN KEY([ID_Wage])
REFERENCES [dbo].[Teacher_Wage] ([ID_Wage])
GO
ALTER TABLE [dbo].[Teacher_SalaryRaise]  WITH CHECK ADD FOREIGN KEY([ID_Salary])
REFERENCES [dbo].[Teacher_Salary] ([ID_Salary])
GO
ALTER TABLE [dbo].[Teacher_SalaryRaise]  WITH CHECK ADD FOREIGN KEY([ID_Wage])
REFERENCES [dbo].[Teacher_Wage] ([ID_Wage])
GO
ALTER TABLE [dbo].[Teacher_Scientist]  WITH CHECK ADD FOREIGN KEY([ID_Teacher])
REFERENCES [dbo].[Teacher] ([ID_Teacher])
GO
ALTER TABLE [dbo].[Teacher_SignUp]  WITH CHECK ADD FOREIGN KEY([ID_Sub])
REFERENCES [dbo].[Teacher_SubLession] ([ID_Sub])
GO
ALTER TABLE [dbo].[Teacher_SignUp]  WITH CHECK ADD FOREIGN KEY([ID_Teacher])
REFERENCES [dbo].[Teacher] ([ID_Teacher])
GO
ALTER TABLE [dbo].[Teacher_Subject]  WITH CHECK ADD FOREIGN KEY([ID_Faculty])
REFERENCES [dbo].[Teacher_Faculty] ([ID_Faculty])
GO
USE [master]
GO
ALTER DATABASE [DB_DoAn5_1] SET  READ_WRITE 
GO

Create table User1(
 userID int IDENTITY(1,1),
 emailAddress varchar(255),
 password varchar(255) null,
 mame nvarchar(255),
 note nvarchar(255) null,
 status int,
 )