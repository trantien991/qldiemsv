USE [master]
GO
/****** Object:  Database [quanlidiem]    Script Date: 1/5/2020 7:00:53 PM ******/
CREATE DATABASE [quanlidiem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'quanlidiem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\quanlidiem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'quanlidiem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\quanlidiem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [quanlidiem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [quanlidiem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [quanlidiem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [quanlidiem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [quanlidiem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [quanlidiem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [quanlidiem] SET ARITHABORT OFF 
GO
ALTER DATABASE [quanlidiem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [quanlidiem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [quanlidiem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [quanlidiem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [quanlidiem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [quanlidiem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [quanlidiem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [quanlidiem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [quanlidiem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [quanlidiem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [quanlidiem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [quanlidiem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [quanlidiem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [quanlidiem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [quanlidiem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [quanlidiem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [quanlidiem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [quanlidiem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [quanlidiem] SET RECOVERY FULL 
GO
ALTER DATABASE [quanlidiem] SET  MULTI_USER 
GO
ALTER DATABASE [quanlidiem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [quanlidiem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [quanlidiem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [quanlidiem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'quanlidiem', N'ON'
GO
USE [quanlidiem]
GO
/****** Object:  Table [dbo].[BangDiem]    Script Date: 1/5/2020 7:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangDiem](
	[MaDiem] [int] NOT NULL,
	[Tongdiem] [nvarchar](50) NULL,
	[HocKi] [nvarchar](50) NULL,
 CONSTRAINT [PK_BangDiem] PRIMARY KEY CLUSTERED 
(
	[MaDiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 1/5/2020 7:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[MaGV] [int] NOT NULL,
	[TenGV] [nvarchar](50) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HockiNienKhoa]    Script Date: 1/5/2020 7:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HockiNienKhoa](
	[MaHocKiNienKhoa] [int] NOT NULL,
	[HocKi] [nvarchar](50) NULL,
	[NienKhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_HockiNienKhoa] PRIMARY KEY CLUSTERED 
(
	[MaHocKiNienKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 1/5/2020 7:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [int] NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lop]    Script Date: 1/5/2020 7:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [int] NOT NULL,
	[TenLop] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 1/5/2020 7:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMonHoc] [int] NOT NULL,
	[TenMonHoc] [nvarchar](50) NULL,
	[Tinchi] [nvarchar](50) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nganh]    Script Date: 1/5/2020 7:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nganh](
	[MaNganh] [int] NOT NULL,
	[TenNganh] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nganh] PRIMARY KEY CLUSTERED 
(
	[MaNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 1/5/2020 7:00:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [int] NOT NULL,
	[TenSV] [nvarchar](50) NULL,
	[GT] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](50) NULL
) ON [PRIMARY]

GO
INSERT [dbo].[BangDiem] ([MaDiem], [Tongdiem], [HocKi]) VALUES (0, N'', N'')
INSERT [dbo].[BangDiem] ([MaDiem], [Tongdiem], [HocKi]) VALUES (1, N'8', N'1')
INSERT [dbo].[BangDiem] ([MaDiem], [Tongdiem], [HocKi]) VALUES (2, N'5', N'2')
INSERT [dbo].[BangDiem] ([MaDiem], [Tongdiem], [HocKi]) VALUES (3, N'6', N'1')
INSERT [dbo].[BangDiem] ([MaDiem], [Tongdiem], [HocKi]) VALUES (4, N'5', N'1')
INSERT [dbo].[BangDiem] ([MaDiem], [Tongdiem], [HocKi]) VALUES (5, N'7', N'2')
INSERT [dbo].[BangDiem] ([MaDiem], [Tongdiem], [HocKi]) VALUES (6, N'5', N'1')
INSERT [dbo].[BangDiem] ([MaDiem], [Tongdiem], [HocKi]) VALUES (7, N'8', N'2')
INSERT [dbo].[BangDiem] ([MaDiem], [Tongdiem], [HocKi]) VALUES (8, N'3', N'1')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV]) VALUES (1, N'tr?n th? thu? duong')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV]) VALUES (2, N'Lê Văn Lượng')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV]) VALUES (3, N'Trần Thành Tiến')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV]) VALUES (4, N'Nguyễn Minh Luân')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV]) VALUES (5, N'Du van Hi?u')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV]) VALUES (6, N'Lưu Quan Qui')
INSERT [dbo].[GiaoVien] ([MaGV], [TenGV]) VALUES (7, N'Bùi Quốc Qui')
INSERT [dbo].[HockiNienKhoa] ([MaHocKiNienKhoa], [HocKi], [NienKhoa]) VALUES (1, N'1', N'2018-2019')
INSERT [dbo].[HockiNienKhoa] ([MaHocKiNienKhoa], [HocKi], [NienKhoa]) VALUES (2, N'1', N'2018-2019')
INSERT [dbo].[HockiNienKhoa] ([MaHocKiNienKhoa], [HocKi], [NienKhoa]) VALUES (3, N'2', N'2018-2019')
INSERT [dbo].[HockiNienKhoa] ([MaHocKiNienKhoa], [HocKi], [NienKhoa]) VALUES (4, N'1', N'2018-2019')
INSERT [dbo].[HockiNienKhoa] ([MaHocKiNienKhoa], [HocKi], [NienKhoa]) VALUES (5, N'1', N'2018-2020')
INSERT [dbo].[HockiNienKhoa] ([MaHocKiNienKhoa], [HocKi], [NienKhoa]) VALUES (6, N'2', N'2017-2019')
INSERT [dbo].[HockiNienKhoa] ([MaHocKiNienKhoa], [HocKi], [NienKhoa]) VALUES (7, N'1', N'2019-2022')
INSERT [dbo].[HockiNienKhoa] ([MaHocKiNienKhoa], [HocKi], [NienKhoa]) VALUES (8, N'1', N'2015-2018')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (1, N'Dược Điều Dưỡng')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (2, N'Kỹ Thuật Công Nghệ')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (3, N'Kinh Tế Tài Chính Ngân Hàng')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (4, N'Cơ Bản')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (5, N'Sinh Hoc Ứng Dụng')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (6, N'Quản trị kinh doanh')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa]) VALUES (7, N'Đào Tạo Thường Xuyên')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (1, N'CNTT12')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (2, N'Luật 12A')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (3, N'Luật 12B')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (4, N'Luật 12C')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (5, N'Điện Tử 12A')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (6, N'Xây Dựng 12A')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (7, N'Dược 12A')
INSERT [dbo].[Lop] ([MaLop], [TenLop]) VALUES (8, N'Dược 12B')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [Tinchi]) VALUES (1, N'Đại Số Tuyến Tính', N'3')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [Tinchi]) VALUES (2, N'Xác Suất Thống Kê', N'3')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [Tinchi]) VALUES (3, N'Lập Trình Di Động ', N'3')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [Tinchi]) VALUES (4, N'Niên Luận 2', N'1')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [Tinchi]) VALUES (5, N'Niên Luận 3', N'1')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [Tinchi]) VALUES (6, N'Lập Trình AI', N'4')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [Tinchi]) VALUES (7, N'Lý Thuyết Xếp Hàng', N'2')
INSERT [dbo].[MonHoc] ([MaMonHoc], [TenMonHoc], [Tinchi]) VALUES (8, N'L?p Trình Nâng Cao 3', N'3')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (1, N'Công Nghệ Thông Tin')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (2, N'Dược')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (3, N'Luật')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (4, N'Quản Trị Kinh Doanh')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (5, N'Điện - Điện Tử')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (6, N'Ngữ Văn')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (7, N'Xây Dựng')
INSERT [dbo].[Nganh] ([MaNganh], [TenNganh]) VALUES (8, N'Tài Chính Ngân Hàng')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GT], [NgaySinh]) VALUES (11, N'Trần Thành Tiến', N'Nam', N'05/08/1999')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GT], [NgaySinh]) VALUES (12, N'Lê Văn Lượng', N'Nữ', N'05/09/1998')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GT], [NgaySinh]) VALUES (13, N'Trần Thị Thuỳ Dương', N'Nữ', N'12/1/1999')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GT], [NgaySinh]) VALUES (15, N'Bùi Quốc Vi', N'Nữ', N'12/12/1998')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GT], [NgaySinh]) VALUES (17, N'Dư Văn Hiếu', N'Nam', N'01/03/1995')
USE [master]
GO
ALTER DATABASE [quanlidiem] SET  READ_WRITE 
GO
