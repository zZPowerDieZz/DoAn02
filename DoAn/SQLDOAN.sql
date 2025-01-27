USE [master]
GO
/****** Object:  Database [DoAn]    Script Date: 6/24/2024 5:59:34 PM ******/
CREATE DATABASE [DoAn]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DoAn', FILENAME = N'D:\bài báo cáo\MSSQL15.MSSQLSERVER\MSSQL\DATA\DoAn.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DoAn_log', FILENAME = N'D:\bài báo cáo\MSSQL15.MSSQLSERVER\MSSQL\DATA\DoAn_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DoAn] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DoAn].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DoAn] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DoAn] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DoAn] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DoAn] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DoAn] SET ARITHABORT OFF 
GO
ALTER DATABASE [DoAn] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DoAn] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DoAn] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DoAn] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DoAn] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DoAn] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DoAn] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DoAn] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DoAn] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DoAn] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DoAn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DoAn] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DoAn] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DoAn] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DoAn] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DoAn] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DoAn] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DoAn] SET RECOVERY FULL 
GO
ALTER DATABASE [DoAn] SET  MULTI_USER 
GO
ALTER DATABASE [DoAn] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DoAn] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DoAn] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DoAn] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DoAn] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DoAn] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DoAn', N'ON'
GO
ALTER DATABASE [DoAn] SET QUERY_STORE = OFF
GO
USE [DoAn]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6/24/2024 5:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6/24/2024 5:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/24/2024 5:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/24/2024 5:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/24/2024 5:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/24/2024 5:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/24/2024 5:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Birthday] [datetime2](7) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6/24/2024 5:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/24/2024 5:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](max) NULL,
	[DisplayOrder] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/24/2024 5:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/24/2024 5:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Total] [float] NOT NULL,
	[State] [nvarchar](max) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/24/2024 5:59:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240622062006_Data', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240624105737_PhanQuyen', N'5.0.17')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Logo], [DisplayOrder]) VALUES (1, N'Porsche', NULL, 1)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [DisplayOrder]) VALUES (2, N'Bentley', NULL, 2)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [DisplayOrder]) VALUES (3, N'BMW', NULL, 3)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [DisplayOrder]) VALUES (4, N'Ford', NULL, 4)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [DisplayOrder]) VALUES (5, N'Lamborghini', NULL, 5)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [DisplayOrder]) VALUES (6, N'Maserati', NULL, 6)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [DisplayOrder]) VALUES (7, N'Mecesdes', NULL, 7)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [DisplayOrder]) VALUES (8, N'Ferrari', NULL, 8)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [DisplayOrder]) VALUES (9, N'Aston Martin', NULL, 9)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [DisplayOrder]) VALUES (10, N'MCLaren', NULL, 10)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [DisplayOrder]) VALUES (11, N'Bugatti', NULL, 11)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [DisplayOrder]) VALUES (12, N'Koenigsegg', NULL, 12)
INSERT [dbo].[Categories] ([Id], [Name], [Logo], [DisplayOrder]) VALUES (13, N'Pagani', NULL, 13)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (1, 1, 8, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [OrderDate], [CustomerName], [Address], [Phone], [Total], [State]) VALUES (1, CAST(N'2024-06-24T15:42:06.7274428' AS DateTime2), N'Tấn Phúc', N'15/3D', N'0378930231', 1764000, N'Pending')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (1, N'Porsche Macan', N'Macan là dòng SUV bán chạy nhất của Porsche trong những năm gần đây. Ra mắt lần đầu từ năm 2014 và có bản nâng cấp lần thứ nhất vào tháng 7/2018. Ngày 23-04-2022, Porsche cho ra mắt Macan facelift tại Việt Nam với nhiều thay đổi về ngoại thất, động cơ với 4 phiên bản: Macan, Macan T, Macan S và Macan GTS. So với phiên bản cũ, Porsche Macan facelift không có phiên bản Turbo nhưng đã được thay thế bởi phiên bản Macan tiêu chuẩn. Tùy chọn cấu hình động cơ 2.0L, I4 hoặc 2.9L V6 .', 135000, 1, N'images/products/93a54cce-99d4-4ed3-8f1c-4cc5d9e713b4.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (2, N'Porsche Panamera Turbo S', N'Porsche Panamera là dòng xe hạng sang cỡ trung/lớn (mid/full-sized luxury vehicle) của nhà sản xuất xe hơi Porsche, Đức. Porsche Panamera hiện đã bước vào thế hệ thứ 3 (tháng 11-2023 đến nay). Tuy nhiên bản Panamera đang bán tại Việt Nam vẫn thuộc thế hệ thứ 2 và được nâng cấp giữa vòng đời vào năm 2021. Tùy chọn 3 cấu hình động cơ gồm Panamera tiêu chuẩn (3.0L, 6 xy lanh, 330 mã lực, 450 Nm), GTS (4.0L, 8 xy lanh, 480 mã lực, 620 Nm) và turbo S (4.0 lít, 8 xy lanh, 630 mã lực, 820 Nm).', 490000, 1, N'images/products/82573492-68f0-414c-9cba-df617976a234.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (3, N'Porsche 911 Targa 4S', N'Porsche 911 Targa được ra mắt vào tháng 08/2020 và hiện được bán ra với 03 phiên bản Targa 4, Targa 4S và Targa 4 GTS. Về cơ bản ngoại thất và nội thất của Porsche  911 Targa tương đối giống với Porsche 911 Carrera và Porsche 911 Carrera S. Targa có nhiều cải tiến so với phiên bản trước nhưng phần mui trần được giữ lại một phần khung chữ U hoặc toàn bộ vòm mui cứng nằm phía sau ghế ngồi. Phần mui xe đã tạo nên phong cách cho chiếc xe Porsche 911 Targa. Kích thước tổng thể DxRxC là 4519 x 1852 x 1297/1299 (mm) ngắn hơn Carrera một chút, khối lượng lại nặng hơn 20kg.', 395000, 1, N'images/products/f6434763-122f-4786-b5f0-0d33338cde21.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (4, N'Porsche Taycan', N'Porsche Taycan là dòng xe Sedan lai Coupe 4 cửa chạy điện hoàn toàn của nhà sản xuất ô tô Porsche, Đức. Taycan hiện bán tại Việt Nam được ra mắt vào tháng 10-2020 và bản Taycan Cross Turismo được ra mắt vào tháng 11-2021. Taycan sẽ cạnh tranh với đối thủ Tesla Model S. Taycan bao gồm 8 phiên bản là Taycan, Taycan 4S, Taycan GTS, Taycan Turbo, Taycan Turbo S, Taycan 4 Cross Turismo,Taycan 4S Cross Turismo, Taycan Turbo Cross Turismo.', 171000, 1, N'images/products/12d14a2a-85b2-4210-ac3e-dccb57d09aa2.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (5, N'Porsche 718 Boxster', N'Mẫu xe Porsche 718 Boxster Roadster "thể thao thuần khiết" có 2 bản động cơ là 2.0 và 2.5 cùng hộp số tự động 7 cấp ly hợp kép. Bản động cơ 2.0L dành cho bản thường cho công suất tối đa 300Hp/6500rpm và mô men xoắn tối đa 380Nm/1950-4500rpm, khả năng tăng tốc lên 100km/h trong 4.7s. Còn bản 718 Boxster S dùng động cơ 2.5L, công suất cực đại 350Hp/6500rpm, mô men xoắn cực đại 420Nm/1900-4500rpm, mãnh lực tăng tốc là 4,2s, tốc độ tối đa 285km/h.', 159000, 1, N'images/products/ca249c60-605f-4365-882e-a6e22c65ca00.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (6, N'Bentley Mulsanne', N'Bentley Mulsanne là mẫu sedan siêu sang, từng là mẫu ô tô danh giá nhất, đứng đầu bảng của hãng xe Bentley từ 2009 - nay. Đầu năm 2020, Bentley quyết định ngừng sản xuất dòng xe Mulsanne này. Để đáp lại tình cảm của khách hàng dành cho dòng xe sedan hạng sang này, Bentley cho ra phiên bản đặc biệt mang tên Bentley Mulsanne Speed 6.75 Edition by Mulliner với số lượng giới hạn 30 chiếc. Tháng 06/2020, mẫu xe sedan Mulsanne hoàn thành chiếc xe cuối cùng, khép lại chù kỳ sản phẩm Mulsanne 11 năm cũng cũng là kết thúc cho hơn 60 năm dòng động cơ huyền thoại 6.75 lít của hạng xe sang Bentley. Tổng cộng hơn 7.300 chiếc siêu xe Bentley Mulsanne được bán cho khách hàng trên toàn thế giới.', 306000, 2, N'images/products/75641c41-8900-48bc-b43a-21ba922ecfa6.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (7, N'Bentley Continental GT Speed', N'Ngày 23/03/2021, Bentley Motors đã chính thức ra mắt mẫu xe Bentley Continental GT Speed thế hệ mới. Bentley Continental GT Speed thế hệ mới sẽ trở thành mẫu xe thông dụng có hiệu suất cao nhất trong 101 năm lịch sử của hãng xe siêu sang đến từ Anh Quốc. Continental GT Speed mới được phát triển dựa trên dòng Continental GT thế hệ mới - thế hệ thứ 3 đang bán ra trên thị trường quốc tế.

Continental GT Speed thế hệ mới sử dụng động cơ 6.0 lít, W12 TSI, tăng nhẹ về hiệu suất so với phiên bản Continental GT W12 hiện tại. Công suất tối đa của GT Speed thế hệ mới đạt 659 PS tăng 14PS so với tiền nhiệm, mô men xớn cực đại giữ nguyên ở mức 900 Nm. Tăng tốc từ 0-100km/h trong 3.6s, giảm 0.1s so với bản W12, vận tốc tối đa đạt 335 km/h. Đi kèm là hộp số ly hợp kép 08 cấp và hệ dẫn động 4 bánh chủ động Active AWD.', 257000, 2, N'images/products/877079ca-d0d9-46b1-b490-8cca3c2ea156.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (8, N'Bentley Mulliner Bacalar', N'Siêu xe thể thao mui trần Bentley Mulliner Bacalar chính thức ra mắt đầu năm 2020. Xe chỉ có số lượng 12 chiếc. Được lấy cảm hứng từ mẫu xe concept đep nhất năm 2019 là Bentley EXP 100 GT, Bentley Mulliner Bacalar có thân xe từ hợp kim nhôm, cửa và các chi tiết khí động học từ sợi carbon. Bên trong nội thất Mulliner Bacalar sở hữu thiết kế 2 chỗ ngồi, hiếm thấy trên những mẫu xe của Bentley. Tiện nghi trong cabin gồm tất cả những tinh hoa của một chiếc Grand Tourer của thế kỷ 21. Ngay cả ốp nội thất trên Bentley Mulliner Bacalar cũng dùng chất liệu gỗ quý Riverwood 5.000 năm tuổi. Mỗi ghế gồm hơn 148.199 đường chỉ may thể hiện độ tinh xảo. Bentley Mulliner Bacalar trang bị động cơ W12 TSI twin turbo dung tích 6.0L, công suất 660 mã lực đi kèm hộp số ly hợp kép 8 cấp', 1764000, 2, N'images/products/31bd5064-3dda-4b28-83df-d7b6310e60f8.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (9, N'BMW 330i', N'Phiên bản 330i M Sport được trang bị động cơ xăng, 2.0L, i4 TwinPower Turbo sản sinh ra công suất tối đa 258 mã lực tại 5000 - 6500 vòng/ phút và mô men xoắn cực đại 400 Nm tại 1600-4000 vòng/ phút. Động cơ kết hợp với hộp số tự động 8 cấp, dẫn động cầu sau.', 73000, 3, N'images/products/75db1e87-04b6-4c40-9e13-d7f2a05d499c.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (10, N'BMW i7', N'BMW i7 được ra mắt tại Việt Nam từ tháng 03-2023 với 1 phiên bản duy nhất BMW i7 xDrive60 Pure Excellence. Xe sử dụng động cơ điện cho công suất tối đa 544 mã lực, mô men xoắn đạt 745 Nm. Bộ pin 101,7 kWh giúp xe đi được quãng đường 591-625 km cho mỗi lần sạc đầy. Thời gian sạc đầy 10.5h với nguồn điện 11kW và 5.5h với nguồn điện 22kW. Thời gian sạc pin từ 10-80% trong 34 phút với sạc DC (500A).', 289000, 3, N'images/products/38ee0638-e365-4cdb-bb6c-1f8d3ac8cf79.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (11, N'BMW i8', N'BMW i8, mẫu xe đầy ấn tượng của BMW được ra mắt vào năm 2013. Xe sử dụng động cơ 1.5l Hybrid sức mạnh tổng hợp 356Hp, hộp số tự động 6 cấp. Với thiết kế được coi là "đi trước thời đại", BMW i8 rất được các đại gia trẻ ưa thích trên thế giới và cả Việt nam. Đối thủ của BMW i8 là Audi R8, Aston Martin Vantage, Acura NSX, Porsche 911, Nissan GTR, McLaren 570s.', 281000, 3, N'images/products/db2a8bc7-de67-49f5-9355-5b323ac5ccba.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (12, N'BMW X3 xDrive20i Msport', N'BMW X3 hiện đang bán tại Việt Nam là bản facelift nâng cấp giữa vòng đời thế hệ thứ 3 được ra mắt thị trường Việt Nam vào cuối năm 2022 và xe được lắp ráp thay vì nhập khẩu nguyên chiếc. X3 bán ra với 3 phiên bản xDrive20i, xDrive20i M Sport và xDrive30i M Sport.', 85000, 3, N'images/products/756ae292-ec13-4da6-9f27-c5902856a5d4.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (13, N'BMW XM', N'BMW XM là mẫu xe SUV hiệu suất cao cỡ lớn 5 chỗ lần đầu tiên được ra mắt công chúng toàn cầu vào quý IV 2022 và chính thức được THACO cho ra mắt tại Việt Nam vào ngày 11-11-2023. BMW XM được phát triển độc lập không dựa trên một mẫu xe nào hiện có của BMW. Dưới nắp ca pô, BMW đã trang bị động cơ S68 V8, 4.4 lít tăng áp kép với công nghệ PHEV mới nhất cho ra tổng công suất lên đến 644 mã lực và mô men xoắn 800 Nm. ', 441000, 3, N'images/products/1f0a970c-e134-4ff9-9f4b-131b99a1dce1.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (14, N'Ford Explorer', N'Ford Explorer là mẫu xe SUV/Crossover 3 hàng ghế cỡ trung cạnh tranh với các đối thủ như Toyota Prado, Hyundai Palisade, Kia Telluride... Xe được trang bị động cơ EcoBoost tăng áp 2.3 lít, I4 sản sinh ra công suất tối đa 301 mã lực và mô men xoắn cực đại đạt 432 Nm. Đi kèm là hộp số tự động 10 cấp và dẫn động 04 bánh toàn thời gian. Ford Explorer có 7 chế độ lái gồm Eco, Normal, Deep Sand, Slippery, Sport, Trail và Tow Haul.', 98000, 4, N'images/products/919d7fe9-9da9-4393-8791-d403bcdbdea5.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (15, N'Ford Transit', N'Dòng xe 16 chỗ của Ford Việt Nam hiện đang bán chạy nhất trong phân khúc này với thị phần trên 60%. Đối thủ chính của Ford Transit là Toyota Hiace và Hyundai Solati nhưng 2 dòng sản phẩm này có giá khá đắt, không thể cạnh tranh được với Transit. Ngày 28-12-2021, Ford ra mắt Ford Transit 2022 tại thị trường Việt Nam với duy nhất một phiên bản. Xe được nâng cấp nhiều trang bị, tính năng nổi bật có cân bằng điện tử, ga tự động và màn hình giải trí 10.1 inch.', 34000, 4, N'images/products/04d2e7e9-3e54-47d9-b3e3-bcdff3d85cf7.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (16, N'Ford Territory Titanium X', N'Ford Territory là dòng xe SUV/Crossover hạng C, 5 chỗ ngồi, ra mắt tại Việt Nam trong tháng 10-2022. Đối thủ cạnh tranh trên thị trường là Hyundai Tucson, Mazda CX5, Toyota Cross... Xe sử dụng động cơ Ecoboost 1.5 lít, tăng áp sản sinh ra công suất tối đa 168 mã lực và mô men xoắn cực đại 260 Nm. Kết hợp hộp số ly hợp kép 7 cấp ly hợp ướt và hệ dẫn động cầu trước. Tốc độ tối đa của xe đạt 180 km/h.', 39000, 4, N'images/products/ff780546-51a6-4387-9700-9f87b865f2cd.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (17, N'Lamborghini Aventador SVJ', N'Lamborghini Aventador SVJ hiện là siêu xe mạnh mẽ nhất của Lamborghini từng sản sinh. Được giới thiệu lần đầu vào tháng 08/2018, SVJ chỉ sản xuất giới hạn 963 chiếc (1 trong số đó đã về Việt Nam). Xe trang bị khối động cơ V12 hút khí tự nhiên, dung tích 6.5L, sản sinh công suất 770 mã lực và mô-men xoắn 720 Nm. Aventador SVJ sử dụng hộp số ISR 7 cấp được tinh chỉnh, trang bị hệ dẫn động bốn bánh với tính năng lái cả hai bánh sau (LRS) giống 2 bánh trước. Trọng lượng khô của xe được giảm xuống còn 1.525 kg. Khả năng tăng tốc lên 100km/h trong 2,8s. Tốc độ tối đa 350km/h.', 2405000, 5, N'images/products/6c72747b-b001-4467-92ad-b26a7618954a.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (18, N'Lamborghini Aventador LP700-4', N'Lamborghini Aventador LP700-4 trang bị động cơ V12 dung tích 6,5L, công suất tối đa 691Hp/8250rpm, mô men xoắn tối đa 690NM/5500rpm. Xe vọt lên tốc độ 100km/h trong 2,9s, có thể gọi là "bay như gió". Tốc độ tối đa theo công bố là 350km/h nhưng trên đường thử xe đã từng đạt 370km/h. Mức tiêu hao nhiên liệu trong thành phố và cao tốc tương ứng là 21,4L và 13,8L/100km. Lamborghini Aventador LP700-4 cùng với xe Porsche 911 Turbo S là 2 trong số 10 mẫu xe nhanh nhất thế giới đã được phân phối chính hãng tại Việt nam', 1043000, 5, N'images/products/3744de2d-039d-446d-9c25-4fdd6d37640f.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (19, N'Lamborghini Urus Performante', N'Trong chuỗi sự kiện Monterey Car Week 2022 vào tháng 09-2022, hãng xe Italia đã giới thiệu bản facelift mẫu xe SUV này, và đến tháng 03-2023, Lamborghini Urus facelift chính thức ra mắt thị trường Việt...Lamborghini Urus sử dụng động cơ V8, 4.0 lít tăng áp kép sản sinh ra công suất tối đa 657 mã lực, mô men xoắn cực đại 850 Nm. Hộp số tự động 8 cấp kết hợp với hệ dẫn động 4 bánh toàn cầu. Đối thủ của Urus là Range Rover Supercharged, Mercedes AMG GLS63 4Matic, Bentley Bentayga.', 662000, 5, N'images/products/b616b19d-d4c0-4f99-8853-b3ef0a470245.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (20, N'Lamborghini Huracan LP580-2', N'Hay được dân chơi Việt nam gọi là siêu xe Lamborghini giá rẻ, Huracan LP580-2 sở hữu khối động cơ V10 5,2 lít cho công suất cực đại 580Hp và mô men xoắn cực đại 540Nm. Ước tính tại Việt nam đã có trên 10 xe Huracan LP580-2 đã có chủ.', 562000, 5, N'images/products/e805b09d-8bc5-4e67-9b46-60fa3487ae1b.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (21, N'Lamborghini Huracan STO', N'Phiên bản siêu xe đua đường phố Huracan STO (Super Trofeo Omologata) được ra mắt trong tháng 11-2020. Xe vẫn dùng động cơ 5.2L hút khí tự nhiên công suất 640Ps (631Hp) giống với bản Huracan Evo nhưng momen xoắn chỉ 565Nm. Khả năng tăng tốc 0-100km/h trong 3s và tốc độ tối đa 310km/h.', 305000, 5, N'images/products/b40abd1d-11bc-417b-9b16-3cd42faba0e1.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (22, N'Maserati Grecale', N'Maserati Grecale là mẫu SUV cỡ trung hoàn toàn mới được ra mắt toàn cầu vào ngày 22-03-2022 và chính thức bán tại Việt Nam vào tháng 06-2023 với 3 phiên bản GT, Modena và Trofeo. Xe có kích thước tổng thể DxRxC lần lượt 4859x1979x1659 mm, chiều dài cơ sở đạt 2901 mm. Tùy chọn động cơ 2.0L, 4 xy lanh hoặc động cơ 3.0L, V6 kết hợp với hộp số tự động 8 cấp.', 169000, 6, N'images/products/04ae4d18-a1df-4008-ace0-91758824b509.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (23, N'Maserati Ghibli Hybrid', N'Maserati Ghibli Hybrid là mẫu xe "lai" điện đầu tiên của hãng xe sang Maserati - Italy, được ra mắt toàn cầu vào tháng 07/2020. Đây là mẫu xe hybrid đánh dấu "bước ngoặt" quan trọng trong lịch sử hơn 100 năm của hãng xe thể thao Italy. Tháng 10-2021, những chiếc Maserati Ghibli Hybrid đầu tiên đã về Việt Nam chuẩn bị giao đến tay khách hàng. Chiếc xe Ghibli Hybrid được trưng bày tại showroom là phiên bản GranSport. 

Ghibli Hybrid sử dụng động cơ xăng tăng áp I4, 2.0 lít sản sinh ra công suất tối đa 330 mã lực và mô men xoắn cực đại 450 Nm kết hợp hệ thống mô tơ điện 48 V eBooster, đóng vai trò kép vừa là động cơ bổ sung thêm sức mạnh cho động cơ xăng, vừa là máy phát để có thể sạc lại điện cho bộ pin được bố trí dưới khoang hành lý sau xe. Hộp số tự động 08 cấp ZF, hệ dẫn động cầu sau. Tăng tốc từ 0-100km/h trong 5.7s, tốc độ tối đa 255 km/h.', 240000, 6, N'images/products/5721df6b-e984-4d73-8004-a68878b7b983.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (24, N'Maserati MC20', N'Maserati MC20 là một chiếc siêu xe thể thao 2 cửa, 2 chỗ ngồi (Super Sports Car). Được ra mắt vào tháng 9 năm 2020, cửa hứa hẹn đánh dấu sự khởi đầu kỷ nguyên mới cho Maserati. Xe có thiết kế đặc trưng siêu xe nhưng cũng không quá cầu kỳ, đặc biệt là động cơ 3.0L do chính Maserati nghiên cứu. Động cơ này cho công suất lên tới 620 mã lực; khả năng tăng tốc 0-100km/h trong 2,9s và tốc độ tối đa 325km/h.', 642000, 6, N'images/products/39b9e227-b7be-48d0-b13f-ded3664b27bc.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (25, N'Mercedes AMG A35 4MATIC', N'A-Class là dòng xe hạng sang cỡ nhỏ (subcompact). Thế hệ thứ 4 của A-Class ra mắt trong năm 2018 và chính thức có mặt tại Việt Nam từ tháng 5 năm 2020. Thiết kế của chiếc A-Class mới vẫn toát lên vẻ trẻ trung và hiện đại, thậm chí gợi nhiều cảm xúc, cản trước và cản sau mạnh mẽ, ba dòng trang bị và thiết kế khác nhau, một gói thiết kế tùy chọn cũng như các chất liệu, màu sắc và bánh xe hợp kim mới đều cuốn hút. Phiên bản AMG A35 với động cơ chỉ 2.0L nhưng công suất lên đến 306Hp. Đối thủ trực tiếp của Mercedes A – Class là Infiniti Q30.', 97400, 7, N'images/products/33f176e7-f8fa-40a2-924b-008b224009ee.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (26, N'Mercedes AMG G63', N'Mercedes AMG G-Class thế hệ mới chính thức trình làng trong tháng 2/2018. Tất cả các phiên bản G-Class mới, từ bản G 350 CDI Professional, G 500 Edition 35 đến AMG G 63 và AMG G 65, đều được Mercedes gia tăng 16% về công suất và giảm lượng tiêu hao nhiên liệu. G 500 được trang bị động cơ V8 4.0L Biturbo mới và các động cơ đáp ứng tiêu chuẩn khí thải Euro 6. Những cải tiến khác là hệ thống treo mới, cùng với hệ thống điều khiển ESP nhanh nhạy hơn giúp gia tăng độ ổn định, an toàn và tiện nghi khi vận hành. Ngoại thất và nội thất xe được điều chỉnh nhưng không nhiều khác biệt.', 471000, 7, N'images/products/8f4686c8-3fb5-4e7e-8bf8-6e254a1c8d70.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (27, N'Mercedes Benz EQB', N'Mercedes Benz EQB có thể được coi là phiên bản chạy điện của Mercedes Benz GLB. Về tổng thể thiết kế ngoại thất, nội thất thì EQB tương tự với GLB. Tại Việt Nam thì Mercedes Benz EQB được bán ra với một phiên bản EQB 250 duy nhất. Xe được trang bị động cơ điện có dung lượng pin 66.5 kWh sản sinh ra công suất tối đa 190 mã lực, mô men xoắn cực đại 385 Nm. Thời gian tăng tốc từ 0-100km/h trong 8.9s. EQB đi được quãng đường 422-473 km/h cho mỗi lần sạc đầy.
Thời gian sạc 10% - 80% trong thời gian 32 phút khi cắm sạc nhanh dòng điện một chiều DC và sạc tiêu chuẩn 11kW trong vòng 6,5 giờ với dòng điện xoay chiều AC.', 92000, 7, N'images/products/a8846db0-7cf8-4b8b-952a-c8c7c43b313b.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (28, N'Ferrari 812 GTS', N'Ferrari 812 GTS là phiên bản mui trần của chiếc 812 Superfast. Ra đời từ tháng 12/2019, 812 GTS là đối thủ trên thị trường là Mclaren 720s Spider, Lamborghini Aventador SVJ Roadster, Aston Martin DBS Superleggera Volante...Sử dụng hệ vận hành của chiếc Coupe 812 Superfast, chiếc spider 812 GTS là chiếc mui trần thương mại mạnh mẽ nhất thế giới hiện nay.', 342000, 8, N'images/products/8067407d-28b2-4546-acf9-a0173f334cee.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (29, N'Ferrari F8 Tributo', N'Siêu xe mới nhất của hãng xe Italy là Ferrari F8 Tributo ra mắt tại Triển lãm ô tô Geneva 2019. Được biết đây là phiên bản thay thế cho 488GTB, Ferrari F8 Tributo có kích thước 4.611 x 1.979 x 1.206 mm, dài hơn 43mm, rộng hơn 27mm và thấp hơn 7mm so với 488 GTB. Đặc biệt, nhờ áp dụng công nghệ tiên tiến và các vật liệu hiện đại mà F8 Tributo chỉ nặng 1.330kg, nhẹ hơn 55kg so với 488 Pista. F8 Tributo cũng mang thiết kế S-Duct tương tự 488 Pista, và động cơ cũng tương tự, là F154, V8 tăng áp kép, dung tích 3.9L.', 241000, 8, N'images/products/f909508d-588c-4a3d-8dab-9436e5446b69.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (30, N'Ferrari Purosangue', N'Ferrari Purosangue là mẫu xe siêu SUV đầu tiên của hãng xe nổi tiếng Ferrari phát triển. Purosangue sẽ đưa Ferrari vào một "vùng đất mới". Ferrari Purosangue được trang bị động cơ 6.5 lít, V12 hút khí tự nhiên sản sinh ra công suất tối đa 715 mã lực và mô men xoắn cực đại 716 Nm. Kết hợp với hộp số ly hợp kép tự động 8 cấp và dẫn động 2 cầu. Thời gian tăng tốc từ 0-100km/h trong 3.3s và đạt tốc độ tối đa 310 km/h.', 1604000, 8, N'images/products/d5901ec7-f010-408e-8c34-114e719aa8e4.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (31, N'Aston Martin Vantage', N'Thế hệ 2 của mẫu Vantage được ra mắt trong tháng 11/2017. Sử dụng động cơ thế hệ mới do AMG nâng cấp, với chỉ dung tích 4.0L nhưng sức mạnh mang lại là 510Ps. Hộp số tự động 8 ấp. Hệ dẫn động cầu sau. Khả năng tăng tốc lên 100km/h trong 3,6s. Điểm mới ở Aston Martin Vantage thế hệ mới nữa là hệ thống khung sườn mới. Vantage cũng đã chính thức ra mắt tại Việt Nam trong tháng 03/2019.', 600800, 9, N'images/products/9c09fd03-a6d4-494c-8423-42feb9dcc79a.jfif')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (32, N'Aston Martin DB11 V8 Coupe', N'DB11 có 2 phiên bản là Coupe ra mắt năm 2016 và bản Volante DB11 Roadster mui mềm vừa ra mắt trong tháng 10/2017. Phiên bản Aston Martin DB11 V8 vừa về Việt Nam đầu năm 2019 dùng  động cơ V8 4.0 Twin-Turbo do Mercedes-AMG hợp tác phát triển. Phiên bản DB11 V12 Coupe sử dụng khối động cơ V12 dung tích 5,2l công suất 600Hp, hộp số tự động 8 cấp cùng hệ dẫn động cầu sau. Phiên bản DB11 Roadster lại chỉ dùng động cơ dung tích 4.0L với công suất 512Hp. Ngoài ra còn có thêm bản DB11 AMR (do bộ phận Aston Martin Racing phát triển) ra mắt trong tháng 5/2018 với động cơ tăng lên 630Hp, khiến cho DB11 AMR trở thành một trong những chiếc GT tốc độ nhất thế giới và cũng là mẫu xe nhanh nhất hiện nay của Aston Martin.', 630000, 9, N'images/products/b15a0ada-f953-4f4d-a9d2-e48e43f98898.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (33, N'Aston Martin DBS Superleggera Volante', N'Aston Martin DBS Superleggera là dòng siêu xe ra mắt nhằm thay thế cho chiếc Vanquish S. Được phát triển dựa trên bản DB11, DBS Superleggera có 2 phiên bản là Coupe và Volante (mui trần). Động cơ V12 5.2L công suất 715 mã lực, tốc độ tối đa 339,5km/h và khả năng tăng tốc 0-100km/h trong 3,4s (bản Coupe); 3,6s (bản Volante).', 314000, 9, N'images/products/bdbebedd-be05-4864-a31d-cf84c980ce27.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (34, N'Aston Martin DBX', N'Aston Martin DBX là dòng SUV đầu tiên của thương hiệu xe Anh Quốc. Ra đời vào tháng 03-2020 và chính thức bán ra vào mùa hè cùng năm. DBX là đối thủ của Lamborghini Urus, Bentley Bentayga. DBX được trang bị động cơ tăng áp kép V8 4.0L, sản sinh công suất 550Ps và mô-men xoắn 700 Nm. Đi kèm với hộp số tự động 9 cấp và hệ dẫn động 4 bánh. Khả năng tăng tốc 0-100 km/h trong 4,5 giây, tốc độ tối đa 291 km/h.', 642000, 9, N'images/products/511bf044-db15-4041-9779-008b36b72659.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (35, N'McLaren 600LT', N'McLaren 600LT ra mắt vào tháng 08/2018 được định vị là mẫu xe nhanh, mạnh nhất trong dòng xe thể thao của McLaren. 600LT được lấy cảm hứng từ 675LT ra mắt vào năm 2015. Mẫu xe cũng là thế hệ thứ 4 của McLaren F1 Longtail ra đời từ những năm thập niên 90. 600LT trang bị khối động cơ V8 3.8L Twin Turbo, công suất 592 mã lực (600 PS, tăng 30 mã lực so với 570S và cũng là con số tên xe), mô-men xoắn cực đại đạt 620 Nm. Tỷ lệ công suất trên trọng lượng đạt 474 mã lực/tấn.', 242500, 10, N'images/products/daaab95b-ab6b-414f-990b-e66d957a30eb.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (36, N'McLaren Senna', N'Siêu xe đua hoàn toàn mới McLaren Senna chính thức được ra mắt công chúng tại triển lãm ô tô Geneva diễn ra vào tháng 3/2018. Xe sử dụng động cơ V8 tăng áp kép dung tích 4 lít, cho công suất 789 mã lực và mô-men xoắn 800 Nm, tỷ suất công suất trên trọng lượng là 659 mã lực/tấn. Xe được trang bị hộp số ly hợp kép 7 cấp, truyền lực qua hệ dẫn động cầu sau.', 1000000, 10, N'images/products/cac7a44f-c4e7-4848-b5f8-1e291850a0eb.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (37, N'McLaren Speedtail', N'McLaren Speedtail là dòng siêu xe thể thao động cơ hybrid. Được giới thiệu lần đầu năm 2018, Speedtail chỉ sản xuất hạn chế 106 chiếc. Sử dụng hệ động lực Hybrid với công suất lên đến 1036Hp, mô-men xoắn 1149Nm, McLaren Speedtail có thể tăng tốc lên 300km/h trong 12,8s. Tốc độ tối đa 403km/h. Đây là siêu xe mạnh nhất và đắt nhất của McLaren.', 2100000, 10, N'images/products/d4bb7816-0fd9-4ff5-b4ff-26421b0b4725.jfif')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (38, N'Bugatti La Voiture Noire', N'Mẫu megacar đắt giá nhất thế giới tính đến thời điểm này là Bugatti La Voiture Noire. Ra mắt vào tháng 03/2019 tại triển lãm Geneva 2019, cầu thủ Cristiano Ronaldo chính là khách hàng đầu tiên. Phát triển dựa trên Chiron, Bugatti La Voiture Noire được trang bị khối cơ động cơ W16 8.0L tăng áp, công suất 1.479 mã lực đi kèm là hộp số tự động ly hợp kép 7 cấp và hệ dẫn động 4 bánh toàn thời gian.', 18680000, 11, N'images/products/5acba7e8-2670-4a5e-a472-bcce5508bc16.jfif')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (39, N'Bugatti Centodieci', N'Siêu xe (hạng megacar) Bugatti Centodieci chính thức ra mắt giới mộ điệu từ tháng 08/2019. Bugatti Centodieci mang trên mình động cơ xăng W16 tăng áp, dung tích 8 lít, sản sinh công suất 1.600 mã lực. Xe nhẹ hơn Chiron khoảng 20 kg để đạt được tỷ lệ trọng lượng/sức mạnh khoảng 1,3 kg/mã lực. Nhờ đó, xe tăng tốc từ 0-100km/h chỉ trong 2,4 giây và đạt tốc độ tối đa 380 km/h.', 9000000, 11, N'images/products/f19b4edc-c8b7-4938-9538-6bc20fd13e10.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (40, N'Bugatti Bolide', N'Siêu xe Bugatti Bolide được giới thiệu lần đầu trong tháng 10-2020. Với động cơ 8.0L, W16-xylanh, siêu xe Bugatti Bolide có công suất tối đa 1.850Ps (mô-men xoắn cũng 1850Nm luôn) nhưng cân nặng chỉ 1.240 kg, giúp xe đạt tỷ lệ công suất/trọng lượng rất khủng khiếp, khiến cho Bolide giống như chiếc xe đua F1 dành cho đường phố. Được biết, Bolide có khả năng tăng tốc 0-100 km/h trong 2,17 giây, 0-200 km/h trong 4,36 giây, 0-300 km/h trong 7,37 giây, 0-400 km/h trong 12,08 giây, và 0-500 km/h trong 20,16 giây.', 1000000, 11, N'images/products/10d92ace-9894-4f52-9414-410418f38559.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (41, N'Koenigsegg Agera R', N'Dòng Agera có 4 phiên bản là Agera (2010), Agera R (2011-2015), Agera S (2012-2014), Agera RS (2015-2016). Agera R được sản xuất từ năm 2011 và cho đến 2015 là ngừng sản xuất với số lượng chỉ khoảng 20 chiếc trên toàn thế giới. Xe sử dụng động cơ V8 5.0L Twin Turbo, công suất 1140Ps/6900rpm; mô-men xoắn 1200Nm/4100rpm. Khả năng tăng tốc lên 100km/h của siêu xe này là 2.8s.', 2100000, 12, N'images/products/1117bec9-781b-42fa-b4c1-c08b383db870.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (42, N'Koenigsegg Regera', N'Chỉ hơn một năm từ khi Koenigsegg giới thiệu Regera tại Geneva Auto Show 2016, hãng siêu xe Thụy Điển cho biết tất cả các xe Koenigsegg Regera đều đã có chủ. Lý do là nhãn hiệu xe này chỉ được sản xuất giới hạn 80 chiếc. Chiếc xe đã xuất hiện ấn tượng trong bộ phim siêu phẩm đua xe Need For Speed 2014. Đuôi xe Koenigsegg Regera. Koenigsegg Regera chiếc xe mang nhiều bí kíp công nghệ nhất mà hãng này từng sản xuất. Xe sử dụng động cơ V8, tăng áp kép và 3 mô-tơ điện, có thể đạt tổng công suất 1.500 Hp (ngang ngửa siêu xe Bugatti Chiron mạnh nhất thế giới hiện nay), truyền động trực tiếp tới bánh sau mà không cần hộp số. Hệ thống truyền dẫn trực tiếp này giúp đẩy chiếc xe đạt tốc độ 399 km/h trong 20 giây.', 5500000, 12, N'images/products/06da906f-b38f-4cb7-937c-5b478a570cc9.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (43, N'Koenigsegg Jesko', N'Koenigsegg Jesko trang bị động cơ V8 tăng áp kép được thiết kế lại, sản sinh công suất 1.280 mã lực khi sử dụng nhiên liệu xăng thông thường, và 1.578 mã lực nếu sử dụng xăng E85 tại một số thị trường nhất định, mô-men xoắn cực đại lên đến 1.500 Nm tại vòng tua 5.100 vòng/phút. Đây là động cơ đốt trong mạnh mẽ nhất mà Koenigsegg thiết kế.', 2800000, 12, N'images/products/e71299a2-9604-4cdc-9fec-b1a89108cfb0.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (44, N'Pagani Huayra BC Roadster', N'Pagani Huayra là dòng siêu xe thể thao động cơ cỡ trung (mid-engine sports car) của nhà sản xuất ô tô thể thao Pagani, Italia. Pagani Huayra ra mắt lần đầu năm 2012 (bản coupe), nhằm kế thừa mẫu xe tiền nhiệm Pagani Zonda. Pagani Huayra cũng là một siêu xe thực thụ (hypercar), được tạp chí Top Gear phong là "The Hypercar of the Year 2012". Huayra BC Roadster là một trường hợp lạ bởi tuy là phiên bản mui trần nhưng lại có hiệu năng cao hơn cả bản Huayra BC Coupe ra mắt trước đó.', 3500000, 13, N'images/products/03a66e88-5812-4db8-9a62-91ca4a98dd0f.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (45, N'Pagani Zonda R', N'Pagani Zonda R ra mắt tại triển lãm SEMA 2009 tại Las Vegas, Nevada, Mỹ. Cấu trúc thân xe bằng sợi carbon giúp trọng lượng chỉ còn ở mức 1.070 kg. Xe trang bị động cơ V12 dung tích 6 lít, công suất tới 750 mã lực và mô-men xoắn cực đại 710 Nm. Pagani Zonda R có khả năng tăng tốc lên 100 km/h chỉ sau 2,7 giây từ vị trí xuất phát. Hiện tại đã ngừng sản xuất nhưng dòng xe này vẫn được mua bán trên thị trường xe đã qua sử dụng, với mức giá không hề giảm so với giá xe mới.', 1900000, 13, N'images/products/bd16f7f3-63d6-46eb-892d-709902fffa3d.jpg')
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [ImageUrl]) VALUES (46, N'Pagani Zonda HP Barchetta', N'Sau 18 năm gây dựng tên tuổi cho Zonda, Pagani đã quyết định chấm dứt dòng đời siêu xe này vào năm 2017. Tuy nhiên, một số phiên bản đặc biệt cuối cùng vẫn được hãng xe Italia tung ra và HP Barchetta là một trong số đó. Zonda HP Barchetta sử dụng động cơ V12 6.0L tăng áp kép với 800Hp, kèm với hộp số sàn 6 cấp. Thiết kế cửa sổ xe khá đặc biệt kèm với việc xe hoàn toàn không có trần khiến xe bị một điểm trừ nho nhỏ do không thể vận hành nếu trời mưa. Chỉ có 3 chiếc được sản xuất với giá bán được coi là cắt cổ, và hiện đang là chiếc xe có giá đắt nhất thế giới.', 17500000, 13, N'images/products/17befc14-3ca8-4626-b056-92fc0bcb0d53.jfif')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6/24/2024 5:59:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/24/2024 5:59:34 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6/24/2024 5:59:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6/24/2024 5:59:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6/24/2024 5:59:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 6/24/2024 5:59:34 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/24/2024 5:59:34 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderId]    Script Date: 6/24/2024 5:59:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderId] ON [dbo].[OrderDetails]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 6/24/2024 5:59:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 6/24/2024 5:59:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
USE [master]
GO
ALTER DATABASE [DoAn] SET  READ_WRITE 
GO
