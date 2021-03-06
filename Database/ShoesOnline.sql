USE [master]
GO
/****** Object:  Database [ShoesOnline]    Script Date: 9/19/2021 5:23:45 AM ******/
CREATE DATABASE [ShoesOnline]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoesOnline', FILENAME = N'D:\Đồ Án Cơ Sở\Database\ShoesOnline.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShoesOnline_log', FILENAME = N'D:\Đồ Án Cơ Sở\Database\ShoesOnline_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ShoesOnline] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoesOnline].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoesOnline] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoesOnline] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoesOnline] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoesOnline] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoesOnline] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoesOnline] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoesOnline] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoesOnline] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoesOnline] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoesOnline] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoesOnline] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoesOnline] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoesOnline] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoesOnline] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoesOnline] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShoesOnline] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoesOnline] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoesOnline] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoesOnline] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoesOnline] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoesOnline] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoesOnline] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoesOnline] SET RECOVERY FULL 
GO
ALTER DATABASE [ShoesOnline] SET  MULTI_USER 
GO
ALTER DATABASE [ShoesOnline] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoesOnline] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoesOnline] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoesOnline] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShoesOnline] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShoesOnline] SET QUERY_STORE = OFF
GO
USE [ShoesOnline]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [ShoesOnline]
GO
/****** Object:  Table [dbo].[ctDonHang]    Script Date: 9/19/2021 5:23:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctDonHang](
	[soDH] [int] NOT NULL,
	[maSP] [varchar](30) NOT NULL,
	[soLuong] [int] NULL,
	[giaBan] [bigint] NULL,
	[giamGia] [bigint] NULL,
 CONSTRAINT [PK__ctDonHan__331D82261C57C288] PRIMARY KEY CLUSTERED 
(
	[soDH] ASC,
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[donHang]    Script Date: 9/19/2021 5:23:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[donHang](
	[soDH] [int] IDENTITY(1,1) NOT NULL,
	[tenKH] [nvarchar](50) NOT NULL,
	[maKH] [int] NOT NULL,
	[taiKhoan] [varchar](20) NOT NULL,
	[ngayDat] [datetime] NULL,
	[ngayGH] [datetime] NULL,
	[diachiGH] [nvarchar](50) NULL,
 CONSTRAINT [PK__donHang__331D82265B83EA33] PRIMARY KEY CLUSTERED 
(
	[soDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 9/19/2021 5:23:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [int] IDENTITY(1,1) NOT NULL,
	[tenKH] [nvarchar](50) NOT NULL,
	[soDT] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[diaChi] [nvarchar](50) NULL,
	[ngaySinh] [datetime] NULL,
	[gioiTinh] [nvarchar](10) NULL,
	[maQH] [int] NULL,
 CONSTRAINT [PK__KhachHan__7A3ECFE48D68910E] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaiSP]    Script Date: 9/19/2021 5:23:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaiSP](
	[maLoai] [int] NOT NULL,
	[loaiHang] [nvarchar](max) NOT NULL,
	[ghiChu] [ntext] NULL,
 CONSTRAINT [PK_loaiSP] PRIMARY KEY CLUSTERED 
(
	[maLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quanHuyen]    Script Date: 9/19/2021 5:23:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quanHuyen](
	[maQH] [int] NOT NULL,
	[tenQH] [nvarchar](88) NULL,
	[tinhThanh] [nvarchar](88) NULL,
 CONSTRAINT [PK_quanHuyen] PRIMARY KEY CLUSTERED 
(
	[maQH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanTriVien]    Script Date: 9/19/2021 5:23:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanTriVien](
	[taiKhoanQTV] [varchar](30) NOT NULL,
	[matKhauQTV] [varchar](30) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[soDT] [varchar](20) NULL,
	[hinhDD] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[taiKhoanQTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanPham]    Script Date: 9/19/2021 5:23:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanPham](
	[maSP] [varchar](30) NOT NULL,
	[tenSP] [nvarchar](500) NOT NULL,
	[hinhDD] [nvarchar](max) NULL,
	[ngayDang] [datetime] NULL,
	[noiDung] [nvarchar](4000) NULL,
	[giaBan] [int] NULL,
	[giamGia] [int] NULL,
	[maLoai] [int] NULL,
	[dvt] [nvarchar](12) NULL,
	[gioiTinh] [int] NULL,
 CONSTRAINT [PK_sanPham] PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taiKhoanTV]    Script Date: 9/19/2021 5:23:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taiKhoanTV](
	[maKH] [int] IDENTITY(1,1) NOT NULL,
	[taiKhoanKH] [varchar](20) NOT NULL,
	[matKhau] [varchar](100) NULL,
	[hoDem] [nvarchar](50) NULL,
	[tenTV] [nvarchar](30) NULL,
	[ngaySinh] [datetime] NULL,
	[gioiTinh] [nvarchar](10) NULL,
	[soDT] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[diaChi] [nvarchar](50) NULL,
	[maQH] [int] NULL,
 CONSTRAINT [PK_taiKhoanTV] PRIMARY KEY CLUSTERED 
(
	[taiKhoanKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (9, N'DPM030300DEN38', 2, 350000, NULL)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (9, N'DSWH06200TIM35', 2, 845000, NULL)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (10, N'DSMH06200TIM39', 2, 799000, NULL)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (1010, N'DEG007700XNH', 2, 260000, NULL)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (1010, N'DPM031100KEM35', 2, 1299000, NULL)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (1010, N'DSMH06200TIM39', 2, 799000, NULL)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (1011, N'DPM030300DEN38', 2, 350000, NULL)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (1011, N'DPM031100KEM35', 2, 1299000, NULL)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (1012, N'DSMH06200TIM39', 2, 799000, NULL)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (1013, N'DPM030300DEN38', 2, 350000, NULL)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (1013, N'DPM031100KEM35', 1, 1299000, NULL)
INSERT [dbo].[ctDonHang] ([soDH], [maSP], [soLuong], [giaBan], [giamGia]) VALUES (1013, N'DSWH06200TRG35', 1, 949000, NULL)
GO
SET IDENTITY_INSERT [dbo].[donHang] ON 

INSERT [dbo].[donHang] ([soDH], [tenKH], [maKH], [taiKhoan], [ngayDat], [ngayGH], [diachiGH]) VALUES (9, N'Nghĩa', 1, N'IPVoDanh', CAST(N'2021-09-02T18:49:27.907' AS DateTime), CAST(N'2021-09-17T18:49:27.907' AS DateTime), NULL)
INSERT [dbo].[donHang] ([soDH], [tenKH], [maKH], [taiKhoan], [ngayDat], [ngayGH], [diachiGH]) VALUES (10, N'Nghĩa', 1, N'IPVoDanh', CAST(N'2021-09-03T02:10:11.100' AS DateTime), CAST(N'2021-09-18T02:10:11.100' AS DateTime), NULL)
INSERT [dbo].[donHang] ([soDH], [tenKH], [maKH], [taiKhoan], [ngayDat], [ngayGH], [diachiGH]) VALUES (1010, N'Nghĩa', 1, N'IPVoDanh', CAST(N'2021-09-04T07:36:24.617' AS DateTime), CAST(N'2021-09-19T07:36:24.617' AS DateTime), NULL)
INSERT [dbo].[donHang] ([soDH], [tenKH], [maKH], [taiKhoan], [ngayDat], [ngayGH], [diachiGH]) VALUES (1011, N'Nghĩa', 1, N'IPVoDanh', CAST(N'2021-09-04T09:34:46.637' AS DateTime), CAST(N'2021-09-19T09:34:46.637' AS DateTime), NULL)
INSERT [dbo].[donHang] ([soDH], [tenKH], [maKH], [taiKhoan], [ngayDat], [ngayGH], [diachiGH]) VALUES (1012, N'Nghĩa', 1, N'IPVoDanh', CAST(N'2021-09-19T00:48:55.357' AS DateTime), CAST(N'2021-10-04T00:48:55.357' AS DateTime), NULL)
INSERT [dbo].[donHang] ([soDH], [tenKH], [maKH], [taiKhoan], [ngayDat], [ngayGH], [diachiGH]) VALUES (1013, N'Nghĩa', 1, N'IPVoDanh', CAST(N'2021-09-19T01:54:29.333' AS DateTime), CAST(N'2021-10-04T01:54:29.333' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[donHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [maQH]) VALUES (1, N'Nghĩa', N'03964091068', N'kaiiinomuteki@gmail.com', NULL, CAST(N'2000-11-04T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [maQH]) VALUES (7, N'Quyên', N'0236985475', N'lengocquyen311@gmail.com', N'86 HT35', CAST(N'2021-08-26T00:00:00.000' AS DateTime), N'Nữ', NULL)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [maQH]) VALUES (8, N'Trung', N'02659874', N'trung123@gmail.com', N'135 856', CAST(N'2021-08-21T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [maQH]) VALUES (9, N'Quyên', N'0909215867', N'lengocquyen311@gmail.com', N'86 HT45', CAST(N'2021-08-26T00:00:00.000' AS DateTime), NULL, NULL)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [maQH]) VALUES (10, N'Nghĩa', N'0296451235', N'nguyenducnghia4112000@gmail.com', N'86 HT35', CAST(N'2021-08-05T00:00:00.000' AS DateTime), N'Male', NULL)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [maQH]) VALUES (11, N'Hiệp', N'0909658946', N'hiep123@gmail.com', N'86 HT35', CAST(N'2021-07-29T00:00:00.000' AS DateTime), N'Male', NULL)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [maQH]) VALUES (12, N'A', N'0909658946', N'nguyanvana@gmail.com', N'86 HT35', CAST(N'2021-08-13T00:00:00.000' AS DateTime), N'Male', 4)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [maQH]) VALUES (13, N'B', N'0236985475', N'Kaiii4112@gmail.com', N'86 HT35', CAST(N'2021-08-13T00:00:00.000' AS DateTime), N'Female', 13)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [maQH]) VALUES (14, N'Bình', N'0396409106', N'binh123@gmail.com', N'86 HT35', CAST(N'2021-08-27T00:00:00.000' AS DateTime), N'Male', 13)
INSERT [dbo].[KhachHang] ([maKH], [tenKH], [soDT], [email], [diaChi], [ngaySinh], [gioiTinh], [maQH]) VALUES (15, N'Nam', N'0909658946', N'hiep123@gmail.com', N'86 HT35', CAST(N'2021-09-22T00:00:00.000' AS DateTime), N'Male', 12)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
INSERT [dbo].[loaiSP] ([maLoai], [loaiHang], [ghiChu]) VALUES (1, N'Hunter', NULL)
INSERT [dbo].[loaiSP] ([maLoai], [loaiHang], [ghiChu]) VALUES (2, N'Giày Chạy Bộ', NULL)
INSERT [dbo].[loaiSP] ([maLoai], [loaiHang], [ghiChu]) VALUES (3, N'Sandal', NULL)
INSERT [dbo].[loaiSP] ([maLoai], [loaiHang], [ghiChu]) VALUES (4, N'Dép', NULL)
INSERT [dbo].[loaiSP] ([maLoai], [loaiHang], [ghiChu]) VALUES (5, N'Giày Đá Bóng', NULL)
INSERT [dbo].[loaiSP] ([maLoai], [loaiHang], [ghiChu]) VALUES (6, N'Giày Thể Thao', NULL)
INSERT [dbo].[loaiSP] ([maLoai], [loaiHang], [ghiChu]) VALUES (7, N'Giày Tây', NULL)
INSERT [dbo].[loaiSP] ([maLoai], [loaiHang], [ghiChu]) VALUES (8, N'Giày Thời Trang', NULL)
GO
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh]) VALUES (1, N'Quận 1', NULL)
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh]) VALUES (2, N'Quận 2', NULL)
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh]) VALUES (3, N'Quận 3', NULL)
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh]) VALUES (4, N'Quận 4', NULL)
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh]) VALUES (5, N'Quận 5', NULL)
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh]) VALUES (6, N'Quận 6', NULL)
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh]) VALUES (7, N'Quận 7', NULL)
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh]) VALUES (8, N'Quận 8', NULL)
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh]) VALUES (9, N'Quận 9', NULL)
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh]) VALUES (10, N'Quận 10', NULL)
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh]) VALUES (11, N'Quận 11', NULL)
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh]) VALUES (12, N'Quận 12', NULL)
INSERT [dbo].[quanHuyen] ([maQH], [tenQH], [tinhThanh]) VALUES (13, N'Quận Bình Thạnh', NULL)
GO
INSERT [dbo].[QuanTriVien] ([taiKhoanQTV], [matKhauQTV], [HoTen], [email], [soDT], [hinhDD]) VALUES (N'admin', N'admin123456abc', N'Administrator', N'admin@gmail.com', N'0169523654', NULL)
INSERT [dbo].[QuanTriVien] ([taiKhoanQTV], [matKhauQTV], [HoTen], [email], [soDT], [hinhDD]) VALUES (N'user', N'123456', N'Mr Kai', NULL, NULL, NULL)
GO
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DEG007700HOG28', N'Sandal Eva Phun Hồng', N'/Asset/products/girl/sandal/sandal2.jpg', NULL, N'Nội dung sản phẩm', 26000, NULL, 3, NULL, 4)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DEG007700XNH', N'Sandal Eva Phun Xanh Nhớt', N'/Asset/products/girl/sandal/sandal1.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 260000, NULL, 3, NULL, 4)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DPB058099XAM28', N'Biti''s Batman DPB', N'/Asset/products/boy/slipper/slipper4.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 185000, NULL, 4, NULL, 3)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DPB058099XDG28', N'Biti''s Batman DPB', N'/Asset/products/boy/slipper/slipper3.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 185000, NULL, 4, NULL, 3)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DPM030300DEN38', N'Sandal PU Nam Biti''s DPMDEN', N'/Asset/products/men/sandal/sandal3.jpg', CAST(N'2021-07-16T00:00:00.000' AS DateTime), N'Chưa có mô tả cho sản phẩm này', 350000, NULL, 3, N'Đôi', 1)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DPM031100KEM35', N'Sandals Biti''s Hunter Nameless Edition', N'/Asset/products/men/sandal/sandal4.png', CAST(N'2021-07-16T00:00:00.000' AS DateTime), N'Chưa có mô tả cho sản phẩm này', 1299000, NULL, 3, N'Đôi', 1)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DPM031401DEN38', N'Sandal PU Nam Biti''s DPMDEN', N'/Asset/products/men/sandal/sandal2.jpg', CAST(N'2021-07-16T00:00:00.000' AS DateTime), N'Chưa có mô tả cho sản phẩm này', 360000, NULL, 3, N'Đôi', 1)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DPW068900HOG35', N'Sandal PU Phun Nữ Biti''s DPWHOG', N'/Asset/products/women/sandal/sandal4.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 325000, NULL, 3, NULL, 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DPW068900XAM35', N'Sandal PU Phun Nữ Biti''s', N'/Asset/products/women/sandal/sandal1.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 325000, NULL, 3, NULL, 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DRB031599DOO28', N'Sandal Bé Trai Biti''s DRB0', N'/Asset/products/boy/sandal/sandal1.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 295000, NULL, 3, NULL, 3)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DRM041200CAM38', N'Sandal Nam Biti''s DRMCAM', N'/Asset/products/men/sandal/sandal1.jpg', CAST(N'2021-07-16T00:00:00.000' AS DateTime), N'Chưa có mô tả cho sản phẩm này', 310000, NULL, 3, N'Đôi', 1)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DRW014500DEN35', N'Sandal Cao Su Nữ DRW014EN', N'/Asset/products/women/sandal/sandal3.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 280000, NULL, 3, NULL, 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSB137100XLC', N'Biti''s Cool Kids’ Club x Milo', N'/Asset/products/girl/sport/sport2.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 430000, NULL, 6, NULL, 4)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSB137100XLC28', N'Biti''s Cool Kids’ Club x Milo', N'/Asset/products/boy/sport/sport2.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 430000, NULL, 6, NULL, 3)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSBH00500NAU', N'Biti''s Hunter Street JUNIOR x Vietmax', N'/Asset/products/girl/sport/sport3.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 430000, NULL, 6, NULL, 4)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSBH00600DEN', N'Biti''s Hunter Street JUNIOR x Vietmax', N'/Asset/products/girl/sport/sport4.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 430000, NULL, 6, NULL, 4)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSBH00600DEN28', N'Biti''s Hunter Street JUNIOR x Vietmax ', N'/Asset/products/boy/sport/sport4.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 479000, NULL, 6, NULL, 3)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSG137100TR', N'Biti''s Cool Kids’ Club x Milo', N'/Asset/products/girl/sport/sport1.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 430000, NULL, 6, NULL, 4)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSG137100TRG28', N' Biti''s Cool Kids’ Club x Milo', N'/Asset/products/boy/sport/sport1.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 430000, NULL, 6, NULL, 3)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSM073600DEN39', N'Giày Thể Thao Biti''s DSMDEN', N'/Asset/products/men/sport/sport1.jpg', CAST(N'2021-07-16T00:00:00.000' AS DateTime), N'Chưa có mô tả cho sản phẩm này', 320000, NULL, 6, NULL, 1)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSM073600XAM39', N'Giày Thể Thao Biti''s DSMXAM', N'/Asset/products/men/sport/sport3.jpg', CAST(N'2021-07-16T00:00:00.000' AS DateTime), N'Chưa có mô tả cho sản phẩm này', 320000, NULL, 6, NULL, 1)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSM073600XNH43', N'Giày Thể Thao Biti''s DSMXNH', N'/Asset/products/men/sport/sport2.jpg', CAST(N'2021-07-16T00:00:00.000' AS DateTime), N'Chưa có mô tả cho sản phẩm này', 320000, NULL, 6, NULL, 1)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSM073733DEN36', N'Giày Thể Thao Ucare Gen 1 Black', N'/Asset/products/men/sport/sport4.jpg', CAST(N'2021-07-16T00:00:00.000' AS DateTime), N'Chưa có mô tả cho sản phẩm này', 529000, NULL, 6, NULL, 1)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSMH06200TIM39', N'Biti''s Hunter Street Z High Purple', N'/Asset/products/men/hunter/hunter2.jpg', CAST(N'2021-07-16T00:00:00.000' AS DateTime), N'Chưa có mô tả cho sản phẩm này', 799000, 0, 1, N'Đôi', 1)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSMH06200TRG39', N'Biti''s Hunter Street Z High White', N'/Asset/products/men/hunter/hunter1.jpg', CAST(N'2021-07-16T00:00:00.000' AS DateTime), N'Chưa có mô tả cho sản phẩm này', 799000, 0, 1, N'Đôi', 1)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSMH06500DEN39', N'Biti''s Hunter X Old Kool Black', N'/Asset/products/men/hunter/hunter4.png', CAST(N'2021-07-16T00:00:00.000' AS DateTime), N'Chưa có mô tả cho sản phẩm này', 899000, NULL, 1, N'Đôi', 1)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSMH06500XAM39', N'Biti''s Hunter X Classik Grey', N'/Asset/products/men/hunter/hunter3.png', CAST(N'2021-07-16T00:00:00.000' AS DateTime), N'Chưa có mô tả cho sản phẩm này', 899000, NULL, 1, N'Đôi', 1)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSWH02503NAU35', N'Biti''s Hunter X Summer Orange-eeze', N'/Asset/products/women/hunter/hunter3.png', NULL, N'Chưa có mô tả cho sản phẩm này', 829000, NULL, 1, NULL, 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSWH03900CAM36', N'Biti''s Hunter Running Orange', N'/Asset/products/women/running/running3.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 999000, NULL, 2, NULL, 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSWH03900XAM35', N'Biti''s Hunter Running Grey', N'/Asset/products/women/running/running1.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 999000, NULL, 2, NULL, 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSWH03900XMN35', N'Biti''s Hunter Running Neon Green', N'/Asset/products/women/running/running2.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 999000, NULL, 2, NULL, 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSWH05300KEM35', N'Biti''s Hunter Jogging Feather White', N'/Asset/products/women/running/running4.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 620000, NULL, 2, NULL, 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSWH06200TIM35', N'Biti''s Hunter Street Z Purple', N'/Asset/products/women/hunter/hunter2.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 845000, NULL, 1, NULL, 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSWH06200TRG35', N'Biti''s Hunter Street Z White', N'/Asset/products/women/hunter/hunter1.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 949000, NULL, 1, N'Đôi', 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DSWH06500REU35', N'Biti''s Hunter X Jungle Hunt', N'/Asset/products/women/hunter/hunter4.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 829000, NULL, 1, NULL, 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DTB074100DOO24', N'Sandal Bé Trai Biti''s DTB', N'/Asset/products/boy/sandal/sandal3.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 220000, NULL, 3, NULL, 3)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DTB074100XMN24', N'Sandal Bé Trai Biti''s DTB07', N'/Asset/products/boy/sandal/sandal2.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 295000, NULL, 3, NULL, 3)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DTG076211HOG24', N'Giày Sandal Hồng', N'/Asset/products/girl/sandal/sandal3.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 315000, NULL, 3, NULL, 4)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DTG076211TIM24', N'Giày Sandal Tím', N'/Asset/products/girl/sandal/sandal4.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 315000, NULL, 3, NULL, 4)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DTW010088DEN35', N'Sandal Nữ Biti''s DTW0DEN', N'/Asset/products/women/sandal/sandal2.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 240000, NULL, 3, NULL, 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DXB128899DEN28', N'Biti''s Batman DXB', N'/Asset/products/boy/slipper/slipper1.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 170000, NULL, 4, NULL, 3)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DXB128899DOO28', N'Biti''s Batman DXB', N'/Asset/products/boy/slipper/slipper2.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 170000, NULL, 4, NULL, 3)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DXG002800HOG', N'Dép Xốp Bé Gái Hồng', N'/Asset/products/girl/slipper/slipper3.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 135000, NULL, 4, NULL, 4)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DXG002800TIM24', N'Dép Xốp Bé Gái Tím', N'/Asset/products/girl/slipper/slipper4.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 135000, NULL, 4, NULL, 4)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DXG003188CAM ', N'Dép Xốp Bé Gái Cam', N'/Asset/products/girl/slipper/slipper1.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 125000, NULL, 4, NULL, 4)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DXG003188HOG', N'Dép Xốp Bé Gái Hồng', N'/Asset/products/girl/slipper/slipper2.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 125000, NULL, 4, NULL, 4)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'DYB013011DOO28', N'Sandal Bé Trai Biti''s DYB01', N'/Asset/products/boy/sandal/sandal5.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 379000, NULL, 3, NULL, 3)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'SFW721880DEN36', N'Thời Trang Nữ Biti''s SFW', N'/Asset/products/women/fashion/fashion1.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 435000, NULL, 8, NULL, 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'SFW723880DEN35', N'Thời Trang Nữ Biti''s SFW7238', N'/Asset/products/women/fashion/fashion3.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 380000, NULL, 8, NULL, 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'SFW723880KEM37', N'Thời Trang Nữ SFW72', N'/Asset/products/women/fashion/fashion4.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 380000, NULL, 8, NULL, 2)
INSERT [dbo].[sanPham] ([maSP], [tenSP], [hinhDD], [ngayDang], [noiDung], [giaBan], [giamGia], [maLoai], [dvt], [gioiTinh]) VALUES (N'SFW723880VDB37', N'Thời Trang Nữ Biti''s SFW723', N'/Asset/products/women/fashion/fashion2.jpg', NULL, N'Chưa có mô tả cho sản phẩm này', 380000, NULL, 8, NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[taiKhoanTV] ON 

INSERT [dbo].[taiKhoanTV] ([maKH], [taiKhoanKH], [matKhau], [hoDem], [tenTV], [ngaySinh], [gioiTinh], [soDT], [email], [diaChi], [maQH]) VALUES (1, N'IPVoDanh', N'Nghia0411', N'Nguyễn', N'Nghĩa', CAST(N'2000-11-04T00:00:00.000' AS DateTime), NULL, N'0396409106', N'nghianguyen@gmail.com', N'86 HT35', NULL)
INSERT [dbo].[taiKhoanTV] ([maKH], [taiKhoanKH], [matKhau], [hoDem], [tenTV], [ngaySinh], [gioiTinh], [soDT], [email], [diaChi], [maQH]) VALUES (4, N'Kaiii4112', N'Nghia4112', N'Phạm', N'Nghĩa', CAST(N'2021-08-05T00:00:00.000' AS DateTime), N'Male', N'0296451235', N'nguyenducnghia4112000@gmail.com', N'86 HT35', NULL)
INSERT [dbo].[taiKhoanTV] ([maKH], [taiKhoanKH], [matKhau], [hoDem], [tenTV], [ngaySinh], [gioiTinh], [soDT], [email], [diaChi], [maQH]) VALUES (9, N'Nam123', N'Nam123abc', N'Nguyễn', N'Nam', CAST(N'2021-09-22T00:00:00.000' AS DateTime), N'Male', N'0909658946', N'hiep123@gmail.com', N'86 HT35', 12)
INSERT [dbo].[taiKhoanTV] ([maKH], [taiKhoanKH], [matKhau], [hoDem], [tenTV], [ngaySinh], [gioiTinh], [soDT], [email], [diaChi], [maQH]) VALUES (3, N'QuyenXinhDep', N'123456', N'Nguyễn', N'Quyên', CAST(N'2021-08-26T00:00:00.000' AS DateTime), NULL, N'0909215867', N'lengocquyen311@gmail.com', N'86 HT45', NULL)
SET IDENTITY_INSERT [dbo].[taiKhoanTV] OFF
GO
ALTER TABLE [dbo].[ctDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ctDonHang_donHang] FOREIGN KEY([soDH])
REFERENCES [dbo].[donHang] ([soDH])
GO
ALTER TABLE [dbo].[ctDonHang] CHECK CONSTRAINT [FK_ctDonHang_donHang]
GO
ALTER TABLE [dbo].[ctDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ctDonHang_sanPham] FOREIGN KEY([maSP])
REFERENCES [dbo].[sanPham] ([maSP])
GO
ALTER TABLE [dbo].[ctDonHang] CHECK CONSTRAINT [FK_ctDonHang_sanPham]
GO
ALTER TABLE [dbo].[donHang]  WITH CHECK ADD  CONSTRAINT [FK_donHang_KhachHang] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maKH])
GO
ALTER TABLE [dbo].[donHang] CHECK CONSTRAINT [FK_donHang_KhachHang]
GO
ALTER TABLE [dbo].[donHang]  WITH CHECK ADD  CONSTRAINT [FK_donHang_taiKhoanTV] FOREIGN KEY([taiKhoan])
REFERENCES [dbo].[taiKhoanTV] ([taiKhoanKH])
GO
ALTER TABLE [dbo].[donHang] CHECK CONSTRAINT [FK_donHang_taiKhoanTV]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_quanHuyen] FOREIGN KEY([maQH])
REFERENCES [dbo].[quanHuyen] ([maQH])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_quanHuyen]
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD  CONSTRAINT [FK_sanPham_loaiSP] FOREIGN KEY([maLoai])
REFERENCES [dbo].[loaiSP] ([maLoai])
GO
ALTER TABLE [dbo].[sanPham] CHECK CONSTRAINT [FK_sanPham_loaiSP]
GO
ALTER TABLE [dbo].[taiKhoanTV]  WITH CHECK ADD  CONSTRAINT [FK_taiKhoanTV_quanHuyen] FOREIGN KEY([maQH])
REFERENCES [dbo].[quanHuyen] ([maQH])
GO
ALTER TABLE [dbo].[taiKhoanTV] CHECK CONSTRAINT [FK_taiKhoanTV_quanHuyen]
GO
USE [master]
GO
ALTER DATABASE [ShoesOnline] SET  READ_WRITE 
GO
