USE [master]
GO
/****** Object:  Database [DBWEBGIAY]    Script Date: 14/10/2022 9:43:05 CH ******/
CREATE DATABASE [DBWEBGIAY]

ALTER DATABASE [DBWEBGIAY] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBWEBGIAY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBWEBGIAY] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBWEBGIAY] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBWEBGIAY] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBWEBGIAY] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBWEBGIAY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBWEBGIAY] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBWEBGIAY] SET  MULTI_USER 
GO
ALTER DATABASE [DBWEBGIAY] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBWEBGIAY] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBWEBGIAY] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBWEBGIAY] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBWEBGIAY] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBWEBGIAY] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBWEBGIAY] SET QUERY_STORE = OFF
GO
USE [DBWEBGIAY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 14/10/2022 9:43:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[MaAd] [int] IDENTITY(1,1) NOT NULL,
	[UserAdmin] [nvarchar](15) NULL,
	[PassAdmin] [nvarchar](15) NULL,
	[Hoten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaAd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 14/10/2022 9:43:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONTHANG](
	[MaDonHang] [int] NOT NULL,
	[MaGIAY] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaGIAY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETGIAY]    Script Date: 14/10/2022 9:43:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETGIAY](
	[MaGIAY] [int] NOT NULL,
	[MaSize] [int] NOT NULL,
	[SoLuongTon] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGIAY] ASC,
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 14/10/2022 9:43:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[Dathanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Tongtien] [decimal](18, 0) NULL,
	[MaKH] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIAY]    Script Date: 14/10/2022 9:43:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIAY](
	[MaGIAY] [int] IDENTITY(1,1) NOT NULL,
	[TenGIAY] [nvarchar](50) NULL,
	[Giaban] [decimal](18, 0) NULL,
	[Mota] [nvarchar](100) NULL,
	[Anhbia] [varchar](50) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[MaLOAI] [int] NOT NULL,
	[MaHANG] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGIAY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANG]    Script Date: 14/10/2022 9:43:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANG](
	[MaHANG] [int] IDENTITY(1,1) NOT NULL,
	[TenHANG] [nvarchar](30) NULL,
	[Diachi] [nvarchar](100) NULL,
	[DienThoai] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 14/10/2022 9:43:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](30) NULL,
	[Taikhoan] [nvarchar](30) NULL,
	[Matkhau] [nvarchar](15) NULL,
	[Email] [nvarchar](50) NULL,
	[DiachiKH] [nvarchar](100) NULL,
	[DienthoaiKH] [varchar](11) NULL,
	[Ngaysinh] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAI]    Script Date: 14/10/2022 9:43:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAI](
	[MaLOAI] [int] IDENTITY(1,1) NOT NULL,
	[TenLOAI] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIZEGIAY]    Script Date: 14/10/2022 9:43:06 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIZEGIAY](
	[MaSize] [int] IDENTITY(1,1) NOT NULL,
	[Size] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([MaAd], [UserAdmin], [PassAdmin], [Hoten]) VALUES (1, N'admin', N'2022', N'Nguyễn Trường Đạt')
INSERT [dbo].[Admin] ([MaAd], [UserAdmin], [PassAdmin], [Hoten]) VALUES (2, N'user', N'2001', N'Đặng Duy Mạnh')
SET IDENTITY_INSERT [dbo].[Admin] OFF
GO
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [Soluong], [Dongia]) VALUES (1, 30, 1, CAST(6890000 AS Decimal(18, 0)))
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaGIAY], [Soluong], [Dongia]) VALUES (1, 32, 1, CAST(15596000 AS Decimal(18, 0)))
GO
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (1, 1, 30)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (1, 4, 70)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (1, 7, 70)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (1, 8, 70)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (1, 9, 70)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (1, 10, 70)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (1, 11, 0)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (1, 13, 69)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (1, 16, 70)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (2, 1, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (2, 14, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (3, 2, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (3, 14, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (4, 3, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (4, 14, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (5, 5, 34)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (5, 15, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (6, 6, 32)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (6, 15, 33)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (7, 8, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (7, 15, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (8, 12, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (8, 15, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (9, 13, 34)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (9, 15, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (10, 14, 34)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (10, 15, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (11, 3, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (12, 4, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (13, 5, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (14, 6, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (15, 7, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (16, 8, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (17, 9, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (18, 10, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (19, 11, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (20, 12, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (21, 13, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (22, 14, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (23, 16, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (24, 15, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (25, 17, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (26, 4, 56)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (26, 5, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (26, 7, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (26, 8, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (26, 9, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (26, 13, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (26, 15, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (27, 1, 58)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (27, 3, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (27, 5, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (27, 6, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (27, 7, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (27, 8, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (27, 9, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (27, 11, 59)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (27, 14, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (27, 15, 60)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (28, 1, 34)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (29, 2, 34)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (30, 3, 34)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (31, 4, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (32, 5, 33)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (33, 6, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (34, 13, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (35, 14, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (36, 15, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (37, 16, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (38, 17, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (39, 1, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (40, 15, 14)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (40, 17, 20)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (41, 13, 18)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (41, 16, 35)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (42, 16, 33)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (42, 17, 20)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (43, 17, 19)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (44, 16, 22)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (45, 17, 11)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (46, 15, 18)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (47, 17, 34)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (48, 15, 29)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (48, 17, 20)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (49, 16, 21)
INSERT [dbo].[CHITIETGIAY] ([MaGIAY], [MaSize], [SoLuongTon]) VALUES (49, 17, 34)
GO
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([MaDonHang], [Ngaydat], [Ngaygiao], [Dathanhtoan], [Tinhtranggiaohang], [Tongtien], [MaKH]) VALUES (1, CAST(N'2022-10-07T16:17:11.780' AS DateTime), NULL, 0, 0, CAST(22486000 AS Decimal(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[GIAY] ON 

INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (1, N'ADIDAS STAN SMITH WHITE', CAST(1337500 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'002.jpg', CAST(N'2022-04-12T00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (2, N'ADIDAS SUPER STAR', CAST(2550000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'004.jpg', CAST(N'2022-04-12T00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (3, N'ADIDAS STAN SMITH GREEN', CAST(1340000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'005.jpg', CAST(N'2022-04-12T00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (4, N'NIKE AIR FORCE BROWN 1', CAST(2300000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'006.jpg', CAST(N'2022-04-12T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (5, N'NIKE AIR FORCE 1 BLACK', CAST(1800000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'008.jpg', CAST(N'2022-04-12T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (6, N'JORDAN 1 BLACK', CAST(4050000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'009.jpg', CAST(N'2022-04-12T00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (7, N'NIKE AIR FORCE 1 BROWN 2', CAST(1040000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'011.jpg', CAST(N'2022-04-12T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (8, N'ADIDAS YEEZY WHITE', CAST(10250000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'015.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 1, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (9, N'JORDAN 1 BLUE', CAST(4031500 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'016.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (10, N'JORDAN 1 PINK', CAST(3070000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'017.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (11, N'NIKE AIR FORCE 1 BIG BANG', CAST(2950000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'023.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (12, N'NIKE AIR FORCE 1 WGREEN', CAST(2098000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'024.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (13, N'ADIDAS NMD HR PURPLE', CAST(8900000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'025.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (14, N'ADIDAS ULTRABOOST BB', CAST(4550000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'026.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (15, N'ADIDAS ULTRABOOST WHITE', CAST(4271500 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'027.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (16, N'ADIDAS ULTRABOOST BAPE', CAST(11790000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'028.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (17, N'ADIDAS YEEZY 700 GB', CAST(15337500 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'029.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (18, N'JORDAN LEBRONCE WHITE', CAST(6000000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'030.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (19, N'JORDAN 12', CAST(4500000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'031.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (20, N'NIKE AIR FORCE 1 NORMAL', CAST(2250000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'032.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (21, N'NIKE AIR FORCE 1 WRED', CAST(2550000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'033.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (22, N'NIKE JORDAN GREEN', CAST(4000000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'033A.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (23, N'NIKE KORTEX BASE', CAST(4000000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'035.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (24, N'ADIDAS NMD HR WHITE', CAST(7800000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'036.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (25, N'ADIDAS NMD GREY', CAST(6000000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'037.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (26, N'ADIDAS NMD BASE', CAST(6200000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'038.jpg', CAST(N'2022-05-15T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (27, N'ADIDAS YEEZY 700 ORANGE', CAST(17800000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'039.jpg', CAST(N'2022-05-18T00:00:00.000' AS DateTime), 2, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (28, N'NIKE VARPOMAX', CAST(3890000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'040.jpg', CAST(N'2022-05-18T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (29, N'NIKE JORDAN BROWN', CAST(1950000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'041.jpg', CAST(N'2022-05-18T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (30, N'NIKE AIR MAX 90', CAST(6890000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'042.jpg', CAST(N'2022-05-18T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (31, N'NIKE AIR MAX 90 BLUE', CAST(5505000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'043.jpg', CAST(N'2022-05-18T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (32, N'ADIDAS YEEZY 350 GP', CAST(15596000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'044.jpg', CAST(N'2022-05-18T00:00:00.000' AS DateTime), 3, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (33, N'ADIDAS YEEZY 350 BLACK', CAST(12674000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'045.jpg', CAST(N'2022-05-18T00:00:00.000' AS DateTime), 3, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (34, N'ADIDAS YEEZY 500 BASE', CAST(8020000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'054.jpg', CAST(N'2022-05-18T00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (35, N'ADIDAS SUPERSTAR ORANGE', CAST(6020000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'055.jpg', CAST(N'2022-05-18T00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (36, N'ADIDAS SUPERSTAR GREY', CAST(6510000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'056.jpg', CAST(N'2022-05-18T00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (37, N'ADIDAS NMD HR YB', CAST(9200000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'057.jpg', CAST(N'2022-05-18T00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (38, N'ADIDAS YEZZY 500 SEA', CAST(11150000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'058.jpg', CAST(N'2022-05-18T00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (39, N'ADIDAS YEEZY 700 BASE', CAST(15000000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'059.jpg', CAST(N'2022-05-18T00:00:00.000' AS DateTime), 4, 2)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (40, N'JORDAN AIR 8', CAST(8300000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'060.jpg', CAST(N'2022-04-09T00:00:00.000' AS DateTime), 3, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (41, N'JORDAN AIR 8 GREY', CAST(9500000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'061.jpg', CAST(N'2022-04-09T00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (42, N'JORDAN AIR 5 YELLOW', CAST(10000000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'062.jpg', CAST(N'2022-04-09T00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (43, N'JORDAN AIR 5 BLACK', CAST(9250000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'063.jpg', CAST(N'2022-04-08T00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (44, N'JORDAN AIR 5 RED', CAST(9780000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'064.jpg', CAST(N'2022-04-09T00:00:00.000' AS DateTime), 2, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (45, N'JORDAN AIR 10 WHITE', CAST(10580000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'065.jpg', CAST(N'2022-04-09T00:00:00.000' AS DateTime), 4, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (46, N'JORDAN AIR 10 BLUE', CAST(11500000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'066.jpg', CAST(N'2022-04-09T00:00:00.000' AS DateTime), 3, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (47, N'JORDAN AIR 4 WHITE', CAST(7500000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'067.jpg', CAST(N'2022-04-09T00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (48, N'NIKE AIR MAX 90 RW', CAST(4590000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'068.jpg', CAST(N'2022-04-09T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[GIAY] ([MaGIAY], [TenGIAY], [Giaban], [Mota], [Anhbia], [Ngaycapnhat], [MaLOAI], [MaHANG]) VALUES (49, N'JORDAN 1 RETRO', CAST(12580000 AS Decimal(18, 0)), N'BẢO HÀNH 6 THÁNG, Bảo hành keo trọn đời', N'069.jpg', CAST(N'2022-04-09T00:00:00.000' AS DateTime), 1, 3)
SET IDENTITY_INSERT [dbo].[GIAY] OFF
GO
SET IDENTITY_INSERT [dbo].[HANG] ON 

INSERT [dbo].[HANG] ([MaHANG], [TenHANG], [Diachi], [DienThoai]) VALUES (1, N'NIKE', N'Washington County, Oregon, Mỹ (Near Beaverton, Oregon)', N'123456789')
INSERT [dbo].[HANG] ([MaHANG], [TenHANG], [Diachi], [DienThoai]) VALUES (2, N'ADIDAS', N'Herzogenaurach, Đức', N'9876543210')
INSERT [dbo].[HANG] ([MaHANG], [TenHANG], [Diachi], [DienThoai]) VALUES (3, N'JORDAN', N'Nhật Bản', N'6548435486')
SET IDENTITY_INSERT [dbo].[HANG] OFF
GO
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (1, N'Nguyễn Đình An', N'nguyenan890', N'nguyenan890', N'nguyenan890@gmail.com', N'TPHCM', N'703635220', CAST(N'2022-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (2, N'Huỳnh Lê Minh Hoàng', N'hoanghuynh123', N'hoanghuynh123', N'hoanghuynh123@gmail.com', N'TPHCM', N'703635229', CAST(N'2022-04-09T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (3, N'Nguyễn Đoàn Anh Tuấn', N'anhtuan890', N'anhtuan890', N'anhtuan890@gmail.com', N'TPHCM', N'703635220', CAST(N'2022-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [Taikhoan], [Matkhau], [Email], [DiachiKH], [DienthoaiKH], [Ngaysinh]) VALUES (4, N'Đặng Duy Mạnh', N'manh', N'manh', N'dangduymanh2010@gmail.com', N'Quang ngai', N'374160067', CAST(N'2022-10-20T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAI] ON 

INSERT [dbo].[LOAI] ([MaLOAI], [TenLOAI]) VALUES (1, N'GIÀY SNEAKER')
INSERT [dbo].[LOAI] ([MaLOAI], [TenLOAI]) VALUES (2, N'GIÀY STREET')
INSERT [dbo].[LOAI] ([MaLOAI], [TenLOAI]) VALUES (3, N'GIÀY CUSTOM')
INSERT [dbo].[LOAI] ([MaLOAI], [TenLOAI]) VALUES (4, N'GIÀY COMFORT')
SET IDENTITY_INSERT [dbo].[LOAI] OFF
GO
SET IDENTITY_INSERT [dbo].[SIZEGIAY] ON 

INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (1, 30)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (2, 31)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (3, 32)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (4, 33)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (5, 34)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (6, 35)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (7, 36)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (8, 37)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (9, 38)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (10, 39)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (11, 40)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (12, 41)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (13, 42)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (14, 43)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (15, 44)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (16, 45)
INSERT [dbo].[SIZEGIAY] ([MaSize], [Size]) VALUES (17, 46)
SET IDENTITY_INSERT [dbo].[SIZEGIAY] OFF
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD FOREIGN KEY([MaGIAY])
REFERENCES [dbo].[GIAY] ([MaGIAY])
GO
ALTER TABLE [dbo].[CHITIETGIAY]  WITH CHECK ADD FOREIGN KEY([MaGIAY])
REFERENCES [dbo].[GIAY] ([MaGIAY])
GO
ALTER TABLE [dbo].[CHITIETGIAY]  WITH CHECK ADD FOREIGN KEY([MaSize])
REFERENCES [dbo].[SIZEGIAY] ([MaSize])
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[GIAY]  WITH CHECK ADD FOREIGN KEY([MaHANG])
REFERENCES [dbo].[HANG] ([MaHANG])
GO
ALTER TABLE [dbo].[GIAY]  WITH CHECK ADD FOREIGN KEY([MaLOAI])
REFERENCES [dbo].[LOAI] ([MaLOAI])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD CHECK  (([Dongia]>(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[GIAY]  WITH CHECK ADD CHECK  (([Giaban]>(0)))
GO
ALTER TABLE [dbo].[SIZEGIAY]  WITH CHECK ADD CHECK  (([Size]>(0)))
GO
USE [master]
GO
ALTER DATABASE [DBWEBGIAY] SET  READ_WRITE 
GO
