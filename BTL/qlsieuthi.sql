USE [master]
GO
/****** Object:  Database [QuanliSanPhamSieuThi]    Script Date: 3/31/2023 7:06:54 PM ******/
CREATE DATABASE [QuanliSanPhamSieuThi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanliSanPhamSieuThi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.GF63\MSSQL\DATA\QuanliSanPhamSieuThi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanliSanPhamSieuThi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.GF63\MSSQL\DATA\QuanliSanPhamSieuThi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanliSanPhamSieuThi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET  MULTI_USER 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanliSanPhamSieuThi', N'ON'
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET QUERY_STORE = OFF
GO
USE [QuanliSanPhamSieuThi]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/31/2023 7:06:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[PassWord] [nvarchar](1000) NOT NULL,
	[Role] [nvarchar](50) NULL,
	[Born] [nvarchar](50) NULL,
	[Sex] [nvarchar](50) NULL,
	[Birth] [date] NULL,
	[Contact] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill4]    Script Date: 3/31/2023 7:06:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill4](
	[idBill] [int] IDENTITY(1,1) NOT NULL,
	[nameKH] [nvarchar](100) NOT NULL,
	[namePr] [nvarchar](100) NOT NULL,
	[price] [float] NOT NULL,
	[amount] [float] NOT NULL,
	[ngaymua] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[idBill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ListOfProduct]    Script Date: 3/31/2023 7:06:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListOfProduct](
	[id] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/31/2023 7:06:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[idPr] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[id] [int] NOT NULL,
	[price] [float] NOT NULL,
	[amount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idPr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statistic]    Script Date: 3/31/2023 7:06:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistic](
	[nameKH] [nvarchar](100) NOT NULL,
	[sumBill] [float] NOT NULL,
	[ngaymua] [date] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([UserName], [Name], [PassWord], [Role], [Born], [Sex], [Birth], [Contact]) VALUES (N'staff4', N'Hoàng Minh Hùng', N'1', N'staff', N'Hải Phòng', N'Nam', CAST(N'2022-06-04' AS Date), N'0293021943')
INSERT [dbo].[Account] ([UserName], [Name], [PassWord], [Role], [Born], [Sex], [Birth], [Contact]) VALUES (N'admin2', N'Phạm Đức Thịnh', N'234', N'user', N'Tam Hiệp', N'Nam', CAST(N'2023-03-08' AS Date), N'09772322123')
INSERT [dbo].[Account] ([UserName], [Name], [PassWord], [Role], [Born], [Sex], [Birth], [Contact]) VALUES (N'admin', N'Nguyễn Đăng Nhân', N'1', N'admin', N'Hà Nội', N'Nam', CAST(N'2002-07-05' AS Date), N'0999999999')
INSERT [dbo].[Account] ([UserName], [Name], [PassWord], [Role], [Born], [Sex], [Birth], [Contact]) VALUES (N'admin1', N'Nguyễn Hữu Huy', N'1', N'admin', N'Hà Nội', N'Nam', CAST(N'2002-08-26' AS Date), N'0933333333')
GO
SET IDENTITY_INSERT [dbo].[Bill4] ON 

INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (1, N'Công', N'Bắp Cải', 70000, 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (4, N'Nhân', N'Táo Mĩ', 10000, 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (5, N'Công', N'Kẹo Socola', 150000, 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (6, N'Công', N'Rau Ngót', 8000, 2, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (7, N'Công', N'Thịt Bò', 40000, 2, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (8, N'Công', N'Thịt Bò', 40000, 3, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (9, N'Công', N'Kẹo Socola', 150000, 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (10, N'Công', N'Bắp Cải', 7000, 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (11, N'Công', N'Nước Cam', 7000, 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (12, N'Dương', N'Kẹo Socola', 150000, 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (13, N'Dương', N'Rau Ngót', 8000, 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (14, N'Nhân', N'Thịt Bò', 40000, 1, CAST(N'2022-06-01' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (15, N'Minh', N'Kẹo Socola', 150000, 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (16, N'Duy', N'CoCa', 8000, 2, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (17, N'Duy', N'CoCa', 8000, 2, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (22, N'Hùng', N'Thịt Lợn', 30000, 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (29, N'Huy', N'Bánh Ngọt', 10000, 3, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (30, N'Huy', N'Bánh Ngọt', 10000, 3, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (31, N'abc', N'Táo Mĩ', 10000, 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (32, N'abc', N'Táo Mĩ', 10000, 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (36, N'asdff', N'Rau Ngót', 8000, 1, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (37, N'asdff', N'Rau Ngót', 8000, 1, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (38, N'asdff', N'Rau Ngót', 8000, 1, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (39, N'ádsda', N'Thịt Bò', 40000, 2, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (40, N'ádsda', N'Thịt Bò', 40000, 2, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (41, N'sew', N'Táo Mĩ', 10000, 2, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (42, N'sew', N'Táo Mĩ', 10000, 2, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (55, N'asw', N'Thịt Bò', 40000, 3, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (59, N'asd', N'Kẹo Socola', 150000, 3, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (61, N'Tài', N'Bắp Cải', 7000, 4, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (66, N'Phùng Ký Tài', N'Bánh Ngọt', 10000, 3, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (67, N'Phùng Ký Tài', N'Bắp Cải', 7000, 1, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (68, N'Phùng Ký Tài', N'Thịt Gà', 100000, 2, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (69, N'Phùng Ký Tài', N'CoCa', 8000, 2, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (70, N'Nguyễn Kim báu', N'Bánh Mì Ruốc', 8000, 5, CAST(N'2022-06-13' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (71, N'Nguyễn Kim báu', N'Cá Thu', 100000, 2, CAST(N'2022-06-13' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (73, N'ádasdsa', N'Bánh Ngọt', 10000, 2, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (74, N'Thinh', N'Bánh Ngọt', 10000, 2, CAST(N'2023-03-08' AS Date))
INSERT [dbo].[Bill4] ([idBill], [nameKH], [namePr], [price], [amount], [ngaymua]) VALUES (75, N'Thinh', N'Thịt Bò', 40000, 2, CAST(N'2023-03-08' AS Date))
SET IDENTITY_INSERT [dbo].[Bill4] OFF
GO
INSERT [dbo].[ListOfProduct] ([id], [name]) VALUES (1, N'Bánh')
INSERT [dbo].[ListOfProduct] ([id], [name]) VALUES (2, N'Rau')
INSERT [dbo].[ListOfProduct] ([id], [name]) VALUES (3, N'Trái Cây')
INSERT [dbo].[ListOfProduct] ([id], [name]) VALUES (4, N'Đồ chơi')
INSERT [dbo].[ListOfProduct] ([id], [name]) VALUES (5, N'Thịt')
INSERT [dbo].[ListOfProduct] ([id], [name]) VALUES (6, N'Hải Sản')
INSERT [dbo].[ListOfProduct] ([id], [name]) VALUES (7, N'Mỹ Phẩm')
INSERT [dbo].[ListOfProduct] ([id], [name]) VALUES (8, N'Kẹo')
INSERT [dbo].[ListOfProduct] ([id], [name]) VALUES (9, N'Gia vị')
INSERT [dbo].[ListOfProduct] ([id], [name]) VALUES (10, N'Lương thực')
INSERT [dbo].[ListOfProduct] ([id], [name]) VALUES (11, N'Đồ Ăn Vặt')
INSERT [dbo].[ListOfProduct] ([id], [name]) VALUES (12, N'Đồ Uống')
INSERT [dbo].[ListOfProduct] ([id], [name]) VALUES (13, N'Đồ Gia Dụng')
INSERT [dbo].[ListOfProduct] ([id], [name]) VALUES (14, N'Đồ Trang Trí')
GO
INSERT [dbo].[Products] ([idPr], [name], [id], [price], [amount]) VALUES (1, N'Bánh Ngọt', 1, 10000, 37)
INSERT [dbo].[Products] ([idPr], [name], [id], [price], [amount]) VALUES (2, N'Bánh Mì Ruốc', 1, 8000, 33)
INSERT [dbo].[Products] ([idPr], [name], [id], [price], [amount]) VALUES (3, N'Cá Thu', 6, 100000, 25)
INSERT [dbo].[Products] ([idPr], [name], [id], [price], [amount]) VALUES (4, N'Bắp Cải', 2, 7000, 13)
INSERT [dbo].[Products] ([idPr], [name], [id], [price], [amount]) VALUES (5, N'Rau Ngót', 2, 8000, 45)
INSERT [dbo].[Products] ([idPr], [name], [id], [price], [amount]) VALUES (6, N'Táo Mĩ', 3, 10000, 35)
INSERT [dbo].[Products] ([idPr], [name], [id], [price], [amount]) VALUES (7, N'Thịt Lợn', 5, 30000, 20)
INSERT [dbo].[Products] ([idPr], [name], [id], [price], [amount]) VALUES (8, N'Thịt Bò', 5, 40000, 25)
INSERT [dbo].[Products] ([idPr], [name], [id], [price], [amount]) VALUES (9, N'Kẹo Socola', 8, 150000, 12)
INSERT [dbo].[Products] ([idPr], [name], [id], [price], [amount]) VALUES (10, N'CoCa', 12, 8000, 44)
INSERT [dbo].[Products] ([idPr], [name], [id], [price], [amount]) VALUES (11, N'Thịt Gà', 5, 100000, 48)
INSERT [dbo].[Products] ([idPr], [name], [id], [price], [amount]) VALUES (13, N'Cá Chép Giòn', 6, 20000, 30)
GO
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'Công', 164000, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'Dương', 158000, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'Nhân', 40000, CAST(N'2022-06-01' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'Minh', 150000, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'Duy', 16000, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'Huy', 60000, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'abc', 20000, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'asd', 24000, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'asdff', 24000, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'ádsda', 160000, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'sew', 20000, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'asd', 60000, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'asd', 45000, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'asd', 147000, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'Nguyễn Kim báu', 360000, CAST(N'2022-06-13' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'Nguyễn Kim báu', 180000, CAST(N'2022-06-13' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'ádasdsa', 20000, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'Thinh', 50000, CAST(N'2023-03-08' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'asd', 80000, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'asd', 1800, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'asw', 60000, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'asd', 33000, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'asd', 225000, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'Tài', 14000, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'Phùng Ký Tài', 253000, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Statistic] ([nameKH], [sumBill], [ngaymua]) VALUES (N'Phùng Ký Tài', 126500, CAST(N'2022-06-08' AS Date))
GO
ALTER TABLE [dbo].[ListOfProduct] ADD  DEFAULT (N'Chưa đặt tên') FOR [name]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (N'Chưa đặt tên') FOR [name]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [price]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ListOfProduct] FOREIGN KEY([id])
REFERENCES [dbo].[ListOfProduct] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ListOfProduct]
GO
/****** Object:  StoredProcedure [dbo].[tbl_Products_LoadDL]    Script Date: 3/31/2023 7:06:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[tbl_Products_LoadDL]
as select * from Products
GO
/****** Object:  StoredProcedure [dbo].[tbl_Products_TimKiemSP]    Script Date: 3/31/2023 7:06:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[tbl_Products_TimKiemSP]
(
	@Sanpham nvarchar(100)
)
as select * from Products
where name like '%' +@Sanpham+'%'
GO
USE [master]
GO
ALTER DATABASE [QuanliSanPhamSieuThi] SET  READ_WRITE 
GO
