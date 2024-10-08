USE [Book]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authorities]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Roleid] [varchar](10) NULL,
 CONSTRAINT [PK_Authorities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Billdetails]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Billdetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Billid] [bigint] NULL,
	[Bookid] [bigint] NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
	[Billdate] [date] NULL,
 CONSTRAINT [PK_Billdetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bills]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ordercode] [nvarchar](50) NULL,
	[Userid] [nvarchar](50) NULL,
	[Createdate] [datetime] NULL,
	[Billtotal] [float] NULL,
	[Ship] [float] NULL,
	[Phone] [nchar](10) NULL,
	[Address] [nvarchar](max) NULL,
	[Voucherid] [nvarchar](12) NULL,
	[Status] [nvarchar](50) NULL,
	[Orderstatus] [nvarchar](50) NULL,
	[Note] [nvarchar](max) NULL,
	[Leadtime] [nvarchar](50) NULL,
	[ward] [nvarchar](50) NULL,
	[district] [int] NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Image] [nvarchar](max) NULL,
	[Price] [float] NULL,
	[Createdate] [datetime] NULL,
	[Status] [int] NULL,
	[Categoryid] [nvarchar](50) NULL,
	[Discriptions] [nvarchar](max) NULL,
	[Authorsid] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cartdetails]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cartdetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Cartid] [int] NULL,
	[Bookid] [bigint] NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Cartdetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [nvarchar](50) NULL,
	[Createdate] [date] NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cate_statistic]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cate_statistic](
	[name] [varchar](255) NOT NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChangePanel]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChangePanel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LinkImage] [nvarchar](200) NULL,
	[IdCate] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChangePanel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bookid] [bigint] NULL,
	[discount] [int] NULL,
	[startdate] [date] NULL,
	[enddate] [date] NULL,
 CONSTRAINT [PK_Discounts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evaluates]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluates](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Userid] [nvarchar](50) NULL,
	[Bookid] [bigint] NULL,
	[Comment] [nvarchar](225) NULL,
	[Star] [int] NULL,
	[CommentDate] [datetime] NULL,
 CONSTRAINT [PK_Evaluates] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Userid] [nvarchar](50) NULL,
	[Bookid] [bigint] NULL,
	[Likedate] [date] NULL,
 CONSTRAINT [PK_Favorites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Bookid] [bigint] NULL,
	[Link] [nvarchar](max) NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Import]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Bookid] [bigint] NULL,
	[Quantity] [int] NULL,
	[Adddate] [datetime] NULL,
 CONSTRAINT [PK_Import] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_statistics]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_statistics](
	[name] [varchar](255) NOT NULL,
	[total_quantity_sold] [bigint] NULL,
	[total_revenue] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proofreads]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proofreads](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Bookid] [bigint] NULL,
	[images] [nvarchar](max) NULL,
 CONSTRAINT [PK_Proofread] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report](
	[create_date] [datetime2](7) NOT NULL,
	[full_name] [varchar](255) NULL,
	[order_count] [bigint] NULL,
	[total_amount] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[create_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[report_cate]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[report_cate](
	[name] [varchar](255) NOT NULL,
	[avg_price] [float] NULL,
	[number_of_orders] [bigint] NULL,
	[total_quantity] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[revenuestatistics]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[revenuestatistics](
	[calendar] [int] NOT NULL,
	[total_revenue] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[calendar] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [varchar](10) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Storage]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Storage](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Bookid] [bigint] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Storage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uservoucher]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uservoucher](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[voucherid] [nvarchar](12) NULL,
 CONSTRAINT [PK_uservoucher] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vouchers]    Script Date: 5/2/2024 11:41:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vouchers](
	[Voucherid] [nvarchar](12) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Discount] [float] NULL,
	[image] [nvarchar](50) NULL,
	[Startdate] [date] NULL,
	[Enddate] [date] NULL,
 CONSTRAINT [PK_Vouchers] PRIMARY KEY CLUSTERED 
(
	[Voucherid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'abc', N'abc', N'Nguyễn Văn Aa', N'An3@gmail.com', N'745399bc.png', N'0388493548', N'Cần Thơ')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'admin', N'admin', N'Nguyễn Văn B', N'admin123@gmail.com', N'c4c56cef.jpg', N'0388490098', N'An Giang')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'anh123', N'anh123', N'Nguyễn Hoàng Anh', N'anhnh12345@gmail.com', N'55442608.jpg', N'0356947592', N'Cà Mau')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'anhnh', N'12345', N'Nguyễn Việt Anh', N'anhnv123@gmail.com', N'222b5b25.jpg', N'0375947528', N'Hà Nội')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'binh123', N'binh123', N'Lê Chí Bình ', N'b@gmail.com', N'efccf13e.jpg', N'0359284859', N'Hà Nội')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'giang123', N'giang123', N'Lê Minh Giang', N'g@gmail.com', N'd2192b48.jpg', N'038772792858', N'Đà Nẵng')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'Ha123', N'ha123', N'Nguyễn Ngọc Hà', N'ha1233@gmail.com', N'436e93d9.jpeg', N'0358694344', N'Đà Nẵng')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'hao123', N'hao123', N'Bùi Vỹ Hào', N'haobv1221@gmail.com', N'88e79d73.jpg', N'03687405869', N'Bình Dương')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'hao1230', N'hao123', N'Nguyễn Anh Hào', N'h3@gmail.com', N'a336aead.png', N'0385823953', N'Bình Định')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'hau123', N'hau123', N'Nguyễn Trung Hậu', N'ha123@gmail.com', N'd2192b48.jpg', N'0385598581', N'Huế')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'hduc', N'123', N'Tạ Huỳnh Đức', N'hu@gmail.com', N'b314a172.jpg', N'0366846921', N'Tra Vinh')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'Hieutv', N'123', N'Tiêu Văn Hiếu', N'tieuvh@gmail.com', N'90df8da9.jpg', N'0356947592', N'Cà Mau')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'hung111', N'hung111', N'Dương Duy Hưng', N'hungdd111@gmail.com', N'd2192b48.jpg', N'0384959928', N'Hải Phòng')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'huynhtt', N'huynh123', N'Trần Thị Huỳnh', N'huynhtt123@gmail.com', N'abc14941.jpg', N'0368473889', N'Lào Ca')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'khangna123', N'khan', N'Nguyễn An Khang', N'khang111@gmail.com', N'd2192b48.jpg', N'0368473859', N'Gia Lai')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'Khangnh', N'123', N'Nguyễn Hoàng Khang', N'khanglnh@gmail.com', N'a7ef6d08.jpg', N'0375947528', N'Hà Nội')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'khanh', N'123', N'Nguyễn Vĩnh Khánh', N'khanh1123@gmail.com', N'5137dc0.jpg', N'0348593882', N'Cà Mau')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'khanhvv123', N'khanh123', N'Võ Văn Khanh', N'khanh123@gmail.com', N'236b9fed.png', N'0388246980', N'317 Đồng Văn Cống, An Thới')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'khoa123', N'123', N'Nguyễn Đăng Khoa', N'khoa123@gmail.com', N'13abb44e.jpg', N'0349858322', N'Bac Liêu')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'Kiendth', N'123', N'Dương Thị Hồng Kiền ', N'Kiendth@gmail.com', N'3486e906.jpg', N'0359284859', N'Hà Nội')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'lam0909', N'lam0909', N'Nguyễn Hồng Lam', N'la9@gmail.com', N'd2192b48.jpg', N'0395873472', N'Biên Hòa')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'linh', N'123', N'Nguyễn Thị B', N'Vu@gmail.com', N'd2192b48.jpg', N'0388490985', N'An Giang')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'linhhh', N'123', N'Vũ Linh Trần', N'v7@gmail.com', N'301dbfdc.jpg', N'0388490987', N'317 Đồng Văn Cống, An Thới')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'nam123', N'nam123', N'Trần Văn Nam', N'nam123@gmail.com', N'55db42eb.jpg', N'0354839093', N'Thanh Hóa')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'namnv', N'nam123', N'Nguyễn Việt Nam', N'na3@gmail.com', N'5b3de1eb.jpg', N'0397594935', N'Cao Bằng')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'phat', N'123', N'Le Tuan Phat', N'syole188@gmail.com', N'cebbbfd2.jpg', N'0907647894', N'18A Hẻm 2 Mậu Thân Xuân Khánh,Ninh Kiều CT')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'Phat1', N'123', N'Lê Tuấn Phát', N'phat1@gmail.com', N'cbd817ce.png', N'0812104860', N'Cần thơ')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'Phatlt', N'123', N'Lê Tuấn Phát', N'phatltpc04843@fpt.edu.vn', N'5b736a8e.jpg', N'0388493548', N'Cần Thơ')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'phong123', N'phong123', N'Lê Minh Phong', N'pho2@gmail.com', N'9caa1c33.png', N'0388572592', N'Hậu Giang')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'phu123', N'phu123', N'Nguễn An Phú', N'p23@gmail.com', N'd2192b48.jpg', N'0385895728', N'Hà Tĩnh')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'qua123', N'123', N'Huỳnh Dương Quá', N'qua123@gmail.com', N'f325e468.jpg', N'0354775737', N'Kiên Giang')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'quangnt12', N'quang123', N'Nguyễn Thanh Quang', N'qua3@gmail.com', N'7930d3c3.jpg', N'0385923853', N'Lâm Đồng')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'quoc1212', N'quoc1212', N'Hoàng Văn Quốc', N'quacaaa2@gmail.com', N'518f95ac.jpg', N'0384598841', N'Cao Bằng')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'Sonnh', N'123', N'Nguyễn Hoàng Sơn', N'sonnh@gmail.com', N'fb48cf64.jpg', N'038772792858', N'Đà Nẵng')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'sonnt', N'123', N'Nguyễn Trường Sơn', N'sonnt123@gmail.com', N'd2192b48.jpg', N'0385758249', N'Bắc Giang')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'tien', N'123', N'Nguyễn Hoàng Tiến', N'hihrin@gmail.com.vn', N'48a1163c.jpg', N'0385746582', N'Vĩnh Long')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'tien123', N'tien123', N'Tiến Hoàng', N'kka1@gmail.com', N'd2192b48.jpg', N'0358475789', N'Cần Thơ')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'tiennv', N'123', N'Nguyễn Hoàng Tiến', N'nv1@gmail.com', N'd2192b48.jpg', N'0763447035', N'Vĩnh long')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'tienth', N'123', N'Nguyễn Hoàng Tiến', N'len73854@gmail.com', N'7ae8082e.jpg', N'0763447035', N'Cà Mau')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'Toantp', N'123', N'Trần Phước Toàn', N'toanpt@gmail.com', N'9f0c842e.jpg', N'0388490098', N'An Giang')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'tung123', N'tung123', N'Trần Đình Tùng', N'tungdt123@gmail.com', N'd2192b48.jpg', N'0395777271', N'Vĩnh Long')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'tunt123', N'tu123', N'Nguyễn Thị Tú', N'tu123@gmail.com', N'c4a3e306.png', N'0395953285', N'An Giang')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'user', N'anh123', N'User', N'user12345@gmail.com', N'55442608.jpg', N'0356947592', N'Cà Mau')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'vana123', N'abc', N'Nguyễn Văn A', N'Anv@gmail.com', N'd2192b48.jpg', N'0974765839', N'Cần Thơ')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Phone], [Address]) VALUES (N'vanlh123', N'van123', N'Lê Hoàng Văn', N'vanlh112@gmail.com', N'16bdbc3f.png', N'0358683893', N'Thái Bình')
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (1, N'hduc', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (2, N'linh', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (3, N'qua123', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (6, N'khanh', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (7, N'khoa123', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (12, N'tien', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (16, N'abc', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (17, N'tienth', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (21, N'tien123', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (24, N'binh123', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (25, N'anhnh', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (26, N'giang123', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (27, N'hao123', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (28, N'hau123', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (30, N'hung111', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (31, N'huynhtt', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (32, N'phu123', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (33, N'namnv', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (34, N'lam0909', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (35, N'khangna123', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (36, N'quoc1212', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (37, N'tunt123', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (38, N'vanlh123', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (39, N'sonnt', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (40, N'tung123', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (41, N'tiennv', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (44, N'Ha123', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (45, N'hao1230', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (46, N'nam123', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (47, N'phong123', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (48, N'quangnt12', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (49, N'vana123', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (56, N'anh123', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (57, N'anh123', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (58, N'anh123', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (59, N'phat', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (60, N'Phatlt', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (61, N'Toantp', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (62, N'Hieutv', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (63, N'admin', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (64, N'Khangnh', N'ADMIN')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (65, N'Kiendth', N'USER')
INSERT [dbo].[Authorities] ([Id], [Username], [Roleid]) VALUES (66, N'Sonnh', N'ADMIN')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([Id], [Name]) VALUES (1, N'José Mauro de Vasconcelos')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (2, N'Higashino Keigo')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (3, N'Paulo Coelho')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (4, N'Matt Haig')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (5, N'Khaled Hosseini')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (6, N'Hae Min')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (7, N'Morgan Housel')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (8, N'Napoleon Hill')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (9, N'Tim Marshall')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (10, N'GEORGE SAMUEL CLASON')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (11, N'Luis Sepulveda')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (12, N'Antoine De Saint-Exupéry')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (13, N'Jun Phạm (365 Band)')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (14, N'Tô Hoài')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (15, N'Nguyên Phong')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (16, N'Brian L Weiss')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (17, N' Baird T. Spalding, Nguyên Phong')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (18, N'Thích Nhất Hạnh')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (19, N'Nhóm tác giả')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (20, N' Ngô Sa Thạch')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (21, N'Nam Cao')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (22, N'Đặng Nguyễn Đông Vy')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (29, N'Văn Cao')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (30, N'Nguyễn Khoa Điềm')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (33, N'Nhạc Dũng')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (34, N'Huyền Phi')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (35, N'Kanehito Yamada')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (36, N'Mitsutaka Yuuki')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (37, N'Lisa Jewell')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (38, N'Nguyễn Du')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (40, N'Fujiko F Fujio')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (41, N'Takehiko Inoue')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (44, N'Kim Đồng')
INSERT [dbo].[Authors] ([Id], [Name]) VALUES (47, N'Tô Hoài')
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[Billdetails] ON 

INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (200, 142, 10, 77100, 2, CAST(N'2023-11-30' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (201, 143, 11, 57100, 1, CAST(N'2023-11-30' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (202, 144, 9, 108000, 1, CAST(N'2023-11-30' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (203, 145, 1, 157000, 1, CAST(N'2023-11-30' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (204, 146, 10, 77100, 1, CAST(N'2023-11-30' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (205, 147, 1, 157000, 1, CAST(N'2023-11-30' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (206, 148, 13, 88000, 1, CAST(N'2023-11-30' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (207, 149, 12, 115000, 1, CAST(N'2023-11-30' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (208, 150, 1, 157000, 1, CAST(N'2023-12-02' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (209, 151, 9, 108000, 1, CAST(N'2023-12-02' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (210, 152, 12, 115000, 1, CAST(N'2023-12-03' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (211, 152, 13, 88000, 1, CAST(N'2023-12-03' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (212, 153, 112, 8000, 2, CAST(N'2023-12-03' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (213, 154, 13, 88000, 1, CAST(N'2023-12-03' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (214, 155, 12, 115000, 1, CAST(N'2023-12-03' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (215, 156, 14, 97300, 2, CAST(N'2023-12-03' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (216, 156, 15, 122850, 1, CAST(N'2023-12-03' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (217, 157, 1, 157000, 1, CAST(N'2023-12-03' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (218, 158, 115, 6600, 3, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (219, 159, 15, 122850, 1, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (220, 160, 11, 57100, 1, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (221, 161, 111, 78000, 1, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (222, 162, 9, 108000, 10, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (223, 162, 10, 77100, 9, CAST(N'2023-12-04' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (224, 163, 15, 122850, 1, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (225, 164, 111, 78000, 2, CAST(N'2024-01-14' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (226, 165, 111, 78000, 3, CAST(N'2024-01-18' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (227, 166, 110, 9000, 1, CAST(N'2024-01-18' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (228, 166, 111, 78000, 1, CAST(N'2024-01-18' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (229, 167, 109, 55000, 1, CAST(N'2024-03-03' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (230, 168, 10, 77100, 1, CAST(N'2024-03-29' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (231, 168, 49, 110000, 1, CAST(N'2024-03-29' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (232, 169, 54, 150000, 1, CAST(N'2024-04-03' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (233, 170, 347, 150000, 1, CAST(N'2024-05-02' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (234, 170, 314, 50000, 1, CAST(N'2024-05-02' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (235, 171, 348, 150000, 1, CAST(N'2024-05-02' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (236, 182, 348, 150000, 1, CAST(N'2024-05-02' AS Date))
INSERT [dbo].[Billdetails] ([Id], [Billid], [Bookid], [Price], [Quantity], [Billdate]) VALUES (237, 203, 348, 150000, 1, CAST(N'2024-05-02' AS Date))
SET IDENTITY_INSERT [dbo].[Billdetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Bills] ON 

INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (142, N'LFFHUX', N'hduc', CAST(N'2023-11-30T00:00:00.000' AS DateTime), 189401, 35201, N'0366846921', N'Xã Khánh Lâm, Huyện U Minh, Cà Mau', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (143, N'LFFHUA', N'hduc', CAST(N'2023-11-30T00:00:00.000' AS DateTime), 125301, 68201, N'0366846921', N'Xã Sơn Bình, Huyện Tam Đường, Lai Châu', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (144, N'LFFHU8', N'hduc', CAST(N'2023-11-30T00:00:00.000' AS DateTime), 176201, 68201, N'0366846921', N'Xã Quý Hòa, Huyện Lạc Sơn, Hòa Bình', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (145, N'LFFHUY', N'hduc', CAST(N'2023-11-30T00:00:00.000' AS DateTime), 191101, 34101, N'0366846921', N'Xã Phước Thái, Huyện Ninh Phước, Ninh Thuận', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (146, N'LFFHUR', N'hduc', CAST(N'2023-11-30T00:00:00.000' AS DateTime), 112301, 35201, N'0366846921', N'Xã Khánh Hội, Huyện U Minh, Cà Mau', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (147, N'LFFHUM', N'hduc', CAST(N'2023-11-30T00:00:00.000' AS DateTime), 192201, 35201, N'0366846921', N'Xã Khánh Thuận, Huyện U Minh, Cà Mau', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (148, N'LFFHCQ', N'hduc', CAST(N'2023-11-30T00:00:00.000' AS DateTime), 123201, 35201, N'0366846921', N'Xã Đông Phước A, Huyện Châu Thành, Hậu Giang', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (149, N'LFFHCT', N'hduc', CAST(N'2023-11-30T00:00:00.000' AS DateTime), 150201, 35201, N'0366846921', N'Xã Phong Tân, Thị Xã Giá Rai, Bạc Liêu', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (150, N'LFF8KY', N'hduc', CAST(N'2023-12-02T00:00:00.000' AS DateTime), 191101, 34101, N'0366846921', N'Xã Hàm Trí, Huyện Hàm Thuận Bắc, Bình Thuận', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (151, N'LFF8KR', N'hduc', CAST(N'2023-12-02T00:00:00.000' AS DateTime), 176201, 68201, N'0366846921', N'Xã Nà Hẩu, Huyện Văn Yên, Yên Bái', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (152, N'LFF8HA', N'hduc', CAST(N'2023-12-03T00:00:00.000' AS DateTime), 238201, 35201, N'0366846921', N'Xã Ninh Quới, Huyện Hồng Dân, Bạc Liêu', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (153, N'LFF8HR', N'hduc', CAST(N'2023-12-03T00:00:00.000' AS DateTime), 83101, 67101, N'0366846921', N'Xã Liên Bão, Huyện Tiên Du, Bắc Ninh', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (154, N'LFF8HM', N'khanh', CAST(N'2023-12-03T00:00:00.000' AS DateTime), 122101, 34101, N'0348593882', N'Xã Vị Trung, Huyện Vị Thuỷ, Hậu Giang', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (155, N'LFF8HE', N'khanh', CAST(N'2023-12-03T00:00:00.000' AS DateTime), 149101, 34101, N'0348593882', N'Xã Vị Trung, Huyện Vị Thuỷ, Hậu Giang', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (156, N'LFF8XG', N'hduc', CAST(N'2023-12-03T00:00:00.000' AS DateTime), 352651, 35201, N'0366846921', N'Xã Phong Thạnh Đông, Thị Xã Giá Rai, Bạc Liêu', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (157, N'LFF8XB', N'hduc', CAST(N'2023-12-03T00:00:00.000' AS DateTime), 215201, 68201, N'0366846921', N'Xã Nậm Chầy, Huyện Văn Bàn, Lào Cai', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (158, N'LFFENK', N'hduc', CAST(N'2023-12-04T14:57:11.233' AS DateTime), 55001, 35201, N'0366846921', N'Xã Ninh Thạnh Lợi, Huyện Hồng Dân, Bạc Liêu', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (159, N'LFFENT', N'khanh', CAST(N'2023-12-04T15:00:16.650' AS DateTime), 158051, 35201, N'0348593882', N'Xã Đông Hà, Huyện Đức Linh, Bình Thuận', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (160, N'LFFENX', N'khanh', CAST(N'2023-12-04T15:01:24.423' AS DateTime), 91201, 34101, N'0348593882', N'Xã Lợi Hải, Huyện Thuận Bắc, Ninh Thuận', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (161, N'LFFENY', N'hduc', CAST(N'2023-12-04T15:04:17.560' AS DateTime), 146201, 68201, N'0366846921', N'Xã Pa Vây Sử, Huyện Phong Thổ, Lai Châu', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (162, N'LFFER8', N'hduc', CAST(N'2023-12-04T19:55:38.033' AS DateTime), 1786871, 42971, N'0366846921', N'Xã Long Bình, Thị xã Long Mỹ, Hậu Giang', N'LUNARNEWYEAR', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (163, N'LF7L93', N'hduc', CAST(N'2023-12-05T22:28:06.247' AS DateTime), 35201, 35201, N'0366846921', N'Xã Tạ An Khương  Nam, Huyện Đầm Dơi, Cà Mau', N'GIAMGIA10K', N'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (164, NULL, N'abc', CAST(N'2024-01-14T16:32:13.243' AS DateTime), 156000, NULL, N'0388493548', N'Xã Phú Nghĩa, Huyện Lạc Thủy, Hòa Bình', N'GIAMGIA10K', N'0', N'Đã hủy đơn', N'cc', N'1705535999', N'800047', 2157)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (165, NULL, N'phat', CAST(N'2024-01-18T20:38:30.020' AS DateTime), 256000, 22000, N'0907647894', N'Phường An Hòa, Quận Ninh Kiều, Cần Thơ', N'GIAMGIA10K', N'1', N'Chờ xác nhận', N'cc', N'1705708799', N'550103', 1572)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (166, NULL, N'phat', CAST(N'2024-01-18T21:28:53.317' AS DateTime), 87000, 22000, N'0907647894', N'Phường Xuân Khánh, Quận Ninh Kiều, Cần Thơ', N'GIAMGIA10K', N'1', N'Chờ xác nhận', N'cc', N'1705708799', N'550113', 1572)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (167, NULL, N'linh', CAST(N'2024-03-03T17:09:17.653' AS DateTime), 55000, 22000, N'0388490985', N'Xã Hồng Thái, Huyện Văn Lãng, Lạng Sơn', N'GIAMGIA10K', N'0', N'Đã hủy đơn', N'cc', N'1709769599', N'100408', 3310)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (168, NULL, N'linh', CAST(N'2024-03-29T23:25:23.007' AS DateTime), 255301, 68201, N'0388490985', N'Xã Tống Phan, Huyện Phù Cừ, Hưng Yên', N'GIAMGIA10K', N'1', N'Chờ xác nhận', N'không ghi chú', N'1712102399', N'220713', 2194)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (169, N'LFCCYN', N'linh', CAST(N'2024-04-03T23:53:30.890' AS DateTime), 217101, 67101, N'0388490985', N'Xã Đông Tiến, Huyện Yên Phong, Bắc Ninh', N'GIAMGIA10K', N'Đã thanh toán', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (170, NULL, N'Phatlt', CAST(N'2024-05-02T23:09:13.953' AS DateTime), 235201, 35201, N'0388493548', N'Xã Nguyễn Phích, Huyện U Minh, Cà Mau', N'GIAMGIA10K', N'0', N'Đã giao hàng', N'123', N'1714867199', N'610308', 2042)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (171, NULL, N'Phatlt', CAST(N'2024-05-02T23:09:43.293' AS DateTime), 185201, 35201, N'0388493548', N'Xã Khánh Tiến, Huyện U Minh, Cà Mau', N'GIAMGIA10K', N'1', N'Đã hủy đơn', N'123', N'1714867199', N'610307', 2042)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (182, NULL, N'Phatlt', CAST(N'2024-05-02T23:14:02.510' AS DateTime), 218201, 68201, N'0388493548', N'Xã Pi Toong, Huyện Mường La, Sơn La', N'TANGFREE', N'0', N'Đã hủy đơn', N'123', N'1715039999', N'140315', 3230)
INSERT [dbo].[Bills] ([Id], [ordercode], [Userid], [Createdate], [Billtotal], [Ship], [Phone], [Address], [Voucherid], [Status], [Orderstatus], [Note], [Leadtime], [ward], [district]) VALUES (203, NULL, N'Phatlt', CAST(N'2024-05-02T23:34:35.777' AS DateTime), 218201, 68201, N'0388493548', N'Xã Tiền Tiến, Huyện Phù Cừ, Hưng Yên', N'0', N'0', N'Chờ xác nhận', N'123', N'1715039999', N'220712', 2194)
SET IDENTITY_INSERT [dbo].[Bills] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (1, N'Phàm Nhân Chi Trường Sinh Tiên Đạo', N'pham-nhan-chi-truong-sinh-tien-dao.jpg', 157000, CAST(N'2023-01-02T00:00:00.000' AS DateTime), 1, N'TTHH', N'Bất cứ ai sinh ra vào giai đoạn 198x đến đầu 199x đều sẽ biết đến cái tên Nhóc Maruko. Cô bé đáng yêu chiếm trọn tình cảm của bất cứ đứa trẻ nào.
Bộ truyện với nhân vật chính là cô bé tiểu học Makuro sống trong đại gia đình với ông bà nội, bố mẹ, chị gái. Câu chuyện hàng ngày của cô bé được miêu tả với góc nhìn của một cô bé ngây thơ. Những hành động hết sức ngộ nghĩnh, trẻ con.
Đặc biệt phiên bản Nhóc Maruko 14 cuốn in lại theo bản năm 1994 này. Toàn bộ lời thoại đều được viết tay, nét chữ của một cô bé tiểu học hết sức dễ thương và đầy thân thiết.', 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (9, N'Tiên Lộ Yên Trần', N'tien-lo-yen-tran.jpg', 108000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TTHH', N'“Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng số một tác phẩm kinh điển của Brazil.”

- Booklist

“Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm tan nát cõi lòng, dù người đọc ở lứa tuổi nào.”

- The National

Hãy làm quen với Zezé, cậu bé tinh nghịch siêu hạng đồng thời cũng đáng yêu bậc nhất, với ước mơ lớn lên trở thành nhà thơ cổ thắt nơ bướm. Chẳng phải ai cũng công nhận khoản “đáng yêu” kia đâu nhé. Bởi vì, ở cái xóm ngoại ô nghèo ấy, nỗi khắc khổ bủa vây đã che mờ mắt người ta trước trái tim thiện lương cùng trí tưởng tượng tuyệt vời của cậu bé con năm tuổi.

Có hề gì đâu bao nhiêu là hắt hủi, đánh mắng, vì Zezé đã có một người bạn đặc biệt để trút nỗi lòng: cây cam ngọt nơi vườn sau. Và cả một người bạn nữa, bằng xương bằng thịt, một ngày kia xuất hiện, cho cậu bé nhạy cảm khôn sớm biết thế nào là trìu mến, thế nào là nỗi đau, và mãi mãi thay đổi cuộc đời cậu.
Mở đầu bằng những thanh âm trong sáng và kết thúc lắng lại trong những nốt trầm hoài niệm, Cây cam ngọt của tôi khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như bông hoa trắng của cái cây sau nhà, và rằng cuộc đời thật khốn khổ nếu thiếu đi lòng yêu thương và niềm trắc ẩn. Cuốn sách kinh điển này bởi thế không ngừng khiến trái tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.', 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (10, N'Huyền Môn', N'huyen-mon.jpg', 77100, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TTHH', N'Điều Kỳ Diệu Của Tiệm Tạp Hóa

Một đêm vội vã lẩn trốn sau phi vụ khoắng đồ nhà người, Atsuya, Shota và Kouhei đã rẽ vào lánh tạm trong một căn nhà hoang bên con dốc vắng người qua lại. Căn nhà có vẻ khi xưa là một tiệm tạp hóa với biển hiệu cũ kỹ bám đầy bồ hóng, khiến người ta khó lòng đọc được trên đó viết gì. Định bụng nghỉ tạm một đêm rồi sáng hôm sau chuồn sớm, cả ba không ngờ chờ đợi cả bọn sẽ là một đêm không ngủ, với bao điều kỳ bí bắt đầu từ một phong thư bất ngờ gửi đến…

Tài kể chuyện hơn người đã giúp Keigo khéo léo thay đổi các mốc dấu thời gian và không gian, chắp nối những câu chuyện tưởng chừng hoàn toàn riêng rẽ thành một kết cấu chặt chẽ, gây bất ngờ từ đầu tới cuối.

 

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (11, N'Diệt Vận Đồ Lục', N'diet-van-do-luc.jpg', 57100, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TTHH', N'Sơ lược về tác phẩm

Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.

Tiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.

“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”', 20)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (12, N'Phong Vân', N'phong-van.jpg', 115000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TTHH', N'Cuộc đời Nora Seed tràn ngập khổ sở và nuối tiếc. Cô có nhiều khả năng nhưng lại ít thành tựu, và luôn cảm thấy mình đã làm mọi người xung quanh mình thất vọng. Thế rồi, vào lúc chuông điểm nửa đêm trong ngày cuối cùng còn trên thế gian, Nora thấy mình xuất hiện ở Thư viện nửa đêm – một nơi “nằm giữa cõi sống và cõi chết”, với những dãy kệ trải dài bất tận và hằng hà sa số cuốn sách giúp Nora có thể sống một cuộc đời khác nếu cô đã lựa chọn cho mình những lối đi khác. Với sự giúp đỡ của một người quen cũ, Nora nắm trong tay cơ hội sửa chữa mọi sai lầm và xóa bỏ mọi hối tiếc để tìm kiếm một cuộc sống hoàn hảo cho riêng mình.

Vậy nhưng, với vô vàn chọn lựa như vậy, đâu mới là cách sống tốt nhất, và ta có nhờ thế mà hạnh phúc hơn chăng?', 13)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (13, N'Vô Địch Thiên Đế', N'vo-dich-thien-de.jpg', 88000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TTHH', N'Bạn đang đọc truyện Vô Địch Thiên Đế full (đã hoàn thành) của tác giả Hà Vị Tiên Phàm. Một trận thác loạn Phi Thăng, Diệp Phàm sống lại trăm năm trước. Toàn năng yêu nghiệt, không cùng tầng xuất vũ kỹ, không chỗ nào không biết bác học, biết trước tương lai năng lực. Ta tức sống lại, làm nắm chưởng Thiên Địa người, nhưng có người không tuân, giết! Nhưng có người không phục, chém!



Một lời cố định loạn thế, Nhất Kiếm chém Cửu Tiêu, Ngự thần thú, đúc thần binh, Phá Hư Không, Thành Đế chủ, phiên thủ vi vân phúc thủ vi vũ, lại nhìn Diệp Phàm nghịch thiên lên, Quần Lâm vạn giới! Bên cạnh đó, còn có những truyện cũng vô cùng hấp dẫn như Lâm Mộc Báo Thù hay Thiên Sư Hạ Sơn.', 16)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (14, N'Vô Tiên', N'vo-tien.jpg', 97300, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TTHH', N'Yêu Những Điều Không Hoàn Hảo

Đại đức Hae Min sinh ra và lớn lên tại Hàn Quốc. Sau khi hoàn thành bằng Thạc sĩ Tôn giáo học đối chiếu ở Đại học Havard và Tiến sĩ Tôn giáo học ở Đại học Princeton, ông ở lại Mỹ tham gia giảng dạy về tôn giáo ở trường Đại học Hampshire, Massachusetts. Không chỉ dừng lại ở nghiên cứu lý thuyết, mùa xuân năm 2000 ông quyết định xuất gia theo tông phái Tào Khê, một tông phái tiêu biểu của Phật giáo Hàn Quốc. Năm 2015, Đại đức Hae Min trở về Seoul, cùng nhiều chuyên gia mở trường Trị liệu tâm hồn, điều trị miễn phí cho những người gặp bất hạnh trong cuộc sống hay đang mang trong lòng nhiều khổ tâm. Đại đức Haemin là một trong những người rất có ảnh hưởng tới giới trẻ Hàn Quốc, trang Twitter cá nhân (https://twitter.com/haeminsunim) của ông hiện có tới hơn một triệu người theo dõi. Sách cùng tác giả: - Những vỡ lẽ của tuổi trẻ - Yêu lấy những điều không hoàn hảo.

 

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (15, N'Quang Âm Chi Ngoại', N'quang-am-chi-ngoai.jpg', 122850, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TTHH', N'Tiền bạc có ở khắp mọi nơi, nó ảnh hưởng đến tất cả chúng ta, và khiến phần lớn chúng ta bối rối. Mọi người nghĩ về nó theo những cách hơi khác nhau một chút. Nó mang lại những bài học có thể được áp dụng tới rất nhiều lĩnh vực trong cuộc sống, như rủi ro, sự tự tin, và hạnh phúc. Rất ít chủ đề cung cấp một lăng kính phóng to đầy quyền lực giúp giải thích vì sao mọi người lại hành xử theo cách họ làm hơn là về tiền bạc. Đó mới là một trong những chương trình hoành tráng nhất trên thế giới.

Chúng ta hiếm khi lâm vào hoàn cảnh nợ ngập đầu ư? Biết tiết kiệm để dành cho lúc khốn khó hơn ư? Chuẩn bị sẵn sàng cho việc nghỉ hưu? Có những cái nhìn thiết thực về mối quan hệ giữa tiền và hạnh phúc của chúng ta hơn phải không?

Chúng ta đều làm những điều điên rồ với tiền bạc, bởi vì chúng ta đều còn khá mới mẻ với trò chơi này và điều có vẻ điên rồ với bạn lại có khi hợp lý với tôi. Nhưng không ai là điên rồ cả – chúng ta đều đưa ra các quyết định dựa trên những trải nghiệm độc đáo riêng có mang vẻ hợp lý với mình ở bất cứ thời điểm nào.', 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (16, N'Bất Diệt Long Đế', N'bat-diet-long-de.jpg', 111000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TTHH', N'"Think and Grow Rich –Nghĩ giàu và Làm giàu là một trong những cuốn sách bán chạy nhất mọi thời đại. Đã hơn 60 triệu bản được phát hành với gần trăm ngôn ngữ trên toàn thế giới và được công nhận là cuốn sách tạo ra nhiều triệu phú, một cuốn sách truyền cảm hứng thành công nhiều hơn bất cứ cuốn sách kinh doanh nào trong lịch sử.

Tác phẩm này đã giúp tác giả của nó, Napoleon Hill, được tôn vinh bằng danh hiệu “người tạo ra những nhà triệu phú”. Đây cũng là cuốn sách hiếm hoi được đứng trong top của rất nhiều bình chọn theo nhiều tiêu chí khác nhau - bình chọn của độc giả, của giới chuyên môn, của báo chí. Lý do để Think and Grow Rich - Nghĩ giàu và làm giàu có được vinh quang này thật hiển nhiên và dễ hiểu: Bằng việc đọc và áp dụng những phương pháp đơn giản, cô đọng này vào đời sống của mỗi cá nhân mà đã có hàng ngàn người trên thế giới trở thành triệu phú và thành công bền vững.

Điều thú vị nhất là các bí quyết này có thể được hiểu và áp dụng bởi bất kỳ một người bình thường nào, hoạt động trong bất cứ lĩnh vực nào. Qua hơn 70 năm tồn tại, những đúc kết về thành công của Napoleon Hill đến nay vẫn không hề bị lỗi thời, ngược lại, thời gian chính là minh chứng sống động cho tính đúng đắn của những bí quyết mà ông chia sẻ.

Sinh ra trong một gia đình nghèo vùng Tây Virginia, con đường thành công của Napoleon Hill cũng trải qua nhiều thăng trầm. Khởi đầu bằng chân cộng tác viên cho một tờ báo địa phương lúc 15 tuổi, đến năm 19 tuổi Hill trở thành nhà quản lý mỏ than trẻ tuổi nhất, sau đó bỏ ngang để theo đuổi ngành luật. Napoleon Hill còn kinh qua nhiều nghề như kinh doanh gỗ, xe hơi, viết báo về kinh doanh…', 11)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (17, N'Khấu Vấn Tiên Đạo', N'khau-van-tien-dao.jpg', 280000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TTHH', N'Tim Marshall đã nhận xét rất xác đáng rằng: "Các đế chế nổi lên rồi suy tàn. Các liên minh hình thành rồi tan rã. Thời kỳ hòa bình ở châu Âu sau các cuộc chiến của Napoleon kéo dài khoảng sáu mươi năm; ảo vọng ''Bá chủ nghìn năm'' của Đức quốc xã cũng chỉ tồn tại hơn một thập niên. Cho nên không thể biết được chính xác cán cân quyền lực sẽ thay đổi như thế nào trong những năm tớ"

Và "những nền kinh tế và địa chính trị khổng lồ sẽ tiếp tục có sức ảnh hưởng lớn đến các vấn đề toàn cầu", vì vậy mà trong cuốn sách bán chạy Những tù nhân địa lý của mình, Tim Marshall đã đề cập đến các cường quốc có ảnh hưởng đến chính trị toàn cầu như Mỹ, Nga, Trung Quốc, EU, Ấn Độ

Tuy thế, các quốc gia nhỏ hơn cũng đóng một vai trò quan trọng, vì địa chính trị liên quan đến các đồng minh, và với trật tự thế giới đang thay đổi không ngừng, các cường quốc lớn cần lôi kéo các nước nhỏ về phe mình và ngược lại. Quyền lực của địa lý sẽ đề cập đến vai trò, vị thế của quốc gia và vùng lãnh thổ nhỏ hơn đó.

Chúng ta sẽ thấy, liệu Thổ Nhĩ Kỳ, Ả Rập Saudi và Anh có cơ hội nào để giành lấy quyền lực trong tương lai hay không?

Có cách gì hóa giải được những rắc rối ở vùng Sahel để ngăn chặn cuộc khủng hoảng tị nạn tiếp theo cho châu Âu không?', NULL)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (18, N'Tiên Giả', N'tien-gia.jpg', 98000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TTHH', N'NGƯỜI GIÀU CÓ NHẤT THÀNH BABYLON

Người giàu có nhất thành Babylon (tiếng Anh: The Richest Man in Babylon) được xem là một trong những tác phẩm truyền cảm hứng lớn nhất về chủ đề tiết kiệm, kế hoạch tài chính và sự giàu có cá nhân. Tác phẩm được viết bởi doanh nhân, nhà văn Mỹ George Samuel Clason vào năm 1926, kể về cách tiết kiệm, buôn bán và làm giàu của người dân ở thành Babylon cổ xưa.

Ban đầu đây chỉ là một tập sách nhỏ, viết về các cách quản lý tài chính và do các ngân hàng và công ty bảo hiểm phân phối. Sau khi được tổng hợp, biên tập thành một cuốn sách trọn vẹn, “Người giàu có nhất thành Babylon” bất ngờ trở nên phổ biến và nổi tiếng trên toàn thế giới bởi những lời khuyên về quản lý tài chính hết sức khôn ngoan.

Cuốn sách tập hợp nhiều câu chuyện cổ về các nhân vật vươn lên từ nghèo khổ để trở nên giàu có, được kính trọng bậc nhất thành Babylon. Có thể kể đến câu chuyện của “người giàu có nhất thành Babylon” Arkad – một thợ khắc gỗ khi còn trẻ, hay người cho vay vàng Mathon, những người nô lệ như Dabasir, Megiddo, Sharru Nada,…

Các bí quyết tài chính quan trọng nhất được cuốn sách tiết lộ bao gồm: 7 cách để chữa trị một túi tiền xẹp lép, 5 quy luật của vàng, công thức tích lũy theo tỷ lệ 1/10. Ngoài ra, cuốn sách còn đưa ra nhiều lời khuyên hữu ích về cách kiểm soát những khoản chi tiêu, làm cho vàng sinh lợi, gìn giữ tài sản, đảm bảo nguồn thu nhập lâu dài,…

Trên thực tế, không ai có thể phủ nhận rằng sự dồi dào về vật chất có thể làm cho đời sống con người trở nên tốt đẹp hơn. Riêng trong lĩnh vực kinh doanh, sức mạnh tài chính là phương tiện chủ yếu để đo lường mức độ thành đạt của các doanh nghiệp.', NULL)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (19, N'Kiếm Lai', N'kiem-lai.jpg', 199000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TTHH', N'QUYỂN SÁCH CĂN BẢN CHO NGƯỜI MỚI BẮT ĐẦU, DÀNH RIÊNG CHO THỊ TRƯỜNG VIỆT NAM.
Bạn đang muốn kinh doanh online?
Bạn muốn tìm kiếm thu nhập thụ động hấp dẫn?
Hay bạn muốn làm việc tại nhà và có được tự do mơ ước?
Nhưng lại có quá nhiều vấn đề cần phải suy nghĩ như:

Bán sản phẩm gì mới có lãi?
Nguồn hàng ở đâu giá tốt và chất lượng?
Làm sao để chốt được đơn hàng hiệu quả?
Cuốn sách Khởi Nghiệp Kinh Doanh Online sẽ giúp bạn trả lời những câu hỏi trên.

Quyển sách mang đến cho bạn:

Cách tìm sản phẩm phù hợp để bắt đầu kinh doanh 
Địa chỉ cung cấp nguồn hàng uy tín và chất lượng
Các mẹo nhỏ giúp tăng tương tác tự nhiên cho kênh bán hàng
Cách chốt đơn hàng hiệu quả và những chương trình khuyến mãi hấp dẫn biến khách hàng trở thành những người bạn thân thiết.
Quyển sách có nội dung gần gũi, thiết thực, theo văn hóa tiêu dùng của người Việt. 

Dễ đọc
Dễ hiểu
Dễ áp dụng
Đây là cuốn CẨM NANG CƠ BẢN nhưng KHÔNG THỂ THIẾU cho bất kỳ ai lần đầu kinh doanh trên Internet.

Hãy mua ngay quyển sách này để bắt đầu công việc kinh doanh của bạn thật hiệu quả!', 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (20, N'Cổ Chân Nhân', N'co-chan-nhan.jpg', 49000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TTHH', N'Cô hải âu Kengah bị nhấn chìm trong váng dầu – thứ chất thải nguy hiểm mà những con người xấu xa bí mật đổ ra đại dương. Với nỗ lực đầy tuyệt vọng, cô bay vào bến cảng Hamburg và rơi xuống ban công của con mèo mun, to đùng, mập ú Zorba. Trong phút cuối cuộc đời, cô sinh ra một quả trứng và con mèo mun hứa với cô sẽ thực hiện ba lời hứa chừng như không tưởng với loài mèo:

Không ăn quả trứng.

Chăm sóc cho tới khi nó nở.

Dạy cho con hải âu bay.

Lời hứa của một con mèo cũng là trách nhiệm của toàn bộ mèo trên bến cảng, bởi vậy bè bạn của Zorba bao gồm ngài mèo Đại Tá đầy uy tín, mèo Secretario nhanh nhảu, mèo Einstein uyên bác, mèo Bốn Biển đầy kinh nghiệm đã chung sức giúp nó hoàn thành trách nhiệm. Tuy nhiên, việc chăm sóc, dạy dỗ một con hải âu đâu phải chuyện đùa, sẽ có hàng trăm rắc rối nảy sinh và cần có những kế hoạch đầy linh hoạt được bàn bạc kỹ càng…

Chuyện con mèo dạy hải âu bay là kiệt tác dành cho thiếu nhi của nhà văn Chi Lê nổi tiếng Luis Sepúlveda – tác giả của cuốn Lão già mê đọc truyện tình đã bán được 18 triệu bản khắp thế giới. Tác phẩm không chỉ là một câu chuyện ấm áp, trong sáng, dễ thương về loài vật mà còn chuyển tải thông điệp về trách nhiệm với môi trường, về sự sẻ chia và yêu thương cũng như ý nghĩa của những nỗ lực – “Chỉ những kẻ dám mới có thể bay”.

Cuốn sách mở đầu cho mùa hè với minh họa dễ thương, hài hước là món quà dành cho mọi trẻ em và người lớn.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (21, N'Bát Bộ Thần Công', N'bat-bo-than-cong.jpg', 73500, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TTHH', N'Hoàng tử bé được viết ở New York trong những ngày tác giả sống lưu vong và được xuất bản lần đầu tiên tại New York vào năm 1943, rồi đến năm 1946 mới được xuất bản tại Pháp. Không nghi ngờ gì, đây là tác phẩm nổi tiếng nhất, được đọc nhiều nhất và cũng được yêu mến nhất của Saint-Exupéry. Cuốn sách được bình chọn là tác phẩm hay nhất thế kỉ 20 ở Pháp, đồng thời cũng là cuốn sách Pháp được dịch và được đọc nhiều nhất trên thế giới. Với 250 ngôn ngữ dịch khác nhau kể cả phương ngữ cùng hơn 200 triệu bản in trên toàn thế giới, Hoàng tử bé được coi là một trong những tác phẩm bán chạy nhất của nhân loại.

Ở Việt Nam, Hoàng tử bé được dịch và xuất bản khá sớm. Từ năm 1966 đã có đồng thời hai bản dịch: Hoàng tử bé của Bùi Giáng do An Tiêm xuất bản và Cậu hoàng con của Trần Thiện Đạo do Khai Trí xuất bản. Từ đó đến nay đã có thêm nhiều bản dịch Hoàng tử bé mới của các dịch giả khác nhau. Bản dịch Hoàng tử bé lần này, xuất bản nhân dịp kỷ niệm 70 năm Hoàng tử bé ra đời, cũng là ấn bản đầu tiên được Gallimard chính thức chuyển nhượng bản quyền tại Việt Nam, hy vọng sẽ góp phần làm phong phú thêm việc dịch và tiếp nhận tác phẩm quan trọng này với các thế hệ độc giả.

Tôi cứ sống cô độc như vậy, chẳng có một ai để chuyện trò thật sự, cho tới một lần gặp nạn ở sa mạc Sahara cách đây sáu năm. Có thứ gì đó bị vỡ trong động cơ máy bay. Và vì ở bên cạnh chẳng có thợ máy cũng như hành khách nào nên một mình tôi sẽ phải cố mà sửa cho bằng được vụ hỏng hóc nan giải này. Với tôi đó thật là một việc sống còn. Tôi chỉ có vừa đủ nước để uống trong tám ngày.

Thế là đêm đầu tiên tôi ngủ trên cát, cách mọi chốn có người ở cả nghìn dặm xa. Tôi cô đơn hơn cả một kẻ đắm tàu sống sót trên bè giữa đại dương. Thế nên các bạn cứ tưởng tượng tôi đã ngạc nhiên làm sao, khi ánh ngày vừa rạng, thì một giọng nói nhỏ nhẹ lạ lùng đã đánh thức tôi. Giọng ấy nói:
“Ông làm ơn… vẽ cho tôi một con cừu!”
- Trích "Hoàng tử bé"
Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (22, N'Trang Tử Tam Kiếm', N'trang-tu-tam-kiem.jpg', 220000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TTHH', N'Cuộc sống của người lớn như ngồi trong một chiếc tàu lửa, mặc nhiên đi về phía trước mà đôi khi bản thân không biết đang tìm kiếm điều gì. Giữa hàng vạn những chuyện mệt mỏi trong cuộc sống, đôi lúc bạn không còn đủ sức để mở lòng mình và sẻ chia với mọi người xung quanh. Và khi ấy, ai cũng mong một lần được bé lại, thả mình nhẹ trôi bên tiếng ru của mẹ và kỷ niệm chơi đùa cùng đám bạn mỗi chiều. Mang trong mình câu hỏi “Ai rồi cũng phải lớn lên, nhưng mấy ai có thể trẻ lại như thuở ban đầu?”, Jun Phạm đưa bạn đọc đến với “Xứ sở miên man” để tìm kiếm câu trả lời cho con đường trở về với niềm vui trong dáng vẻ của một đứa nhỏ được yêu thương, che chở.

Cuốn sách “Xứ sở miên man” mở ra trước mắt bạn đọc bức tranh đối lập trong cuộc sống bình dị của ông Thảo và bé Mì Gói - đứa con gái nhỏ được ông nhận nuôi tại Tiệm cắt tóc Tân Kỳ. Mỗi ngày trôi qua, ông Thảo luôn cảm thấy mệt mỏi vì cơm áo gạo tiền, ông bị cuốn vào cuộc chiến với một con quái vật mang tên Cuối Tháng. Còn Mì Gói thì lúc nào cũng có hàng tá câu hỏi hoang đường về các nàng tiên và những bức vẽ về vùng đất “Minamun” do cô bé tự tạo ra. Sau cuộc cãi vã với ông Thảo, bé Mì Gói bị bắt đến xứ Xứ sở miên man kỳ ảo và cuộc hành trình đi giải cứu Mì Gói đầy điều bất ngờ của ông Thảo và chú Tò he chính thức bắt đầu. Cuốn sách chứa đựng những góc nhìn sâu sắc về cuộc sống của Jun Phạm qua lăng kính đầy màu sắc trẻ thơ trong nhân vật bé Mì Gói.

“Xứ sở miên man” là cuốn sách dành cho thiếu nhi với tất cả sự hồn nhiên trong câu từ, vun vén trí tưởng tượng diệu kỳ và làm thế giới nở đầy sắc hoa rực rỡ trong mắt mỗi em nhỏ. Hình bóng cô bé Mì Gói đắm mình nơi các bức vẽ xinh, tự mình sáng tạo ra một thế giới trong mơ nhiệm màu với các nhân vật đàn cá đầu mèo, tộc Huỳnh Điệp, nông trại của những phú bà rau củ, chú Cuội… Jun Phạm tỉ mỉ xây dựng vùng đất đầy thi vị, khiến trẻ em thích thú khi từ trên trời rơi xuống những thiên thạch đẹp mắt hay từ dưới đất mọc lên như đóa hoa rực rỡ, ngỡ như giấc mơ ngay đời thực. Nhân vật Tò He có nói rằng: “Mơ hay thực cũng phụ thuộc vào cách suy nghĩ của chúng ta. Trẻ con vẫn sống ở thế giới thực, nhưng chúng vẫn luôn mơ mộng đó thôi. Và quan trọng là chúng vẫn rất hạnh phúc.”

Chính từ khung cảnh đáng yêu trong trí tưởng tượng trẻ thơ đó, cuốn sách này cũng dành cho tất cả người lớn từng là những đứa trẻ mộng mơ, đã bỏ quên tình yêu chính mình giữa bộn bề cuộc sống. Dù muốn hay không thì con người ai cũng phải trải qua giai đoạn trưởng thành một lần trong đời. Những khuôn khổ, rào cản, trách nhiệm, bổn phận, hay những phán xét, quy định chẳng phải là chiếc lồng giam vô hình khiến cho chúng ta từng ngày kiệt quệ đi sao.', 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (23, N'Luận Về Đại Chiến Lược', N'luan-ve-dai-chien-luoc.jpg', 267000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TT', N'Cuốn sách kinh điển này khám phá ý nghĩa của “đại chiến lược” bằng cách kể lại những quyết định mang tính định mệnh nhất và cả tồi tệ nhất trong lịch sử. Hầu hết những quyết định ấy đều liên quan đến các cuộc chinh phạt: cuộc xâm lược Hy Lạp của vua Ba Tư Xerxes năm 480 TCN, vua Philip II của Tây Ban Nha xâm lược Anh vào năm 1588, cuộc tấn công của Napoleon vào Nga năm 1812. Qua đây, Gaddis nêu bật sai lầm của việc tập trung vào “khát vọng vô hạn” mà phớt lờ “khả năng có hạn” của mỗi người.

Ông cũng trích dẫn lời nhà triết học Isaiah Berlin, mượn lời nhà thơ Hy Lạp cổ đại Archilochus, hay kể câu chuyện giữa con cáo, kẻ biết nhiều điều, và con nhím, kẻ biết duy nhất một điều lớn lao… từ đó rút ra kết luận rằng các chiến lược gia vĩ đại được coi là “vĩ đại” vì luôn biết cách tập trung vào các mục tiêu bao quát mà không xa rời thực tế. Tâm trí họ vươn xa nhưng đôi chân luôn chạm đất.

Cuốn sách cũng là lời nhắc nhở thế hệ tương lai rằng nếu lãng quên tư duy đại chiến lược, phía trước bạn ắt sẽ là vũng lầy, bế tắc và những kiểu sai lầm rút cạn nguồn lực của bạn vào các mục tiêu không tưởng.

Alphabooks trân trọng giới thiệu!', 11)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (24, N'Chanh Mật Ong', N'chanh-mat-ong.jpg', 119000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TT', N'Khánh lười biếng ngả đầu vào vai tôi, mái tóc mềm mại của nó cọ khẽ vào cổ khiến tôi thấy hơi nhồn nhột. Tôi hơi hích vai muốn đẩy nó ra, nhưng có vẻ như cái hành động biểu thị sự phản đối của tôi càng khiến nó thêm thích thú, và đầu nó thì vẫn chẳn...', 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (25, N'Thể Xác và Tâm Hồn', N'the-xac-va-tam-hon.jpg', 79200, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TT', N'Thể xác và Tâm hồn xoay quanh những biến cố trong gia đình giáo sư Jean Doutreval, với ba người con: Mariette, Michel và Fabienne. Trong đó, Michel - cậu con trai mà ông hết lòng yêu thương - đã từ bỏ tiền đồ xán lạn được cha định sẵn, từ chối cuộc hôn nhân với con gái của một giáo sư danh giá, để đi theo tiếng gọi của lương tâm, lòng trắc ẩn, và tình yêu đích thực...
Nhưng, không đơn thuần là một câu chuyện gia đình, tác phẩm vô cùng lôi cuốn bởi những trang lột tả chân thực về một nghề rất đỗi cao cả, cực nhọc, lại vô cùng bí ẩn với những góc khuất, đó là: nghề Y.
Bức tranh hiện thực sâu sắc về nước Pháp những năm nửa đầu thế kỷ XX được khắc họa với những bất công trong xã hội, những tình yêu éo le, những cảnh đời ngang trái, những kẻ cơ hội, những bác sĩ cố chấp... Và cả những tâm hồn cao thượng, dám hy sinh, dám tranh đấu cho lý tưởng nhân đạo và lẽ phải...
Thể xác và Tâm hồn được xem là một trong những tác phẩm quan trọng nhất trong văn nghiệp của Maxence Van der Meersch. Bộ tiểu thuyết tâm lý xã hội này từng được vinh danh Giải thưởng Viện Hàn lâm Pháp năm 1943 và dịch sang 13 ngôn ngữ khác nhau.', 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (26, N'Nàng Aura', N'nang-aura.jpg', 168000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TT', N'“Muôn kiếp nhân sinh” là tác phẩm do Giáo sư John Vũ - Nguyên Phong viết từ năm 2017 và hoàn tất đầu năm 2020 ghi lại những câu chuyện, trải nghiệm tiền kiếp kỳ lạ từ nhiều kiếp sống của người bạn tâm giao lâu năm, ông Thomas – một nhà kinh doanh tài chính nổi tiếng ở New York. Những câu chuyện chưa từng tiết lộ này sẽ giúp mọi người trên thế giới chiêm nghiệm, khám phá các quy luật về luật Nhân quả và Luân hồi của vũ trụ giữa lúc trái đất đang gặp nhiều tai ương, biến động, khủng hoảng từng ngày.

“Muôn kiếp nhân sinh” là một bức tranh lớn với vô vàn mảnh ghép cuộc đời, là một cuốn phim đồ sộ, sống động về những kiếp sống huyền bí, trải dài từ nền văn minh Atlantis hùng mạnh đến vương quốc Ai Cập cổ đại của các Pharaoh quyền uy, đến Hợp Chủng Quốc Hoa Kỳ ngày nay.

“Muôn kiếp nhân sinh” cung cấp cho bạn đọc kiến thức mới mẻ, vô tận của nhân loại lần đầu được hé mở, cùng những phân tích uyên bác, tiên đoán bất ngờ về hiện tại và tương lai thế giới của những bậc hiền triết thông thái. Đời người tưởng chừng rất dài nhưng lại trôi qua rất nhanh, sinh vượng suy tử, mong manh như sóng nước. Luật nhân quả cực kỳ chính xác, chi tiết, phức tạp được thu thập qua nhiều đời, nhiều kiếp, liên hệ tương hỗ đan xen chặt chữ lẫn nhau, không ai có thể tính được tích đức này có thể trừ được nghiệp kia không, không ai có thể biết được khi nào nhân sẽ trổ quả. Nhưng, một khi đã gây ra nhân thì chắc chắn sẽ gặt quả - luật Nhân quả của vũ trụ trước giờ không bao giờ sai.

Luật Luân hồi và Nhân quả đã tạo nhân duyên để người này gặp người kia. Gặp nhau có khi là duyên, có khi là nợ; gặp nhau có lúc để trả nợ, có lúc để nối lại duyên xưa. Có biết bao việc diễn ra trong đời, tưởng chừng như là ngẫu nhiên nhưng thật ra đã được sắp đặt từ trước. Luân hồi là một ngôi trường rộng lớn, nơi tất cả con người, tất cả sinh vật đều phải học bài học của riêng mình cho đến khi thật hoàn thiện mới thôi. Nếu không chịu học hay chưa học được trọn vẹn thì buộc phải học lại, chính xác theo quy luật của Nhân quả.', 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (27, N'Mạch Buồn', N'mach-buon.jpg', 99000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TT', N'Kiếp nào ta cũng tìm thấy nhau là cuốn sách thứ ba của Brain L. Weiss – một nhà tâm thần học có tiếng. Trước đó ông đã viết hai cuốn sách: cuốn đầu tiên là Ám ảnh từ kiếp trước, cuốn sách mô tả câu chuyện có thật về một bệnh nhân trẻ tuổi cùng với những liệu pháp thôi miên về kiếp trước đã làm thay đổi cả cuộc đời tác giả lẫn cô ấy. Cuốn sách đã bán chạy trên toàn thế giới với hơn 2 triệu bản in và được dịch sang hơn 20 ngôn ngữ. Cuốn sách thứ hai Through Time into Healing (Đi qua thời gian để chữa lành), mô tả những gì tác giả đã học được về tiềm năng chữa bệnh của liệu pháp hồi quy tiền kiếp. Trong cuốn sách đều là những câu chuyện người thật việc thật. Nhưng câu chuyện hấp dẫn nhất lại nằm trong cuốn sách thứ ba.

Kiếp nào ta cũng tìm thấy nhau nói về những linh hồn tri kỷ, những người có mối liên kết vĩnh viễn với nhau bằng tình yêu thương, luôn gặp lại nhau hết lần này đến lần khác, qua hết kiếp này tới kiếp khác. Chúng ta sẽ tìm thấy và nhận ra tri kỷ của mình như thế nào, rồi đưa ra những quyết định làm thay đổi cuộc sống của chính mình ra sao là những khoảnh khắc quan trọng và xúc động nhất trong cuộc đời mỗi người.

Định mệnh sẽ dẫn lối cho những linh hồn tri kỷ hội ngộ. Chúng ta sẽ gặp họ. Nhưng quyết định làm gì sau đó lại là quyền tự do lựa chọn của mỗi người. Một lựa chọn sai lầm hoặc một cơ hội bị bỏ lỡ có thể dẫn đến nỗi cô đơn và thống khổ tột cùng. Và một lựa chọn đúng đắn, một cơ hội được nắm bắt có thể mang lại niềm hạnh phúc sâu sắc.

Những gì tác giả viết trong sách được ghi lại từ hồ sơ bệnh án, băng thu âm và trí nhớ. Chỉ có tên và một vài chi tiết nhỏ được thay đổi để giữ tính bảo mật. Đây là câu chuyện về vận mệnh và hy vọng. Đây là câu chuyện xảy ra âm thầm mỗi ngày.

Ngày này năm đó, đã có người lắng nghe.
Linh hồn tựa như nước
Rơi xuống từ thiên đường
Lên trời như khói sương
Rồi trở về với đất
Chuỗi tuần hoàn bất tận.
GOETHE', 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (28, N'Duyên Phận Bất Ngờ', N'duyen-phan-bat-ngo.jpg', 118000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TT', N'Hành Trình Về Phương Đông, một trong những tác phẩm đương đại hay và độc đáo nhất về văn hóa phương Đông vừa tái ngộ bạn đọc trong một diện mạo hoàn toàn mới, sang trọng và ấn tượng. Đây là ấn bản có lượng phát hành ấn tượng, hơn 40.000 bản tại Việt Nam chỉ trong vài năm trở lại đây.

Hành Trình Về Phương Đông kể về những trải nghiệm của một đoàn khoa học gồm các chuyên gia hàng đầu của Hội Khoa Học Hoàng Gia Anh được cử sang Ấn Độ nghiên cứu về huyền học và những khả năng siêu nhiên của con người. Suốt hai năm trời rong ruổi khắp các đền chùa Ấn Độ, diện kiến nhiều pháp thuật, nhiều cảnh mê tín dị đoan, thậm chí lừa đào… của nhiều pháp sư, đạo sĩ… họ được tiếp xúc với những vị chân tu thông thái sống ẩn dật ở thị trấn hay trên rặng Tuyết Sơn. Nhờ thế, họ được chứng kiến, trải nghiệm, hiểu biết sâu sắc về các khoa học cổ xức và bí truyền của văn hóa Ấn Độ như yoga, thiền định, thuật chiêm tinh, các phép dưỡng sinh và chữa bệnh, những kiến thức về nhân duyên, nghiệp báo, luật nhân quả, cõi sống và cõi chết…

Cuốn sách là một phần trong bộ hồi ký nổi tiếng của giáo sư Blair T. Spalding (1857 - 1953), “Life and Teaching of the Masters of the Far East” (xuất bản năm 1953). Bộ sách có tất cả sáu quyển, ghi nhận đầy đủ về cuộc hành trình gay go nhưng lý thú và tràn đầy sự huyền bí ở Ấn Độ, Tây Tạng, Trung Hoa và Ba Tư. Ba quyển đầu ghi lại những cuộc thám hiểm của phái đoàn gồm các nhà khoa học hàng đầu của Hoàng gia Anh đi từ Anh quốc sang Ấn Độ, các cuộc gặp gỡ giữa phái đoàn và những vị thầy tâm linh sống ở châu Á và dãy Hy Mã Lạp Sơn. Ba quyển sau là những ghi nhận riêng của giáo sư Spalding về các cuộc hành trình, sự trao đổi kiến thức giữa phái đoàn và các vị thầy tâm linh, cùng bản tường trình của phái đoàn đã đưa đến những cuộc tranh luận sôi nổi. Cuối cùng thì ba người trong phái đoàn đã trở lại Ấn Độ sống đời ẩn sĩ.', 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (29, N'Bí Mật Sâu Kín Nhất', N'bi-mat-sau-kin-nhat.jpg', 135000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TT', N'Giận là một cuốn sách hay của Thiền sư Thích Nhất Hạnh, nó mở ra cho ta những khả năng kỳ diệu, nhưng lại rất dễ thực hành để ta tự mình từng bước thoát khỏi cơn giận và sống đẹp với xã hội quanh mình.

Giận được xuất bản tại Hoa Kỳ ngày 10.9.2001, trước biến cố 11.9.2001 có một ngày. Vì thế Giận đã trở thành quyển sách bán chạy nhất Hoa Kỳ - 50.000 bản mỗi tuần - trong vòng 9 tháng.

Tại Hàn Quốc, quyển sách này đã bán được 1 triệu bản trong vòng 11 tháng. Rất nhiều độc giả nhờ đọc sách này mà đã điều phục được tâm mình, sử dụng ái ngữ lắng nghe để hoà giải với người thân, đem lại hạnh phúc trong gia đình và trong cộng đồng của họ.

Khi ta giận, khi một ai đó làm cho ta giận, ta phải trở về với thân tâm và chăm sóc cơn giận của mình. Không nên nói gì hết. Không nên làm gì hết. Khi đang giận mà nói năng hay hành động thì chỉ gây thêm đổ vỡ mà thôư thế là không khôn ngoan. Phải trở về dập tắt lửa trước đã

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (30, N'Bao Điều Không Nói', N'bao-dieu-khong-noi.jpg', 65000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TT', N'Muốn An Được An

Ngày chủ nhật và cũng là ngày cuối cùng của tháng 11 năm 2014 tôi nhận được bản thảo cuốn sách Muốn an được an của thiền sư Thích Nhất Hạnh đã được sư cô Hội Nghiêm dịch ra tiếng Việt từ bản nguyên gốc tiếng anh Being peace. Tôi ngồi vào bàn rồi đọc ngay tức khắc.

Tôi đọc ngay những dòng đầu tiên và phải đọc đi đọc lại vài lần những dòng những chữ của thiền sư Thích Nhất Hạnh "Nếu tự thân ta không có hạnh phúc, bình an thì chúng ta không thể hiến tặng hạnh phúc và bình an cho ai được, kể cả những người ta thương, những người ta cùng chung sống trong một mái ấm gia đình. Có bình an, hạnh phúc thì chúng ta sẽ mỉm cười và xinh tươi như một bông hoa, khi đó, mọi người chung quanh ta, từ gia đình cho đến xã hội, ai cũng được thừa hưởng."

Mỗi ngày chúng ta có rất nhiều cảm thọ. Khi thì hạnh phúc, lúc thì buồn khổ. Các cảm thọ cứ lần lượt đến với ta như một dòng sông. Rõ ràng việc thực tập thiền là rất quan trọng. Hành thiền để ý thức được, ghi nhận từng cảm thọ, thậm chí ôm ấp từng cảm thọ. Tôi luôn nhắc mình thực tập như vậy. Tôi biết điều này bởi thiền sư Thích Nhất Hạnh đã hướng dẫn chúng tôi cách đây tròn 10 năm, từ 2005 khi tôi may mắn được biết đến Thầy. Nhờ Thầy mà tôi dần biết cách tìm bình an trong chính mình.', 9)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (31, N'Áo Khoác Lông Chồn', N'ao-khoac-long-chon.jpg', 75000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TT', N'Mô Tả Sản Phẩm
Từng Bước Nở Hoa Sen

Không nhơ cũng không sạch

Không bớt cũng không thêm

Trí tuệ Ba La Mật

Không có pháp nào trên

Sống là chuyển hóa không ngừng, tất cả mọi vật nương vào nhau để tồn tại. Thân tâm an trú trong chánh niệm thì khi đốt một lò trầm, tâm ta cũng thanh tịnh. Chấp nhận cuộc đời là chấp nhận cả sinh lẫn diệt, cả còn lẫn mất, cả vui lẫn buồn. Vì có sự sống là có chết chóc… có sum họp thì có chia lìa, có được thì sẽ mất đi…

Đức Phật dạy rằng: "Cứu chữa cho tâm quan trọng hơn là cho thân, vì đó là nguyên nhân gây ra bao điều tội lỗi. Người có tâm từ bi rộng lớn và hành vi thiện lành, tâm sẽ ít bị vẩn đục bởi phiền não tham, sân, si chi phối. Nếu chúng ta mỗi ngày tỉnh giác từng ý nghĩ, lời nói và hành động của mình, thì ta sẽ biết cách làm chủ bản thân để ngày càng hoàn thiện chính mình hơn về mọi mặt."

Từng bước nở hoa sen của Thiền sư Thích Nhất Hạnh là một trong những quyển sách "dạy" ta cách sống an nhiên như thế. Bốn mươi bảy bài kệ trong sách cũng là bốn mươi bảy bài học giúp ta tu tập chánh niệm mỗi ngày, hướng đến sự an lạc trong cả tâm, thân và sống hết mình cho từng giây phút hiện tại.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (32, N'Đứa Con Của Thời Tiết', N'dua-con-cua-thoi-tiet.jpg', 119500, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TT', N'Các Thế Giới Song Song

Một chuyến du hành đầy trí tuệ qua các vũ trụ, được dẫn dắt tài tình bởi "thuyền trưởng" Michio Kaku và độc giả có dịp chiêm ngưỡng vẻ đẹp kỳ vĩ của vũ trụ kể từ vụ nổ lớn, vượt qua những hố đen, lỗ sâu, bước vào các thế giới lượng tử từ muôn màu kỳ lạ nằm ngay trước mũi chúng ta, vốn dĩ tồn tại song song trên một màng bên ngoài không - thời gian bốn chiều, ngắm nhìn thực tại vật chất quen thuộc hoà quyện với thế giới của những điều kỳ diệu như năng lượng và vật chất tối, sự nảy chồi của các vũ trụ, những chiều không gian bí ẩn và sự biến ảo của các dây rung siêu nhỏ...

Dẫn chuyện lôi cuốn, kết hợp tường minh, sống động một lượng thông tin đồ sộ để khai mở những giới hạn tột cùng của trí  tưởng tượng, Kaku thực sự xứng đáng là " nhà truyền giáo" vĩ đại đã mang thế giới vật lý lý thuyết tới quảng đại quần chúng.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (33, N'Trái Tim Ngọt Ngào', N'trai-tim-ngot-ngao.jpg', 180650, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TT', N'Khoa Học Khám Phá - Vũ Trụ Toàn Ảnh

Cuốn sách giải thích những điều kỳ lạ, những phép lạ tôn giáo, trải nghiệm cận tử, thoát xác, những khả năng phi thường của con người bằng nguyên lý toàn ảnh dựa trên ý tưởng cho rằng vũ trụ là một ảnh toàn ký khổng lồ.

Song song với sự phát triển của khoa học, những điều huyền bí vẫn tồn tại bất chấp các định lý, định luật và điều kiện của tự nhiên mà khoa học hiện đại tuân theo. Đối mặt với vấn đề này, hầu hết các nhà khoa học lựa chọn “từ bỏ”, phủ nhận những điều huyền bí, một số người cực đoan thậm chí quy kết tất cả những gì siêu nhiên là mê tín. Mặc dù vậy, vẫn có những người tiếp tục nghiên cứu mặc sự dèm pha của đồng nghiệp. Michael Talbot là một trong số đó. Trong cuốn sách Vũ trụ toàn ảnh, ông đã đề xuất ý tưởng cho rằng toàn bộ vũ trụ là một cơ thể khổng lồ, không thể chia tách, là một ảnh toàn ký mà dù có chia nhỏ đến đâu vẫn cho ra hình ảnh nguyên vẹn. Theo quan niệm này, ông đã giải thích những điều kỳ lạ, những phép lạ tôn giáo, trải nghiệm cận tử, thoát xác, những khả năng phi thường của con người – tiên tri, thấu thị, cơ thể không bị tổn thương, đi trên dung nham nóng chảy, chữa bệnh bằng sức mạnh tinh thần… – bằng nguyên lý toàn ảnh, dựa trên những chứng cứ mà ông thu thập được và chính từ trải nghiệm của bản thân. Qua đó, ông cũng phần nào giải thích vì sao những hiện tượng siêu nhiên hay khả năng đặc biệt phần lớn được những người theo những nền văn hóa cổ trải nghiệm mà không phải những người thông thái theo trường phái hiện đại. Ý thức và niềm tin chính là chìa khóa cho vấn đề này.', 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (34, N'Mỗi Ngày Nhìn Lại', N'moi-ngay-nhin-lai.jpg', 148000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TT', N'Sách được biên soạn chủ yếu cho sinh viên các trường Đại học, Cao đẳng chuyên ngành Tin học đặc biệt là Khoa học máy tính làm tài liệu tham khảo. Sách vẫn sử dụng tốt cho những Kỹ sư Tự động hóa, Điện tử viễn thông, Cơ điện tử, Cơ khí…', 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (35, N'Hạnh Nhân', N'hanh-nhan.jpg', 369000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TT', N'Cuốn sách được xuất bản với mong muốn mang đến cho các anh chị sắp xây nhà thật nhiều kiến thức hữu ích cùng với các lưu ý, lời khuyên, tư vấn, giúp cho mọi người có được cái nhìn tổng quát và cụ thể về cả quá trình hình thành một căn nhà, từ ý tưởng ban đầu cho tới khi hoàn thiện đưa vào sử dụng. Giúp gia chủ có được sự chuẩn bị tốt về mọi thứ liên quan để tránh bị động, căng thẳng trong suốt quá trình từ chuẩn bị cho đến khi thiết kế - xây dựng. Cuốn sách cũng là tài liệu hữu ích cho các bạn sinh viên nghành kiến trúc xây dựng, những bạn mới vào nghề muốn cập nhật thêm kiến thức thực tế, những anh chị sale cùng lĩnh vực muốn tìm hiểu thêm về quá trình hình thành căn nhà từ đầu đến cuối để có những tư vấn bán hàng tốt hơn, sát thực tế hơn.

Cuốn sách được sắp xếp nội dung theo trình tự các bước như là hành trình tạo nên ngôi nhà của anh chị: Từ bước xác định nhu cầu, quy mô xây dựng, hình thành ý tưởng, chuẩn bị tài chính, tìm hiểu pháp lý, làm việc với các chuyên gia, đến công việc thiết kế và thi công phần thô, hoàn thiện ngôi nhà đưa vào sử dụng. Ở mỗi mục đều có những phân tích, đưa ra những lời khuyên, tư vấn về các ưu điểm, khuyết điểm cũng như cung cấp các kiến thức, thông tin cơ bản được chắt lọc để gia chủ hiểu về các công việc liên quan. Cuốn sách cũng hướng dẫn anh chị làm việc với các bên như Tư vấn thiết kế, tư vấn giám sát, nhà thầu thi công, chuyên gia phong thủ sao cho phù hợp, giúp toàn bộ quá trình được diễn ra suôn sẻ, hạn chế tối đa những sai lầm, rắc rối không đáng có.', 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (37, N'Bích Ngọc', N'bich-ngoc.jpg', 85100, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'TT', N'Hầu hết mọi người đều thích toán, tiếc là họ không biết điều này!

Bởi ai mà chẳng thấy hấp dẫn với những mẩu chuyện kỳ thú về toán: như “giáo phái” toán học kỳ lạ của Pythagoras thời cổ đại hay những cuộc thăm dò hệ mặt trời bằng công cụ toán học đầy kịch tính thời cận đại, hoặc gần đây hơn là sự kiện máy tính AlphaGo giành chiến thắng trước kỳ thủ cờ vây số một thế giới Lee Sedol bằng những nước đi “thần thánh” sử dụng lý thuyết xác suất.

Toán học khai sinh vì lý do hữu dụng, hẳn nhiên. Vào thời tiền sử, người ta nghĩ ra những con số để đếm đàn gia súc, dùng hình học để đo ruộng đất, làm đường sá. Loài home sapiens chúng ta không ngừng tò mò muốn khám phá thế giới tự nhiên xung quanh, nên suốt mấy ngàn năm qua toán học đã tiến lên phía trước với những bước khổng lồ và ngày càng trừu tượng.

Mickaël Launaykhông chỉ cho người đọc thấy cái đẹp, chất thơ của toán học mà còn xác quyết một điều khác, rằng mọi người đều có thể yêu thích toán học và đều có thể cảm nhận được vẻ đẹp tự nhiên của nó. Cuốn sách này là một minh chứng cho điều đó.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 9)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (38, N'Cẩm Khê Di Hận', N'cam-khe-di-han.jpg', 90000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'LS', N'Tác giả Trần Đại Sỹ đã giới thiệu đến với bạn đọc một truyện kiếm hiệp mới đầy sức hấp dẫn và lôi cuốn, vẫn lấy chủ đề cũ, chủ đề về những câu chuyện võ hiệp, những chuyến phiêu lưu trên chốn giang hồ nhưng đem lại cảm giác mới mẻ cho bạn đọc, đọc truyện bạn sẽ được cùng hòa mình hay theo dõi những điều trước giờ tưởng chừng chỉ xuất hiện trong các tiểu thuyết cổ xưa, nay lại sống động dưới ngòi bút của tác giả. hãy cùng đón đọc truyện Cẩm Khê Di Hận

Truyện tiếp nối câu chuyện Anh Hùng Lĩnh Nam, những tình tiết hấp dẫn những câu chuyện còn bỏ ngỏ về triều Hán

Sún Lé được Thiều-Hoa dặn, phải giải mối lo nghĩ cho Mã Huy nếu không y bỏ trốn. Y bỏ trốn rồi, thì người khác thay thế, thì khó mà kiềm chế được.', 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (39, N'Vĩnh An', N'vinh-an.jpg', 186000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'LS', N'Ta là Võ gia quý nữ, hắn là hoàng tôn Lý gia

Quen biết nhau ở Đại Minh cung, kết duyên ở Thái Sơ cung, thân phận tôn quý, lại khó cầu một đạo chỉ tứ hôn, cứ như vậy để vuột mất

Lai buồn cười, họ Võ độc chiếm thiên hạ, trong cung kiêng kị khó lường, ai có thể trách vì sao tình bạc ý đoản?

Ta nguyện dùng chút sức lực của mình, cũng chỉ mong bảo hộ ngươi cả đời bình an, không ngờ rằng, bức ngươi buông tay thiên hạ lại uổng phí cuộc đời này.

Không sợ niệm khởi, chỉ sợ giác chậm. Khi đã cầm tay nhau, cả đời này không phụ.', 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (40, N'Đường Phong Chi Thừa Càn', N'duong-phong-chi-thua-can.jpg', 165000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'LS', N'Bộ sách “Chân trời sáng tạo” mang đến góc nhìn rộng hơn với kiến thức khoa học và công nghệ, thế giới nghệ thuật bao la và những giá trị tinh thần tốt đẹp của nhân loại. Bộ sách không chỉ là nơi truyền tải tri thức mà còn gợi mở, truyền cảm hứng để các em học sinh tìm tòi, khám phá, sáng tạo và phát triển mọi tiềm năng của bản thân.

Khách hàng có thể chọn phân loại tựa sách muốn mua hoặc cả bộ.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 9)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (41, N'Đại Đường Hảo Đại Ca Convert', N'dai-duong-hao-dai-ca.jpg', 180000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'LS', N'Bạn đang theo dõi truyện đọc Đại Đường Hảo Đại Ca của tác giả Khanh Hoặc rất hấp dẫn và lôi cuốn. Là một truyện được giới thiệu với bạn đọc trên trang đọc truyện chữ online. Đọc truyện bạn đọc sẽ được dẫn dắt vào một thế giới mới lạ, những tình tiết đặc sắc, đọc truyện Dã Sử này để trải nghiệm và cảm nhận bạn nhé.

【 ( Sáng Thế lịch sử 2018 lưu phái chinh văn chi Thịnh Đường thơ văn hoa mỹ 】dự thi tác phẩm】



"Mẫu mất tử hàng, thủ túc tương tàn, mười sáu năm Thái Tử chết" như vậy lịch sử, ta Lý Thừa Càn không phục.



"Đều nói hoàng gia vô thân tình, ta mạn phép không tin cái này tà, ta liền muốn hoàng gia, cao đường ngồi đầy, huynh kính đệ cung, con cháu lượn quanh đầu gối với trước "', 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (42, N'Nuôi Dưỡng Bạo Vương', N'nuoi-duong-bao-vuong.jpg', 76000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'LS', N'Kinh Tế Vĩ Mô

Ngày nay Kinh tế học nói chung và Kinh tế vĩ mô nói riêng là môn học cơ bản được giảng dạy ở tất cả các trường đại học thuộc khối ngành kinh tế.

Để góp phần làm phong phú thêm nguồn tài liệu học tập cho sinh viên, với kinh nghiệm giảng dạy trong nhiều năm, nhóm giảng viên chúng tôi biên soạn cuốn “Kinh tế vĩ mô” theo chương trình cập nhật của Bộ giáo dục và Đào tạo, với hy vọng cuốn sách này sẽ giúp cho sinh viên dễ dàng nắm vững môn học kinh tế vĩ mô.

Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (43, N'Đế Hậu Thiên Tài, Hoàng Đế Đứng Sang Bên', N'de-hau-thien-tai-hoang-de-dung-sang-ben.jpg', 29000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'LS', N'Bài Tập Khoa Học Tự Nhiên 8 - Cánh Diều
- Cánh diều là một trong 3 bộ SGK đã được Bộ GD-ĐT thẩm định phê duyệt cho chương trình giáo dục phổ thông mới từ năm học 2020-2021 và được nhiều trường TH, THCS, THPT trên cả nước lựa chọn đưa vào giảng dạy từ năm học 2022-2023. Đây được xem là bộ SGK duy nhất được biên soạn bằng hình thức xã hội hóa tại Việt Nam kể từ sau năm 1975 cho đến nay.
- Với mong muốn đồng hành cùng các bạn học sinh trên con đường phát triển tri thức, cam kết phân phối sản phẩm mới 100%, chính hãng từ nhà xuất bản đồng thời luôn có ưu đãi, quà tặng hấp dẫn khi mua hàng tại gian hàng chúng tôi.
- Thông tin sản phẩm:
- Tác Giả: Nhiều tác giả
- Số trang: 132
- Năm xuất bản: 2023
- Hình thức: bìa mềm
- NXB: NXB Đại học Sư Phạm', 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (44, N'Sủng Phi Của Vương: Ái Phi Thiếu Quản Giáo', N'sung-phi-cua-vuong-ai-phi-thieu-quan-giao.jpg', 248000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'LS', N'Thay Đổi Cuộc Sống Với Nhân Số Học

Cuốn sách Thay đổi cuộc sống với Nhân số học là tác phẩm được chị Lê Đỗ Quỳnh Hương phát triển từ tác phẩm gốc “The Complete Book of Numerology” của tiến sỹ David A. Phillips, khiến bộ môn Nhân số học khởi nguồn từ nhà toán học Pythagoras trở nên gần gũi, dễ hiểu hơn với độc giả Việt Nam.

Đầu năm 2020, chuỗi chương trình “Thay đổi cuộc sống với Nhân số học” của biên tập viên, người dẫn chương trình quen thuộc tại Việt Nam Lê Đỗ Quỳnh Hương ra đời trên Youtube, với mục đích chia sẻ kiến thức, giúp mọi người tìm hiểu và phát triển, hoàn thiện bản thân, các mối quan hệ xã hội thông qua bộ môn Nhân số học. Chương trình đã nhận được sự yêu mến và phản hồi tích cực của rất nhiều khán giả và độc giả sau mỗi tập phát sóng.

Nhân số học là một môn nghiên cứu sự tương quan giữa những con số trong ngày sinh, cái tên với cuộc sống, vận mệnh, đường đời và tính cách của mỗi người. Bộ môn này đã được nhà toán học Pythagoras khởi xướng cách đây 2.600 năm và sau này được nhiều thế hệ học trò liên tục kế thừa, phát triển.', 20)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (45, N'Cuộc Sống Mỹ Vị Của Tiểu Nương Tử', N'cuoc-song-my-vi-cua-tieu-nuong-tu.jpg', 90000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'LS', N'IKIGAI là tập hợp nhiều câu chuyện đời, chuyện nghề giản dị, lý giải tường minh năm điều cốt lõi của ikigai –triết lý sống mang lại hạnh phúc và trường thọ của người Nhật:

Bắt đầu từ những việc nhỏ nhặt
Giải phóng cái tôi cá nhân
Sự hài hòa và tính bền vững
Niềm vui từ những điều nhỏ bé
Sống trọn khoảnh khắc hiện tại.
Nhưng làm thế nào để bạn tìm được ikigai của mình? Có nhất thiết phải có sự nghiệp thành công như Jiro Ono – ông chủ nhà hàng Sukiyabashi Jiro, nơi vinh dự được tiếp đón Obama, hay phải trở thành một yokozuna trong môn vật sumo mới đạt tới ikigai? Thông qua những nghiên cứu khoa học và từ chính trải nghiệm của bản thân, Ken Mogi mang tới cho độc giả một nhận thức sâu sắc về ikigai, đồng thời hiểu thêm về lịch sử và văn hóa Nhật Bản. Những giá trị của ikigai mà bạn thu nhận từ sách có thểgiúp bạn tìm ra ikigai của mình, và quan trọng hơn hết, mỗi sớm mai thức dậy biết mình đang sống vì điều gì', 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (46, N'Gả Cho Lão Nam Nhân', N'ga-cho-lao-nam-nhan.jpg', 125500, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'LS', N'Truyện Gả Cho Lão Nam Nhân của tác giả Lạc Vũ Thu Hàn thuộc thể loại truyện xuyên không  pha một ít yếu tố huyền huyễn làm cho câu chuyện trở nên mượt mà, huyền ảo. 

Nàng là nô tỳ bé nhỏ, vì bị o ép nên muốn làm lại từ đầu để không còn chịu cảnh đày đọa này nữa. 

Thế nhưng chưa được như ý muốn thì nàng phát hiện ra mình không thể làm tròn nghĩa vụ của một người vợ, một người mẹ…', 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (47, N'Buông Gian Thần Của Trẫm Ra', N'buong-gian-than-cua-tram-ra.jpg', 189000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'LS', N'Tuân Tử nói: “Nói năng hợp lý, đó gọi là hiểu biết; im lặng đúng lúc, đó cũng là hiểu biết”. Ngôn ngữ là thứ có thể thể hiện rõ nhất mức độ tu dưỡng của một người, nói năng hợp lý là một loại trí tuệ, mà im lặng đúng lúc cũng là một loại trí tuệ. Nếu một người không biết giữ miệng, nói mà không suy nghĩ, nghĩ gì nói nấy, tất nhiên rất dễ khiến người khác chán ghét.

Nội dung quyển sách này xoay quanh hai vấn đề đó là “biết cách nói chuyện” và “biết giữ miệng”, thông qua 12 chương sách nói rõ cách nói chuyện với những người khác nhau, cách nói chuyện trong những trường hợp khác nhau, làm thế nào để nắm vững những kỹ năng và chừng mực để nói chuyện cho khôn khéo, những người không giỏi ăn nói làm cách nào mới có thể nói được những lời thích hợp với đúng người và đúng thời điểm, để có thể ứng phó với những trường hợp khác nhau trong giao tiếp.

Người biết nói chuyện, ẩn sau con người họ là lòng tốt đã khắc sâu vào xương tủy, là sự tôn trọng đến từ việc đặt mình vào vị trí của người khác, là trí tuệ sâu sắc, độc đáo và lòng kiên nhẫn không ngại phiền hà. Họ chưa hẳn là những người giỏi ăn nói, nhưng mỗi khi nói đều làm người khác như được tắm trong gió xuân, vừa mở miệng là đã toát lên khí chất hơn người.', 22)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (48, N'Đại Đường Đạo Soái', N'dai-duong-dao-soai.jpg', 188000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'LS', N'Ngày xửa ngày xưa, những người sao Hỏa và sao Kim đã gặp gỡ, yêu nhau và sống hạnh phúc bởi họ tôn trọng và chấp nhận mọi điều khác biệt. Rồi họ đến Trái Đất và chứng lãng quên đã xảy ra: Họ quên rằng họ đến từ những hành tinh khác

 

Hiểu biết về giới tính giúp chúng ta thêm khoan dung và biết tha thứ khi ai đó không đáp lại theo cách mà ta mong đợi

Tình chỉ đẹp khi còn dang dở
Cưới nhau về nham nhở lắm em ơ 

Bởi kết hôn không phải là kết thúc một cuộc tình, mà nó mới là mở đầu cho rất nhiều những giai đoạn khó khăn mà cặp vợ chồng nào cũng phải trải qua. Bạn phải biết cách thích ứng và đối phó với nó để không rơi vào tình cảnh hôn nhân đổ vỡ.

', 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (49, N'Ngồi Ở Đầu Tường Chờ Hồng Hạnh', N'ngoi-o-dau-tuong-cho-hong-hanh.jpg', 110000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'LS', N'Nhiều người trong chúng ta tin rằng cuộc đời của ta bắt đầu từ lúc chào đời và kết thúc khi ta chết. Chúng ta tin rằng chúng ta tới từ cái Không, nên khi chết chúng ta cũng không còn lại gì hết. Và chúng ta lo lắng vì sẽ trở thành hư vô.

Bụt có cái hiểu rất khác về cuộc đời. Ngài hiểu rằng sống và chết chỉ là những ý niệm không có thực. Coi đó là sự thực, chính là nguyên do gây cho chúng ta khổ não. Bụt dạy không có sinh, không có diệt, không tới cũng không đi, không giống nhau cũng không khác nhau, không có cái ngã thường hằng cũng không có hư vô. Chúng ta thì coi là Có hết mọi thứ. Khi chúng ta hiểu rằng mình không bị hủy diệt thì chúng ta không còn lo sợ. Đó là sự giải thoát. Chúng ta có thể an hưởng và thưởng thức đời sống một cách mới mẻ.

Không diệt Không sinh Đừng sợ hãi là tựa sách được Thiền sư Thích Nhất Hạnh viết nên dựa trên kinh nghiệm của chính mình. Ở đó, Thầy Nhất Hạnh đã đưa ra một thay thế đáng ngạc nhiên cho hai triết lý trái ngược nhau về vĩnh cửu và hư không: “Tự muôn đời tôi vẫn tự do. Tử sinh chỉ là cửa ngõ ra vào, tử sinh là trò chơi cút bắt. Tôi chưa bao giờ từng sinh cũng chưa bao giờ từng diệt” và “Nỗi khổ lớn nhất của chúng ta là ý niệm về đến-đi, lui-tới.”

Được lặp đi lặp lại nhiều lần, Thầy khuyên chúng ta thực tập nhìn sâu để chúng ta hiểu được và tự mình nếm được sự tự do của con đường chính giữa, không bị kẹt vào cả hai ý niệm của vĩnh cửu và hư không. Là một thi sĩ nên khi giải thích về các sự trái ngược trong đời sống, Thầy đã nhẹ nhàng vén bức màn vô minh ảo tưởng dùm chúng ta, cho phép chúng ta (có lẽ lần đầu tiên trong đời) được biết rằng sự kinh hoàng về cái chết chỉ có nguyên nhân là các ý niệm và hiểu biết sai lầm của chính mình mà thôi.', 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (50, N'Tiểu Ôn Nhu', N'tieu-on-nhu.jpg', 139000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'HD', N'Một câu chuyện tình yêu mà nam chính có hôn ước với chị nữ chính nhưng trái tim lại ở chỗ nữ chính. Trong khi nữ chính không có gì nổi bật lại còn tư duy chậm chạp mà nam chính như ánh mặt trời tỏa sáng và thần tượng trong lòng các nữ sinh.

Tất cả các sinh viên trong trường đều nói rằng, Phó Thời Hành là hotboy của trường đại học S  có tính tình cao ngạo lạnh lùng, ổn trọng tự tin, nói chuyện với nữ sinh chưa bao giờ vượt quá ba câu.

Chỉ có Hoắc Yến biết, năm đó Phó Thời Hàn ôm cô thế nào, dưới cây ngô đồng trước cửa nhà cô, không kiềm ngấu nghiến môi cô.

Hoắc Yến thở không ra hơi, nhỏ giọng cầu xin vài tiếng, trái tim Phó Thời Hàn muốn nổ tung.

Nữ chính thiên tiên bất túc (*) ngây thơ đáng yêu vs Đại ma vương cao ngạo tự phụ phúc hắc có lòng chiếm hữu mạnh.', 22)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (51, N'A Kiều Hôm Nay Đầu Thai Sao', N'a-kieu-hom-nay-dau-thai-sao.jpg', 62000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'HD', N'Truyện A Kiều Hôm Nay Đầu Thai Không? của tác giả Hoài Tố kể về tại Phong Đô, A Kiều có thể nói như là một con quỷ có thâm niên.

Vì sao?

Vì nàng ở đây đã rất lâu rất lâu rồi, lâu đến mức vô số quỷ đã tới đây, sau đó đi đầu thai chuyển kiếp, còn nàng vẫn cứ trơ trọi tại đây.

Mạnh Bà nói nàng không đi đầu thai được, bởi vì vẫn còn tâm nguyện chưa hoàn thành, nên không cam lòng rời đi

A Kiều sực nhớ, đúng rồi, thằng nhãi Lưu Triệt kia còn nợ nàng một cái kim ốc (nhà bằng vàng)

Trả nhà vàng cho ta, ta muốn đầu thai!!!!!!!

A Kiều vốn dĩ chỉ định đòi kiếp sau của Lưu Triệt một cái nhà vàng

Không hiểu tại sao cuối cùng lại không dứt ra được.

Con đường bị cưỡng chế đầu thai của cư dân địa phủ Trần A Kiều.', 11)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (52, N'Anh Không Yêu Tôi', N'anh-khong-yeu-toi.jpg', 99000, CAST(N'2023-08-11T00:00:00.000' AS DateTime), 1, N'HD', N'Như bạn có thể thấy, chìa khóa để trở thành một người có tư duy phản biện tốt chính là sự tự nhận thức. Bạn cần phải đánh giá trung thực những điều trước đây bạn nghĩ là đúng, cũng như quá trình suy nghĩ đã dẫn bạn tới những kết luận đó. Nếu bạn không có những lý lẽ hợp lý, hoặc nếu suy nghĩ của bạn bị ảnh hưởng bởi những kinh nghiệm và cảm xúc, thì lúc đó hãy cân nhắc sử dụng tư duy phản biện! Bạn cần phải nhận ra được rằng con người, kể từ khi sinh ra, rất giỏi việc đưa ra những lý do lý giải cho những suy nghĩ khiếm khuyết của mình. Nếu bạn đang có những kết luận sai lệch này thì có một sự thật là những đức tin của bạn thường mâu thuẫn với nhau và đó thường là kết quả của thiên kiến xác nhận, nhưng nếu bạn biết điều này, thì bạn đã tiến gần hơn tới sự thật rồi!

Những người tư duy phản biện cũng biết rằng họ cần thu thập những ý tưởng và đức tin của mọi người. Tư duy phản biện không thể tự nhiên mà có.', 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (53, N'Ảnh Hậu', N'anh-hau.jpg', 150000, CAST(N'2023-08-25T00:00:00.000' AS DateTime), 1, N'HD', N'Lâm Ngưỡng là nam thần thuộc phái thực lực, địa vị vô cùng vững chắc trong giới giải trí. Cũng chính bởi hai chữ “Ảnh đế” phía trước tên anh, Chương Nhiễm Nhiễm mới chọn anh để đưa bản thân lên “top search”. Cô vốn cho rằng bản thân cách anh rất xa, đợi qua một vài hôm, cô sẽ đăng đàn đính chính, rửa sạch nỗi oan cho anh. Nào ngờ chưa kịp thực hiện, đã bị tóm sống, còn bị “ép” biến “giả thành thật”, đóng vai bạn gái của anh. Bộ phim này của bọn họ, không biết có phải do diễn quá nhập tâm hay không mà vai nữ chính này quá xuất sắc, khiến cô không thể thoát ra.





Chương Nhiễm Nhiễm là ví dụ điển hình cho bốn chữ “bình hoa di động”, ngoài khuôn mặt đẹp thì cái gì cũng không có. Bởi vì diễn xuất quá kém, lại bị cấp trên “chèn ép”, Nhiễm Nhiễm không thể không nghĩ cách cứu lấy mình. Mà người duy nhất đủ nổi tiếng để cô bám lấy lúc này không ai khác chính là Lâm Ngưỡng. Trở thành “bạn gái tin đồn” của anh là việc vừa theo kế hoạch, vừa ngoài ý muốn. Theo kế hoạch là “ôm chân” anh đủ rồi sẽ thú tội, ngoài ý muốn là thật sự bị anh ép nhận vai diễn “bạn gái” này.', 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (54, N'Vợ Tổng Tài Bá Đạo', N'vo-tong-tai-ba-dao.jpg', 150000, CAST(N'2023-08-25T00:00:00.000' AS DateTime), 1, N'HD', N'Như bạn có thể thấy, chìa khóa để trở thành một người có tư duy phản biện tốt chính là sự tự nhận thức. Bạn cần phải đánh giá trung thực những điều trước đây bạn nghĩ là đúng, cũng như quá trình suy nghĩ đã dẫn bạn tới những kết luận đó. Nếu bạn không có những lý lẽ hợp lý, hoặc nếu suy nghĩ của bạn bị ảnh hưởng bởi những kinh nghiệm và cảm xúc, thì lúc đó hãy cân nhắc sử dụng tư duy phản biện! Bạn cần phải nhận ra được rằng con người, kể từ khi sinh ra, rất giỏi việc đưa ra những lý do lý giải cho những suy nghĩ khiếm khuyết của mình. Nếu bạn đang có những kết luận sai lệch này thì có một sự thật là những đức tin của bạn thường mâu thuẫn với nhau và đó thường là kết quả của thiên kiến xác nhận, nhưng nếu bạn biết điều này, thì bạn đã tiến gần hơn tới sự thật rồi!

Những người tư duy phản biện cũng biết rằng họ cần thu thập những ý tưởng và đức tin của mọi người. Tư duy phản biện không thể tự nhiên mà có.', 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (60, N'Sống Lại Để Chuộc Lỗi', N'song-lai-de-chuoc-loi.jpg', 160000, CAST(N'2023-08-31T00:00:00.000' AS DateTime), 1, N'HD', N'Dung Tuân bị bạo lực học đường, khi Ninh Phong biết được tin cậu ấy tự sát chính là mười năm sau đó.

Di vật duy nhất của cậu là một quyển tiểu thuyết tự viết, nhân vật trong đó lấy hình mẫu từ chính Ninh Phong.

Lúc này hắn mới biết được, Dung Tuân vẫn luôn thích hắn.

Trữ Phong mang theo nỗi ân hận sâu đậm trọng sinh trở về thời cấp 3.

Lần này, hắn sẽ bảo vệ Dung Tuân, thành toàn cho Dung Tuân, khiến cho cuộc đời Dung Tuân thay đổi. 

Mới đầu hắn đối với Dung Tuân chỉ là xuất phát từ việc chuộc lỗi, nhưng không biết từ khi nào, chuộc lỗi biến thành tình yêu chân chính....', 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (61, N'Lòng Có Lăng Hi', N'long-co-lang-hi.jpg', 55000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'HD', N'Lăng Hi lúc được một người tìm kiếm ngôi sao nhìn trúng, khi ấy đang học 12, nhìn thanh thuần, sáng sủa, cười lên cũng cực kì dễ nhìn, có điều đậu bỉ và hơi ngốc ngốc, mạch não hơi kì lạ chút.

Không ngờ rằng, cha mẹ Lăng Hi cho rằng con trai mình không nổi tiếng được, thế mà giờ cũng đã giật được giải ba trong cuộc thi âm nhạc toàn quốc, trở thành một tiểu ca vương.

Từ lúc đó, có sẵn bàn đạp, còn chăm chỉ, có thiên phú về âm nhạc, rất nhanh  bài hát của Lăng Hi xuất hiện nhiều hơn, khắp cửa hàng hai tệ rồi tiệm quần áo, làm đẹp này nọ. 

Câu chuyện tình yêu của một tiểu ca vương cửa hàng 2 tệ hết thời phái dobe và một nam diễn viên đẹp trai ôn nhu nổi tiếng phái thần tượng.

(*) Đậu bỉ / dobe: ngu ngốc, đần độn, hay làm mấy điều ngớ ngẩn, thích troll…
', 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (62, N'Cô Vợ Nhỏ Ngốc Nghếch', N'co-vo-nho-ngoc-nghech.jpg', 90000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'HD', NULL, NULL)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (63, N'Cho Đến Tận Cùng', N'cho-den-tan-cung.jpg', 99000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'HD', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (64, N'Acrux Trên Bầu Trời Đêm', N'acrux-tren-bau-troi-dem.jpg', 99000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'HD', NULL, 2)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (65, N'Nhiều Năm Trôi Đi', N'nhieu-nam-troi-di.jpg', 99000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'HD', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (66, N'Ảnh Đế Yêu Thầm', N'anh-de-yeu-tham.jpg', 99000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'HD', NULL, 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (67, N'Gắn Kết Bên Em', N'gan-ket-ben-em.jpg', 89000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'HD', N'Thêm một câu chuyện ngôn tình tinh anh trong giới, rất ngọt ngào và lãng mạn, bảo đảm sẽ làm hài lòng các bạn nữ. Một nam thần với lượng follow trên weibo rất cao, nhưng chỉ follow đúng một người làm cho các fan của anh đứng ngồi không yên và muốn tìm hiểu lai lịch của cô gái đó. Và bất ngờ hơn, nam thần ấy lại nguyện Gắn Kết Bên Em bằng một tờ giấy kết hôn.', 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (68, N'Khát Hạ', N'khat-ha.jpg', 90000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'HD', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (69, N'Yêu Chuộng', N'yeu-chuong.jpg', 79000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'HD', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (70, N'Thần Khiết', N'than-khiet-nhu-thi-phi-nghenh.jpg', 49000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'HD', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (71, N'Khi Anh Gặp Em', N'khi-anh-gap-em-vo-xu-kha-dao.jpg', 49000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'HD', N'Cuộc sông bạn có màu gì..màu hồng hay màu đen, đó còn tùy thuộc vào cảm nhận của bạn. Mỗi người có một cảm nhận khác nhau, nhưng nó sẽ trở nên tươi đẹp khi Anh gặp được em! Không có em cuộc sông này chẳng còn có ý nghĩa gì hết. 

Truyện Khi Anh Gặp Em của tác giả Vô Xứ Khả Đào kể về câu chuyện tình yêu của Tiêu Trí Viễn và Tang Tử Quan. Bốn năm qua chỉ vì một sự hiểu lầm không đáng mà hai người phải bước vào cuộc hôn nhân danh nghĩa. Anh yêu cô nhưng không thể làm gì, chỉ biết nhìn cô từ xa mà thôi.

Còn cô vì hiểu lầm anh nên đã rất hận anh. Sau một thời gian hiểu lầm được hóa giải, nhưng mọi chuyện sẽ kết thúc như thế nào mời các bạn cùng đón đọc!', 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (72, N'Hương Sắc Khuynh Thành', N'huong-sac-khuynh-thanh.jpg', 69000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', N'Ăn uống không chỉ để tồn tại mà còn để thưởng thức hương vị tốt của thực phẩm. Một bữa ăn hoàn hảo cần phải cân nhắc đến màu sắc, hương vị và dinh dưỡng.

Mặc dù ăn uống quan trọng, cuộc sống không chỉ xoay quanh nó. Sự hòa thuận và niềm vui cũng rất cần thiết.

Như người trí thức đã nói: "Thực phẩm, màu sắc và tính chất cần phải hài hòa."

Điều này khuyến khích chúng ta không chỉ chú trọng đến việc ăn ngon mà còn tìm kiếm sự tĩnh lặng và hài hòa trong sinh hoạt, giúp chúng ta tận hưởng mỗi khoảnh khắc.

Tóm lại, "Hương sắc khuynh thành" nói về việc tận hưởng sinh hoạt thông qua việc ăn uống và giải trí.', 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (73, N'Đối Dịch', N'doi-dich.jpg', 55000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', N'Đi học bị trường học lừa, chẳng học được tí kiến thức thực chất nào, ra đời vất vả, bi thương. Đi làm bị công ty nát lừa, nỗ lực và tuổi xuân phí hoài, quá bi thương. Yêu đương bị loại gái bất lương lừa, thất vọng về ái tính, cực bi thương. Mua xe mua nhà bị gian thương lừa, cuộc đời vô vọng, bi thương thăng cấp thành bi kịch rồi.

Cuộc đời nhiều cạm bẫy thế đấy, nhiều kẻ lừa đảo như vậy đấy, nếu gặp phải, bạn tin rằng mình né được bao nhiêu cái? Cho nên hãy đọc Đối Dịch để học chút bản lĩnh chống lừa đảo, không cầu lừa người, ít ra bảo vệ được bản thân.', 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (74, N'Chiến Thần Ngày Trở Lại', N'chien-than-ngay-tro-lai.jpg', 49000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', NULL, 2)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (75, N'Chế Tạo Hào Môn', N'che-tao-hao-mon.jpg', 49000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', NULL, 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (76, N'Người Cầm Quyền', N'nguoi-cam-quyen.jpg', 49000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (78, N'Con Dâu Nhà Giàu', N'con-dau-nha-giau.jpg', 49900, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', NULL, 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (79, N'Nắm Lấy Tay Em', N'nam-lay-tay-em.jpg', 49000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', NULL, 2)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (80, N'Thật Lòng Yêu Em', N'that-long-yeu-em.jpg', 49000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', NULL, 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (81, N'Ánh Dương Ấm Áp', N'anh-duong-am-ap.jpg', 39000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', NULL, 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (82, N'Còn Lâu Mới Yêu', N'con-lau-moi-yeu.jpg', 39000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (83, N'Chú Không Thể Nhẫn', N'chu-khong-the-nhan.jpg', 59000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', NULL, 2)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (84, N'Món Nợ Ngọt Ngào', N'mon-no-ngot-ngao.jpg', 39000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', N'– Xin anh, em xin anh đấy. Anh đừng đi, em không mong anh ở lại với em, nhưng em cầu xin anh đừng bỏ rơi đứa con chưa hình thành này. Nó là con của anh, nó mang giọt máu của anh mà. Em không muốn con em sinh ra không có bố…híc

Xin đính chính…

Đây là một câu nói đùa, câu đùa nhảm nhí của một con bé tính tình cũng nhảm nhí không kém.

Và quan trọng, chính con bé cũng không thể ngờ được cuộc đời mình sẽ thay đổi từ câu nói đùa đó.

Một câu chuyện tình yêu mà chẳng hề có sự bảo vệ che chở của người con trai dành cho con gái, vì nhân vật nữ chính cũng đủ mạnh mẽ để chẳng cần ai bảo vệ…không có những cảnh tượng khóc lóc sướt mướt hay cuộc tình tay ba đầy ngang trái, nó chỉ đơn giản là cuộc sống vợ chồng suất ngày chí chóe nhau với vô số tình tiết nực cười, nhưng…câu chuyện cũng không kém phần lãng mạn đâu nhé.', 16)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (85, N'Muôn Trùng Nghìn Dặm', N'muon-trung-nghin-dam.jpg', 29900, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', NULL, 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (86, N'Cực Phẩm Thiên Kiêu', N'cuc-pham-thien-kieu.jpg', 59900, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (87, N'Mướn Chồng', N'muon-chong.jpg', 56000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', N'Diễm vốn là một chuyên viên hóa trang nên việc có thể biến thành bất kì ai cũng không có gì là quá khó. Hôm nay là ngày đầu tiên đi dạy của Diễm, dánh thêm tí phấn trên má màu kem, cố tình làm cho mình già thêm vài tuổi, trông Diễm bây giờ giống như một cô gái hai mươi lăm khác hẳn cô gái mới mười tám tuổi...', 9)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (88, N'Nước Mắt Của Mưa', N'nuoc-mat-cua-mua.jpg', 67000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', N'Ta là Võ gia quý nữ, hắn là hoàng tôn Lý gia

Quen biết nhau ở Đại Minh cung, kết duyên ở Thái Sơ cung, thân phận tôn quý, lại khó cầu một đạo chỉ tứ hôn, cứ như vậy để vuột mất

Lai buồn cười, họ Võ độc chiếm thiên hạ, trong cung kiêng kị khó lường, ai có thể trách vì sao tình bạc ý đoản?

Ta nguyện dùng chút sức lực của mình, cũng chỉ mong bảo hộ ngươi cả đời bình an, không ngờ rằng, bức ngươi buông tay thiên hạ lại uổng phí cuộc đời này.

Không sợ niệm khởi, chỉ sợ giác chậm. Khi đã cầm tay nhau, cả đời này không phụ.', 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (89, N'Thảo Hôn Tướng Công', N'thao-hon-tuong-cong.jpg', 47000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (90, N'Em Là Người Tôi Yêu', N'em-la-nguoi-toi-yeu.jpg', 67000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'DTQT', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (91, N'Đường Hầm Ôđetxa', N'duong-ham-odetxa.jpg', 12000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (92, N'Chiến Tranh Và Chiến Tranh', N'chien-tranh-va-chien-tranh.jpg', 15000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 11)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (93, N'Phong Lưu', N'phong-luu.jpg', 45000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (94, N'Hoàng Tộc', N'hoang-toc.jpg', 56000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (95, N'Hòn Đất', N'hon-dat-anh-duc.jpg', 44000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (96, N'Giang Sơn Như Thử Đa Kiêu', N'giang-son-nhu-thu-da-kieu.jpg', 55000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', N'Nhân vật chính của truyện là một tên trùm chế súng lậu, bị bắt tử hình và xuyên về quá khứ. Nhờ vào khả năng và kiến thức của bản thân, hắn liền trở thành một lãnh chúa, tự thống lãnh đội quân hùng hậu của mình.

Khi dịch truyện này tại hạ tâm đắc nhất câu này của tiền nhân "Nhất tướng công thành vạn cốt khô".', 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (97, N'Tướng Công Mười Bốn Tuổi', N'tuong-cong-muoi-bon-tuoi.jpg', 55800, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (98, N'Phượng Điểm Giang Sơn', N'phuong-diem-giang-son.jpg', 12600, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (99, N'Thiết Huyết Đại Minh', N'thiet-huyet-dai-minh.jpg', 34000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (100, N'Kinh Sở Tranh Hùng Ký', N'kinh-so-tranh-hung-ky.jpg', 88000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 16)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (101, N'Đại Đường Cuồng Sĩ', N'dai-duong-cuong-si.jpg', 89000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', N'Truyện kể về Lý Chân, một kẻ xuyên việt, ở hiện đại, bản thân hắn là một tên thương nhân gần 30 tuổi, đang trên đường bay tới thành phố để cưới vợ, thì bị một hố đen to đùng hút bản thân hắn xuyên việt về thời đại Võ Tắc Thiên của Đại Đường, bản thân hắn là một người bình thường, không có tài năng gì đặc biệt. Nhưng khi xuyên việt về một cậu thiếu niên, thì bản thân hắn có tài bắn cung vô cùng cao siêu. Lại có một tỷ tỷ vô cùng giữ dằn...... Nhìn chung NVC có vẻ thiếu đi chút khí thế của người xuyên việt, không giống những NVC khác trong truyện của lão Cao, chắc là lão muốn thay đổi văn phong đây mà..
Trong sách chỉ đọc được đến đó, mọi người từ từ cảm nhận.', 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (102, N'Một Nửa Đại Đội', N'mot-nua-dai-doi-do-kim-cuong.jpg', 78000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (103, N'Fulro Tập Đoàn Tội Phạm', N'fulro-tap-doan-toi-pham-ngon-vinh.jpg', 56000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (104, N'Bất Khuất', N'bat-khuat-nguyen-duc-thuan.jpg', 67900, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 16)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (105, N'Tiểu Đoàn Trừng Giới', N'tieu-doan-trung-gioi-heinz-gunter-konsalik.jpg', 56800, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (106, N'Cuộc Chiến Bí Mật Chống Hà Nội', N'ebook-cuoc-chien-tranh-bi-mat-chong-ha-noi-full-prc-pdf-epub-azw3.jpg', 77000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (107, N'Hitler và Lò thiêu sống dân Do Thái', N'36836518526-b571b6c63a-o.jpg', 34000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', NULL, 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (108, N'Bí Mật Chiến Tranh Điệp Viên Từ Israel Tới', N'ebook-diep-vien-tu-israel-toi-full-prc-pdf-epub-azw3.jpg', 66000, CAST(N'2023-11-20T00:00:00.000' AS DateTime), 1, N'QS', N'Những bước chân vội vàng của những người lính gác nện vang hành lang và tiếng động của chìa khóa tra vào ổ khóa của xà lim hiu quạnh làm y giật mình. Y ngồi nhổm dậy, nửa thức nửa ngủ. Dưới ánh sáng lờ mờ của ngọn đèn đêm không bao giờ tắt, y phân biệt ngay hai người lính Xy-ri.

Eli tỉnh ngủ hẳn. Chỉ lúc ấy y mới nhận thấy, đứng giữa hai người lính, còn có mặt viên chánh án tòa án quân sự đặc biệt, đại tá Đan-li và giáo sĩ Do thái Nit-xim An-đa-bô của địa phận Đa-mát. Sự kiểm tra đột ngột, vào giữa đêm khuya của viên đại tá có giáo sĩ đi theo coi như rõ ràng sẽ mang y đi xử giảo. Y không còn thì giờ để đối phó nữa.
...
Mời các bạn đón đọc Bí Mật Chiến Tranh Điệp Viên Từ Israel Tới của hai tác giả Y. Ben Porat & Uri Dan.', 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (109, N'Ám Dạ Hành', N'Ám dạ hành.jpg', 55000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'Ám Dạ Hành

Thành phố Thanh Dương liên tiếp xảy ra các vụ án mạng, nạn nhân có vẻ như không quan hệ gì với nhau nhưng nguyên nhân tử vong lại giống nhau đến kỳ lạ: bị móng tay dính nọc độc rắn cào xước da, trúng độc, suy tim mà chết.

Một vụ hỏa hoạn bùng phát giữa đêm khiến người đàn ông trẻ thiệt mạng, qua khám nghiệm tử thi, nạn nhân không phải chết cháy mà do do trúng độc rắn, trên mặt, đầu và cổ là những vết móng tay cào. Mọi nghi ngờ đều chĩa về phía vợ nạn nhân nhưng không có chứng cớ. Vụ án đi vào ngõ cụt.', 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (110, N'Bãi Săn Người', N'Bãi săn người.jpg', 9000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'"Tôi là Diệp Tứ Minh, mọi người thường gọi tôi là anh Tứ. Tôi cảm thấy biệt danh này khắc mình, vì tôi phát hiện mình buộc phải kết liễu sinh mạng trong vòng 4 ngày, nếu không chờ đợi tôi phía trước chính là "sống không bằng chết". 

Do một nhiệm vụ nằm vùng, cảnh sát Diệp Tứ Minh bị nghiện ma túy. Khi cai nghiện, anh lại mắc phải chứng lệ thuộc thuốc. Biết mình sắp thân bại danh liệt, anh quyết định tự sát. Đúng lúc này, ở bờ sông có người phát hiện ra một cánh tay cụt. Cho rằng anh là cảnh sát hiện trường nên người dân níu lại và báo án.

Đồng thời ở ngoại ô thành phố, người ta phát hiện 61 thi thể dưới một đập chứa nước, trở thành một án giết người liên hoàn chưa phá lớn nhất trong thành phố.', 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (111, N'Bản Chất Tâm Lý Tội Phạm', N'Bản chất tâm lý tội phạm.png', 78000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'Con người sinh ra đã mang tính lương thiện trong người. Vậy phải trải qua những biến cố như thế nào trong cuộc đời thì phần thiện kia biến mất? Những đứa trẻ vốn như thiên sứ lại trở thành những tên sát nhân liên hoàn máu lạnh? Ngày hôm đó, cuộc đời của chúng phải trải một biến cố khủng khiếp nhưng nếu có cánh tay vươn ra với chúng thì có lẽ tất cả đều không giống như hiện tại?

Văn Mạt năm nay 30 tuổi, hiện đã giữ chức Phó chủ nhiệm phòng nghiên cứu tội phạm của cục an ninh quốc gia, đã nghiên cứu tâm lý tội phạm suốt 12 năm qua. Ở địa  phương, cô luôn được đội cảnh sát hình sự yêu cầu tiếp viện khi gặp phải những vu án đẫm máu không thể giải quyết được, đem tội phạm ra trước công lý.', 16)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (112, N'Buổi Tiệc Kỳ Bí', N'Buổi tiệc kỳ bí.jpg', 8000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'Đầu năm mới, Kyoto khoác lên mình dáng vẻ vô cùng nhộn nhịp. Cô bé Mashiro Aoi đang làm thêm ở cửa hàng đồ cổ “Kura” trong khu phố Teramachi Sanjo cùng cháu trai ông chủ là Yagashira Kiyotaka được mời tới tham dự buổi “tiệc đọc sách” của tác giả thể loại văn học kì bí nổi tiếng, Aigasa Kurisu. Sự kiện ấy được tổ chức tại Sơn trang Yoshida vào buổi tối ngày Valentine. Trong buổi “tiệc đọc sách”, biên tập viên phụ trách và bạn bè thân thiết của Kurisu cũng được mời đến. Tại đó, em gái Kurisu đã yêu cầu Kiyotaka tìm ra thủ phạm định giết chị gái mình ba tháng trước… Đây là tập bốn của loạt tiểu thuyết kì bí thành công vang dội!

* Holmes ở Kyoto là bộ tiểu thuyết kì bí nhẹ nhàng cực kì nổi tiếng, không chỉ tạo cơ hội cho độc giả làm quen với những nét đẹp văn hoá của mảnh đất Kyoto mà còn giới thiệu về muôn vàn món cổ vật nổi tiếng ở khắp nơi trên thế giới. Và rồi, mỗi món cổ vật đều cất giữ câu chuyện của riêng mình.', 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (113, N'Bướm Đuôi Nhạn', N'Bướm đuôi nhạn.jpg', 8000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'Với “Bướm đuôi nhạn”, tác giả Mitsutaka Yuuki đã mở ra một chân trời mới cho thể loại trinh thám bằng quan điểm hết sức sắc bén về thời đại.

Kuroha lần đầu nhìn thấy bướm đuôi nhạn tại một quầy bar trong thế giới ảo mà cô đang tham gia. Bướm đuôi nhạn là loài bướm di trú nhiều ở châu Âu, còn thứ Kuroha nhìn thấy là một hình vẽ ở trên tường được phối theo tông màu trắng và tím đậm.

Nhưng thứ ấn tượng nhất đối với Kuroha không chỉ là mê cung rối rắm trên cánh bướm, mà còn là sự trùng hợp ngẫu nhiên. Bướm đuôi nhạn chính là cô - Kuroha ngoài đời thực và Ageha trong thế giới ảo.', 5)
GO
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (114, N'Con Rồng Bể Trong Kính', N'Con rồng bể trong kính.jpg', 34000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'Một chàng trai trẻ bị đâm đến chết vì những con cá quý giá của mình. Một ông trùm châu Á mua con cá rồng độc nhất vô nhị với giá 150.000 đô la. Một thám tử đuổi theo những kẻ buôn lậu thú cưng qua đường phố New York... Cuốn sách Con rồng sau bể kính kể chuyện lại những câu chuyện phi thường về nỗi ám ảnh, sự hoang tưởng và những tên tội phạm liên quan đến một loài cá không giống bất kì loài vật nào khác: một động vật ăn thịt hung dữ xuất hiện từ thời kỳ khủng long còn tồn tại trên trái đất. 
"Một cuốn sách có tính khai mở lạ kì." - The New York Times', 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (115, N'Đèn Cù', N'Đèn cù.jpg', 66000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'Quý vị phải lắng yên nghe bài Đèn Cù. Tự mình hát lên, hát cho thấm thía vào lòng, cho những câu dân ca văng vẳng trong đầu trong khi đọc Đèn Cù của Trần Đĩnh. Khen ai khéo vẽ (ối a) đèn cù. Voi giấy (ối a) ngựa giấy, tít mù nó chạy vòng quanh… Voi giấy (ối a) ngựa giấy, vòng quanh nó chạy tít mù. Đèn Cù, cũng gọi là đèn kéo quân, là một trong số đèn Trung Thu, đồ chơi cho trẻ em và cho cả người lớn. Quý vị sẽ dần dần nhìn thấy hoạt cảnh xã hội Việt Nam những hình nhân voi giấy, ngựa giấy tít mù nó chạy vòng quanh trên màn ảnh đèn cù trong hơn nửa thế kỷ. Trong đó có Trần Đĩnh. Một nhân chứng, một người tham dự trong đám Voi giấy (ối a) ngựa giấy lần lần hồi tưởng lại những cảnh cùng nhau chạy vòng quanh (ối a) tít mù. Nhiều tác giả đã viết về xã hội miền Bắc Việt Nam dưới chế độ cộng sản, dưới dạng hồi ký, tiểu thuyết, biện thuyết và lý luận, vân vân. Đèn Cù nổi bật lên trong tủ sách đó. Nếu không phải là kho chứng liệu quan trọng và đầy đủ nhất thì đây là cuốn sách đọc lý thú nhất. Rất nhiều chuyện mới nghe lần đầu. Rất nhiều chuyện cũ được nhìn dưới con mắt khác, thấy những khía cạnh chưa ai từng thấy. Quý vị sẽ cười, sẽ khóc, sẽ thắc mắc, sẽ dằn vặt, thao thức, kinh tởm, giận dữ, sót thương, khi bị cuốn theo những Voi giấy (ối a) ngựa giấy chạy quanh trong cái đèn cù.', 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (116, N'Dòng Đời', N'Dòng dời.jpg', 45000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'"...tác giả đã tỏ ra rất chắc tay khi không e ngại đi sâu vào những khía cạnh tế nhị, chứa nhiều uẩn khúc tâm lý hoặc nhiều khác biệt chính kiến để đưa ra được một cách trung thực và thẳng thắn - dù vẫn không xa rời hình thức văn học của một cuốn tiểu thuyết - những vấn đề vừa cấp thiết, vừa nóng bỏng đặt ra cho sự phát triển của đất nước ta trong một thời kỳ dài từ quá khứ vừa đi qua cho đến hiện tại hôm nay."', 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (118, N'Ellie Yêu Dấu', N'Ellie yêu dấu.jpg', 88000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'Ellie yêu dấu (tựa gốc: Then she was gone) được xuất bản lần đầu tiên năm 2017, là tiểu thuyết thứ 15 của tác giả Lisa Jewell. Câu chuyện bắt đầu khi Ellie, một cô gái 16 tuổi với tương lai rộng mở, biến mất vào một buổi sáng đến thư viện. Mọi người đều không chấp nhận sự thật là Ellie bỏ nhà ra đi.', 2)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (119, N'Hồ Sơ Kĩ Thuật Hình Sự', N'Hồ sơ kĩ thuật hình sự.jpg', 38000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'Chín năm trước, nữ sinh Tiết Dịch bị đâm chết, hung thủ Phương Tử Oánh tự thú nhận tội.

Chín năm sau, trại giam nữ ở thành phố Giang đột nhiên xảy ra án mạng.

Chuyên viên kỹ thuật kiểm nghiệm dấu vết Tiết Bồng cùng đội đến hiện trường, phát hiện một trong số nghi phạm chính là Phương Tử Oánh.

Phương Tử Oánh nói với Tiết Bồng: “Năm đó tôi không hề giết chị cô, hung thủ thật sự vẫn đang nhởn nhơ ngoài vòng pháp luật.”
Trên thế giới chỉ có một chủ nghĩa anh hùng thật sự, đó chính là tình yêu tha thiết với cuộc sống sau khi nhận ra hiện thực của nó.” — Romain Rolland', 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (120, N'Hoa Hồng Thép', N'Hoa hồng thép.jpg', 42000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'Hoa hồng thép xoay quanh 4 cô gái trẻ: Hồng (Thủy Phạm), Ngân (Phan Thị Mơ), Nga (Phi Huyền Trang) và Sen (Huỳnh Kim Khánh). Họ cùng xuất phát điểm được tuyển chọn vào lớp cảnh sát cơ động đặc biệt đầu tiên của trường cảnh sát. Bốn cô gái với bốn tính cách khác nhau đã tạo nên nhiều tình huống dở khóc dở cười khi cùng ngồi học trong lớp cơ động đặc biệt', 11)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (121, N'Kẻ Đào Tẩu', N'Kẻ đàu tẩu.jpg', 10000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', N'Thuộc thể loại trinh thám, hình sự, tiểu thuyết Kẻ đào tẩu của nhà văn Mỹ Phillip Margolin dồn nén nhiều kịch tính, cuốn hút độc giả qua từng tình tiết của vụ án mạng và cuộc đấu trí không khoan nhượng giữa một bên là luật pháp và một bên là bóng tối của tội ác.

Cuốn sách viết về hành trình nữ luật sư xinh đẹp Amanda Jaffe bào chữa cho tên tội phạm Charlie Marsh. Amanda Jaffe không thể từ chối bào chữa cho hắn khi được đề nghị nhận trước 500.000 USD. Marsh chạy trốn khỏi Mỹ sau khi bị buộc tội sát hại hạ nghị sĩ Arnold Pope. Và giờ đây, hắn buộc phải quay về Mỹ khi bị tên độc tài Jean-Claude Baptise truy sát vì dám ngủ với người vợ quyến rũ của hắn.

Thế nhưng, lần trở về này, Charlie Marsh bị bao vây bởi rất nhiều khó khăn và kẻ thù. Án cũ vẫn còn treo lơ lửng trên đầu hắn trong khi ông bố khát máu của Arnold Pope luôn theo sát Marsh để tìm cơ hội trả thù cho con. Sát thủ Baptiste do Jean-Claude Baptise phái đến luôn gây áp lực với Marsh. Bên cạnh đó, gã cũng vướng phải ân oán cũ với những người bạn tù ngày xưa. Tất cả khiến Charlie Marsh không có một giây phút nào bình an. Hắn luôn đứng giữa ranh giới sống và chết. Và luật sư thông minh Amanda Jaffe phải dấn thân vào hành trình tìm ghép các manh mối giúp thân chủ của cô thoát khỏi vòng vây bủa của tội ác. Trong hành trình đó, nhiều bí mật được phơi bày ra.', 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (122, N'Là Tôi Đã Giết Cô Ấy', N'Là tôi đã giết cô ấy.jpg', 55000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'Bạn đang đọc truyện Là Tôi Đã Giết Cô Ấy của tác giả Mặc Du. Chốn nông thôn an tĩnh, yên bình, đột ngột có một cô gái tinh thần không bình thường treo cổ nơi rừng đào.

Nhưng mà nó lại không đơn thuần là tự sát, nhìn trên cổ cô ấy, tràn đầy vết thít, siết, bóp, trên cơ thể còn có vết bầm, đánh đập,… hiện rõ bị bạo hành, ngược đãi…

Cảnh sát Lương Hi vừa từ thành phố đến vùng nông thôn này, cô cố chấp cho rằng không phải cô gái kia tự sát, quyết định vi phạm chỉ đạo của đồn trưởng mà điều tra vụ án này.

Chồng của cô gái tâm thần là một người què, gã phủ nhận việc mình giết hại vợ, cũng nói cho Lương Hi một sự thật kinh người: Đứa bé trong bụng vợ không phải của gã.

Lương Hi lần theo manh mối này mà tiếp tục điều tra, và rồi, cô biết được rất nhiều chuyện mà cô gái này không muốn người khác biết.

Người chết hai mươi mốt tuổi, đã từng hoạt bát, rộng rãi, là người duy nhất có hy vọng thi đậu vào đại học trọng điểm của trường trung học trấn Lương Vân.', 11)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (123, N'Luật Nhà', N'Luật nhà.jpg', 77000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'Jacob Hunt là một đứa trẻ tự kỷ có trí thông minh phi thường và đam mê ngành khoa học pháp y. Cậu sống với  người mẹ tận tụy và cậu em trai đang tuổi nổi loạn. 
Một ngày nọ, Jacob vướng vào một rắc rối lớn: cậu bị buộc tội sát hại chính gia sư kỹ năng của mình. Tất cả chứng cứ đều chống lại cậu. Với kỹ năng giao tiếp hạn chế do chứng tự kỷ gây ra, Jacob càng làm vấn đề trầm trọng thêm, bất chấp những nỗ lực của mẹ cậu, luật sư bào chữa và các bác sĩ, nhà tâm lý đang cố đưa cậu thoát khỏi vấn đề này...
Ngòi bút bậc thầy của Jodi Picoult một lần nữa sẽ đưa bạn đọc đi từ bất ngờ này đến bất ngờ khác, với những kiến thức đáng kinh ngạc trong nhiều lĩnh vực và khả năng đào sâu vào từng ngóc ngách tâm lý của con người.', 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (124, N'Người Lang Thang', N'người lang thang.jpg', 22000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'Ngoài trời màn đêm đã buông. Ngược phố cô sầu, cái bóng cao gầy của Ngấn và con Đăng Khao già nua đang bước về phía bầu trời chớp giật. Những áng chớp liên hồi như xé nát bầu trời ra thành trăm mảnh. Cái bóng cao đó, lúc chìm trong bóng tối, có lúc hiện lên như vết nứt của bóng đêm.
Diên nắm tay con gái chạy vụt ra khỏi nhà. Phía sau là quá khứ khổ đau, là giả dối, là tình yêu đã mất. Diên vứt lại tất cả.
(Trích trong tiểu thuyết "Người Lang Thang" - đoạn cuối).
Xin trân trọng giới thiệu.', 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (125, N'Những Kẻ Sát Nhân', N'Những kẻ sát nhân.jpg', 88800, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'JUANA, Cô gái Mỹ 17 tuổi mang dòng máu Mehicô - Đức, một hôm bỗng bỏ nhà đi hoang theo Vinnie, kẻ gần như cưỡng hiếp cô, lại đang sống cùng một cô gái mà hắn cho mang bầu,, trong "cái ổ" của bọn bỏ học, cơ nhỡ, nghiện hút,... Chúng tự coi mình là những kẻ phản kháng đi tìm những giá trị tinh thần mà xã hội Mỹ hiện tại không có.
Thượng sĩ không quân Cesario yêu con gái hơn mọi thứ trên đời, đã khích Vinnie đến nhà, và bắn chết hắn, ngay trước mặt Juana.
Phiên toà mở ra, Không quân đại diện cho trật tự xã hội, tìm mọi cách bênh vực kẻ sát nhân, nếu không quốc gia sẽ hỗn loạn, con trai nghiện ngập, con gái chửa hoang.... Còn đám trẻ bị coi là hư hỏng kia, bằng tình bạn, tình yêu, lòng khát khao tự do thì quyết đòi đổi mạng. Một phiên toà, và một đám tang, tưởng như đơn giản, bỗng trở nên hy hữu khuấy động ầm ĩ dư luận.
Thế rồi.... máu tiếp tục chảy ở ngay, và cả sau phiên toàn. ở cả Không quân lẫn đám trẻ đi hoang. Ai mới thật sự là NHỮNG KẺ SÁT NHÂN ?', 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (126, N'Phong Tỏa', N'Phong tỏa.jpg', 49000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', N'Tiểu thuyết Phong Tỏa được nhà văn người Anh Peter May hoàn thành năm 2005 nhưng bị các nhà xuất bản từ chối vì cho rằng bối cảnh tiểu thuyết là "phi hiện thực" vì bối cảnh nền là thủ đô London của Anh bị phong tỏa sau năm tháng bị hoành hành vì dịch cúm gia cầm... Tuy nhiên đến hôm nay, khi thế giới đang đối diện với đại dịch Covid-19, tác phẩm đã được chấp nhận.

Truyện là cuộc điều tra của thanh tra cảnh sát MacNeil cùng nhà khoa học pháp y là Amy Wu và Tiến sĩ Cara Castelli truy tìm hung thủ - khi một bộ xương được tìm thấy trong công trường xây dựng ở Lambeth...', 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (127, N'Rừng Thép', N'Rừng thép.jpg', 78000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', NULL, 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (128, N'Tâm Tư Lẩn Khuất Cỏi Trần Ai', N'Tâm tư lẩn khuất cỏi trần ai.jpg', 7700, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TTHS', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (129, N'Bán Mạng', N'Bán mạng.jpg', 33000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TCTL', NULL, 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (130, N'Cẩm Nang Cưa Gái Của Dân Chơi', N'cam-nang-cua-gai-cua-dan-choi.jpg', 45000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TCTL', NULL, 2)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (131, N'Chú Xấu Xa Biết Thả Thính', N'chu-xau-xa-biet-tha-thinh.jpg', 67000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TCTL', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (132, N'Chuyện Làng Cuội', N'chuyen-lang-cuoi.jpg', 9600, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TCTL', NULL, 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (133, N'Cùng Ngày Ly Hôn Với Đại Lão Tôi Biến Nhỏ', N'cung-ngay-ly-hon-voi-dai-lao-toi-bien-nho.jpg', 78000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TCTL', NULL, 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (134, N'Điều Gì Em Cũng Muốn', N'dieu-gi-em-cung-muon.jpg', 98000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TCTL', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (135, N'Đôi Mắt Elisha', N'doi-mat-elisha.jpg', 55000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TCTL', NULL, 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (136, N'Hắn và Thằng Bạn', N'han-va-thang-ban.jpg', 70000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TCTL', NULL, 9)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (137, N'Không Cần Loạn Ăn Vạ', N'Không cần loạn quạ.jpg', 55500, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TCTL', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (138, N'Một Cuốn Sách Buồn Cười', N'mot-cuon-sach-buon-cuoi.jpg', 69000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TCTL', NULL, 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (139, N'Mùa Hè Thứ Hai Của Quần Jeans May Mắn', N'mua-he-thu-hai-cua-quan-jeans-may-man.jpg', 89900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TCTL', NULL, 16)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (140, N'Mùa Hè Thứ Tư Của Quần Jeans May Mắn', N'mua-he-thu-tu-cua-quan-jeans-may-man.jpg', 88000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TCTL', N'Được dịch từ tiếng Anh-Tình chị em vĩnh cửu là cuốn tiểu thuyết thứ năm và cũng là cuốn tiểu thuyết cuối cùng trong loạt truyện "Tình chị em" của Ann Brashares. Câu chuyện kết thúc cuộc phiêu lưu của bốn cô gái sử dụng chung một chiếc quần "ma thuật" vừa vặn với mỗi người một cách hoàn hảo, bất chấp hình dạng và kích cỡ khác nhau.', 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (141, N'Ngàn Cân Treo Sợi Tóc', N'ngan-can-treo-soi-toc.jpg', 48000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TCTL', NULL, 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (142, N'Nước Mỹ', N'Nước mỹ.jpg', 37000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TCTL', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (143, N'Biết Bao Giờ Nguôi', N'Biết bao giờ nguôi.jpg', 77000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (144, N'Chân Dung Trần Huy Liệu, Cõi Người', N'Chân dung trần huy liệu, cõi người.jpg', 88800, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (145, N'Đại Tướng Võ Nguyên Giáp Thời Trẻ', N'Đại tưởng võ nguyên giáp thời trẻ.jpg', 78900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (146, N'Được Sống Và Kể Lại', N'Được sống kể lại.jpg', 66000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (147, N'Hàn Mạc Tử', N'Hàn mạc tử.jpg', 45000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (148, N'Kẻ Trân Chở', N'Kẻ trân chở.jpg', 23000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (149, N'Người Cùng Quê', N'Người cùng quê.jpg', 20000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (150, N'Nguyễn Trãi', N'Nguyễn trãi.jpg', 28000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (151, N'Nhật Ký Cao Điểm', N'Nhật ký cao điểm.jpg', 34000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', N'Nhật Ký Cao Điểm', 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (152, N'Pháp Du Hành Trình Nhật Ký', N'Pháp du hành trình nhật ký.jpg', 30000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (153, N'Phỏng Vấn Tướng Lĩnh Việt Nam', N'Phỏng vấn tướng Lĩnh việt nam.jpg', 33000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (154, N'Tâm Sự Tướng Lưu Vòng', N'Tâm sự tướng lưu vòng.jpg', 23000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 22)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (155, N'Tháng Ba Gãy Súng', N'Tháng ba gãy súng.jpg', 20000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 22)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (156, N'Tôi Đi Học', N'Tôi đi học.jpg', 25000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', N'Hằng năm, cứ cuối thu là những kỉ niệm của buổi đầu đến trường lại mơn man trong lòng tôi. Con đường đi học vốn rất quen thuộc bỗng trở nên xa lạ. Trong khoảnh khắc cùng mẹ bước đi trên con đường ấy, tôi cảm thấy bản thân đã đổi khác. Khi đến sân trường Mĩ Lí, tôi thấy mình như nhỏ bé và có chút bỡ ngỡ. Đến khi ông đốc gọi tên, tôi lo sợ và nép vào lòng mẹ bật khóc. Những lời an ủi của ông đốc vang lên khiến đám học sinh an tâm hơn, theo thầy giáo bước vào lớp học. Khung cảnh trong lớp dường như quen thuộc, ngay cả người bạn mới. Thầy giáo bắt đầu giảng bài - bài tập đọc: Tôi đi học.', 20)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (157, N'Tôi Học Đại Học', N'Tôi học đại học.jpg', 26000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (158, N'Tôi Học Làm Thầy', N'Tôi học làm thầy.jpg', 25000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (159, N'Truyện Cũ Hà Nội', N'Truyện củ hà nội.jpg', 30000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (160, N'Việt Nam Quốc Dân Đảng', N'Việt nam quốc dân đảng.jpg', 24000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (161, N'Xách Ba Lô Mà Đi', N'Xách ba lô mà đi.jpg', 25000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VHVN', NULL, 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (162, N'Bạch Thủ Yêu Sư', N'bach-thu-yeu-su.jpg', 40000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (163, N'Chư Thiên Ký', N'chu-thien-ky.jpg', 33000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', N'La phù thế giới là 1 giới trong chư thiên vạn giới, 10 vạn năm sinh, 10 vạn năm diệt, thế gian vạn vật hàng tỷ sinh linh, liền tại đây 20 vạn năm một lần sinh diệt ở giữa trầm luân, vòng đi vòng lại tuần hoàn không ngừng, đến 1 ngày, linh hồn của 1 thiếu niên chết đi vài vạn năm trước ở tàng kiếm các tỉnh lại...', 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (164, N'Đỉnh Cao Phú Quý', N'dinh-cao-phu-quy.jpg', 20000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (165, N'Không Yêu Thì Ly Hôn Đi', N'khong-yeu-thi-ly-hon-di.jpg', 22000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (166, N'Làm Càn', N'lam-can.jpg', 21000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 15)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (167, N'Lương Đa Giả Vờ Ngủ', N'luong-da-gia-vo-ngu.jpg', 31000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (168, N'Một Lần Gặp Gỡ Một Đời Bên Anh', N'mot-lan-gap-go-mot-doi-ben-anh.jpg', 33000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (169, N'Muốn Cùng Em Ngắm Trăng Lúc Bình Minh', N'muon-cung-em-ngam-trang-luc-binh-minh.jpg', 43000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (170, N'Ngạo Mạn', N'ngao-man-150x250.jpg', 23000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (171, N'Người Gặp Người Yêu Nhưng Chỉ Muốn Yên Ổn Làm Sự Tôn Của Nam Chính', N'nguoi-gap-nguoi-yeu-nhung-chi-muon-yen-on-lam-su-ton-cua-nam-chinh.jpg', 34500, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (172, N'Sự Muộn Miệng Quạ Đen', N'nguoi-nguoi-cung-chieu-su-muoi-mieng-qua-den.jpg', 30000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (173, N'Rơi Vào Tay Em', N'roi-vao-tay-em.jpg', 15000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (174, N'Tình Đắng Khắc Vào Tim', N'tinh-dang-khac-vao-tim.jpg', 78000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (175, N'Thương Nhân Âm Phủ', N'am-gian-thuong-nhan.jpg', 58000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', N'a là một cái chuyên môn thu thập âm tà ngoạn ý thương nhân, người chết đồ vật đều là thứ tốt!

Người chết xuyên qua giày thêu, ta muốn! Tro cốt đốt thành sứ Thanh Hoa, ta muốn!

Chém eo dùng đại dao cầu, ta còn muốn! Mấy thứ này gác ở người thường trong tay, tiểu tắc ác quỷ quấn thân, đại tắc cửa nát nhà tan.

Nhưng nếu là dừng ở trong tay của ta, lại có thể thăng quan phát tài, nghịch thiên sửa mệnh, thỏa mãn hộ khách hết thảy nhu cầu.

Muốn biết vì cái gì sao?

Hư, có lá gan nói, liền tới nghe một chút ta nhập thịnh hành tiếp đệ nhất đơn khủng bố sinh ý đi...', 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (176, N'Căn Hộ Số 203', N'can-ho-so-203.jpg', 78900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (177, N'Chỉ Đen', N'chi-den.jpg', 56000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 2)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (178, N'Chuyện Ma Ám Ở Trang Viên Bly', N'chuyen-ma-am-o-trang-vien-bly.jpg', 95000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', N'“Tôi nhớ rằng mọi chuyện bắt đầu với một loạt thăng trầm trong cảm xúc, một chút bấp bênh của hồi hộp lo sợ...”

Một cô gái trẻ nhận được công việc đầu tiên trong đời là làm gia sư cho hai đứa trẻ xinh đẹp, trong sáng và lặng lẽ đến dị thường tại toà dinh thự Bly cô độc, bị bủa vây trong cái ác rình rập.
Những bóng người ẩn hiện từ toà tháp tối tăm và ô cửa sổ bụi bặm, các bóng ma xấu xa lặng lẽ tiến đến ngày một gần. Với nỗi kinh hoàng lớn dần, cô gia sư bất lực nhận ra những sinh vật tàn ác đó nhắm đến bọn trẻ, rắp tâm xâm chiếm cơ thể, tâm trí và cả linh hồn các em…
Nhưng không ai ngoài cô nhìn thấy những bóng ma ấy. Phải chăng những ám ảnh kia được gợi lên từ chính trí tưởng tượng của cô gia sư, hay sự thật còn chứa đựng nhiều hơn thế?', 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (179, N'Con Lạch Chết Chóc', N'con-lach-chet-choc.jpg', 99000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (180, N'Dân Gian Ngụy Văn Thực Lục', N'dan-gian-nguy-van-thuc-luc.jpg', 99000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (181, N'Hệ Thống Nhà Ma', N'he-thong-nha-ma.jpg', 79000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (182, N'Học Viên The Institute', N'hoc-vien.jpeg', 69000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (183, N'Hồng Nhan Đổi Mạng', N'hong-nhan-doi-mang.jpg', 89000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', N'Khi anh chủ nhà có cặp mắt kỳ lạ gặp gỡ những người khách thuê nhà “rất bảnh”, cuộc sống chung nhà nhằm “nương tựa vào bạn bè” đã diễn ra một cách lạ thường!

Khả năng nhìn thấy ma của An Nhiên đã cứu mạng đạo diễn nổi tiếng, còn ngang nhiên ngăn cản cơ hội báo thù của oan hồn! Đang đau đầu tìm cách thoát khỏi cô nàng paparazzi hiếu kỳ, An Nhiên vô tình lại trở thành nhân vật nam đáng thương trên tin tức giải trí…', 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (184, N'Kết Hôn Âm Dương', N'ket-hon-am-duong.jpg', 68000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (185, N'Khúc Ca Tú Cầu Của Ác Quỷ', N'khuc-ca-tu-cau-cua-ac-quy.jpg', 79000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', N'Giới thiệu sách: Sau khi phá giải những án mạng tinh vi gây chấn động khắp nước Nhật, thám tử Kindaichi Kosuke không khỏi nhức nhối vì bi an trần tục, nên quyết định tạm nghỉ một thời gian. Ai ngờ đâu…

Số lượng
1
THÊM VÀO GIỎ', 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (186, N' Khủng Bố Sống Lại', N'khung-bo-song-lai.jpg', 89000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 16)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (187, N'Đại Sư Kiều Mặc Vũ ', N'lac-trong-nui-ai-lao.jpg', 90000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (188, N'Người Kéo', N'nguoi-keo.jpg', 89000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (189, N'Quái Nhân Trộm Mộ', N'quai-nhan-trom-mo-nguoi-tim-xac.jpg', 79900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 17)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (190, N'Đoán Mệnh Sư', N'thap-nien-70-doan-menh-su.jpg', 80000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 16)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (191, N'Trái Tim Độc Ác', N'trai-tim-doc-ac.jpg', 77000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 11)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (192, N'Trộm Mệnh', N'trom-menh.jpg', 58000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 18)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (193, N'Viên Lão Quái Kỳ Án', N'vien-lao-quai-ky-an.jpg', 88800, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TMKD', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (194, N'Cách Đế Vương Đoạt Thê', N'cach-de-vuong-doat-the-luc-quang.jpg', 82000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', NULL, 13)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (195, N'Cẩm Y Chi Hạ', N'cam-y-chi-ha-lam-sac-su.jpg', 76000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', NULL, 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (196, N'Hát Tiễn Hoa Đào Chờ Người Quay Lại', N'ca-tan-dao-hoa.jpg', 34000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', NULL, 18)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (197, N'Chiến Tranh Hoa Hồng', N'chien-tranh-hoa-hong.jpg', 55000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', NULL, 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (198, N'Cho Bạc Hà Thêm Đường', N'cho-bac-ha-them-duong.jpg', 66000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', NULL, 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (199, N'Chuyện Người Không Biết', N'chuyen-nguoi-khong-biet.jpg', 49000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', NULL, 2)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (200, N'Gặp Em Dưới Mưa Xuân', N'gap-em-duoi-mua-xuan.jpg', 110000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', NULL, 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (201, N'Hoàng Hậu Anh Túc', N'hoang-hau-anh-tuc.jpg', 142000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (202, N'Hư Ảo Một Cuộc Tình', N'hu-ao-mot-cuoc-tinh.jpg', 166000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', NULL, 14)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (203, N'Lạp Khuyển', N'lap-khuyen.jpg', 83000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', N'Lạp Khuyển', 18)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (204, N'Ngoan Dỗ Em', N'ngoan-do-em.jpg', 34000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', N'【1 】 "Nếu như anh thích một người thì anh sẽ làm gì?"

Cố Ngôn Thanh: "Nghĩ hết tất cả biện pháp. . . để cô ấy theo đuổi anh."

【2 】 Tần Noãn viết thư tình cho Cố Ngôn Thanh, vẫn chưa nhận được câu trả lời. Kết quả mấy ngày sau, cô nhìn thấy Cố Ngôn Thanh tới nhà mình làm khách. Cô hạ quyết tâm, kéo người vào thư phòng: "Em viết thư tình cho anh vì sao không trả lời lại?"

Cố Ngôn Thanh: "Nhiều lắm, không thấy."

Tần Noãn ấp úng: "Chuyện là, nhà hai chúng ta cũng đã biết nhau, nếu không anh xem xét một chút, cho em đi cửa sau, làm bạn gái của anh?"

Anh bị cô ngăn cửa, bên tai phiếm hồng, ý cười nhàn nhạt: "Được."', 17)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (205, N'Nhật Sinh Nhất Thế', N'nhat-sinh-nhat-the-tieu-hong-tran-quan-tu-giang-son.jpg', 40000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', N'Ở thế kỷ 21 thì nàng đường đường là nữ sát thủ số một trong thế giới ngầm ấy vậy mà chỉ ngủ một giấc bỗng linh hồn của nàng xuyên không đến một vương triều xa lạ, nhập vào xác của một vị tài nhân có tên Tô Cẩm Hoàng đế nước Đông Lăng.

Sau khi xuyên không thì việc đầu tiên cô nàng này nghĩ đến chính là số tiền mình tích cóp được đã tan thành mây khói. Đó là đả kích vô cùng trầm trọng vào tâm linh cô nàng yêu tiền hơn mạng này.

Không chỉ thế Tô Cẩm Bình ngay đêm đầu tiên xuyên không đã đắc tội với “ông chồng hời” của mình, vì nàng dám cướp nhà xí với hắn, thậm chí còn đạp hắn một cái, khiến hắn suýt nữa thì rơi xuống hố phân... Tuy nàng may mắn thoát chết nhưng lại bị “mất chức” Tài nhân, bị biếm thành cung nữ lương tháng 3 lượng bạc, trong khi lương Tài nhân là 50 lượng!!!

Quả thật là lòng đau như cắt, cô nàng nào đó quyết tâm quyến rũ Hoàng thượng để kiếm được nhiều bạc hơn, lấp đầy tâm linh trống rỗng vì không có tiền của mình.

Nhưng mọi chuyện sẽ thuận lợi sao? Hoàng đế sẽ chết mê chết mệt nàng giống như quyển tiểu thuyết tên là “Vương phi hung hãn, bản vương giết nàng” mà nàng từng đọc ư?', 15)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (206, N'Sự Nham Hiêm Của Tiểu Đô', N'su-nham-hiem-cua-tieu-do.jpg', 60000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', N'Cơ thể anh rất yếu ớt, anh mắc phải một chứng bệnh tim có lỗ hổng [1] bẩm sinh.

Tim đã có lỗ hổng khi anh vừa lọt lòng. Các bác sĩ trong nước chuẩn đoán nhầm, cho rằng chỉ cần theo dõi thì nó có thể tự động khép lại, bởi vậy mà bỏ qua một cơ hội phẫu thuật tốt nhất.

Anh càng lớn, lỗ hổng đó chẳng những không khép lại mà còn to hơn, cho đến lúc cơ thể anh không còn thích ứng được nữa. Đặc biệt năm lên anh tám tuổi, bệnh thêm trầm trọng khi phải hứng chịu chuyện xảy ra đối với mẹ mình. Hiện giờ anh đã hai mươi, thần sắc nhợt nhạt, cô đơn nằm trên giường bệnh.

Đây là tháng chín đần tiên của năm thứ hai anh đặt chân đến Mỹ, các chuyên gia vẫn chưa dám phẫu thuật cho anh mà chỉ có thể duy trì phương pháp điều trị. Bởi vì lúc còn ở trong nước, anh phát bệnh quá nhiều lần, làm cơ thể suy yếu, bị nhiễm trùng nặng khiến vi khuẩn xâm chiếm các cơ quan nội tạng khác. Các lớp ngăn cách bởi một khối máu lớn, tạo thành những ‘rạn san hô’ hung hãn bám vào màng tim, cùng với lỗ hổng bẩm sinh trước kia đang sánh vai đùa giỡn trước số phận của anh.', 11)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (207, N'Thế Giới Nhỏ', N'the-gioi-nho.jpg', 29000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', N'Chúng tôi, chỉ là một phần nhỏ của thế giới, nhưng là toàn bộ thế giới của nhau.

Những ghi chép về cuộc sống thường ngày, lưu giữ làm kỷ niệm.

Đây là một câu chuyện về gia đình tác giả, không có tuấn nam mỹ nữ, nam chính hoàn mỹ xuất sắc hay nữ chính xinh đẹp tuyệt vời gì cả, đây chỉ là những mẩu ghi chép vụn vặt về cuộc sống gia đình, rất chân thực. Một thế giới nhỏ của riêng họ, nhưng đem lại niềm vui cho tất cả mọi người. Nói chung hài hước vui vẻ là chính, ai cũng có thể đọc được.

Đề cử của các tác giả:

Tác giả Đường Thất Công Tử: Tôi luôn cho rằng, một cuốn tiểu thuyết hay là có thể sử dụng ngôn ngữ tươi đẹp ghi lại những câu chuyện xưa tuyệt vời. Trong sách của Phiêu A Hề, mỗi câu chuyện đều cảm động đi vào lòng người, khiến người ta cảm thấy ngọt ngào hạnh phúc. Nói đến ngôn ngữ, Phiêu A Hề có phong cách của riêng mình, trong sáng mà điêu luyện, có sức sống mãnh liệt, đậm là đậm, nhạt là nhạt, trong đậm có nhạt, rất hài hòa.

Tác giả Diệp Huyên: Dưới ngòi bút của Phiêu A Hề chưa từng có một con người quá hoàn mỹ. Nhưng những nhân vật không hoàn mỹ ấy, lại khiến chúng ta cảm nhận được họ không chỉ sống trong sách vở, mà còn là những con người chân thực.', 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (208, N'Thứ Xuất Tiêu Tương Bích Ảnh', N'thu-xuat-thu-xuat-tieu-tuong-bich-anh.jpg', 20000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', N'Câu chuyện hôm nay mình muốn giới thiệu lại là một cốt truyện xuyên không kinh điển: xuyên qua thành tiểu thư thứ xuất.

Chu Y Liên tỉnh giấc thấy bản thân đã xuyên vào thân thể của La Y, tiểu thư thứ xuất của một gia đình trung lưu. Cha La Y nhậm chức huyện lệnh ở một vùng xa xôi, mẹ nàng chỉ là di nương. La Y từ nhỏ sống cùng mẹ cả Hoàng thị và chị gái là Cẩm Tú. Nhưng cuộc sống của nàng khá thoải mái, vì Hoàng thị là người sâu sắc, lại thông minh. Bà có cách quản lí gia đình rất độc đáo, cũng đối xử tốt hết mực với thứ nữ La Y, nuôi nàng không khác gì dòng chính. Cẩm Tú cũng thân thiết với La Y. Cuộc sống của nàng tưởng chừng không thể nào tốt đẹp hơn, không cần tranh đấu, không cần ra mặt, tất cả đã có mẹ cả và chị gái thay nàng “gánh” team hết.', 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (209, N'Xuyên Không Ký Sự', N'xuyen-khong-ky-su.jpg', 50000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', N'Truyện Xuyên Không Ký Sự là một truyện mới nằm trong chuỗi truyện xuyên không đặc sắc gửi đến bạn đọc trên trang đọc truyện online. Truyện mở đầu bằng một tình huống không còn lạ lẫm nhưng lại đầy sức hút dưới ngòi bút đầy biến hóa của tác giả Quân Tản Du. Không gian, thời gian và cả tình yêu hiện hữu trong truyện luôn sống động, chân thực, lay động lòng người. Bạn cũng có thể tìm thêm nhiều tác phẩm thu hút đông đảo bạn đọc quan tâm như: Đế Hoàng Phi, Không Muốn Làm Quân Cờ Của Vương Gia: Khí Phi Tái Nan Cầu,...

Câu chuyện về một người đàn ông tốt, không cẩn thận xuyên không, sau đó liều mạng tìm đường trở về vì bà xã.

Ngoài cửa sổ sấm chớp đùng đùng khiến cho trong lòng Hàn Tinh Y không yên. Cô ngồi bên bàn ăn không ngừng nhìn đồng hồ, trong lòng thầm rủa Diệp Dương, đã mười giờ đêm còn kiên trì muốn chạy đi mua bánh ngọt.', 2)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (210, N'Yêu Phải Một Mảnh Tuyết', N'yeu-phai-mot-manh-tuyet.jpg', 45000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'XK', N'【 Bản thực tế 】

Bỏ đi lớp áo khoác thiếu nữ thanh thuần, sau đó là câu chuyện xưa về quá trình trốn chạy.

【 Bản đồng thoại 】

Gia đình gặp biến cố, trong một đêm, từ công chúa giàu sang cao quý biến thành cô bé quàng khăn đỏ lưu lạc khắp nơi. Bị một con sói xám bụng dạ đen tối mơ ước đã lâu mạnh mẽ ôm về, từ từ nuôi lớn, sau đó ăn sạch miếng thịt tươi bé nhỏ mơ tưởng đã lâu.', 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (211, N'Anh Đây Cóc Sợ Vợ', N'anh-day-coc-so-vo.jpg', 96000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', N'"Sở Tiểu Dư, ngày nào gặp phải cậu thì lần đó tôi đều mất mặt. Cậu đừng được voi đòi tiên" Anh vừa nói vừa tức giận, không ngờ cô lại đốt tóc anh, hơn nữa là bộ tóc mới làm.

"Cậu nói gì?" Cô từ từ ngẩng đầu lên, dáng vẻ đáng yêu tinh nghịch, bỗng nhiên nâng mặt anh lên hôn vào cằm.

"Không...không có gì?" dứt lời thì vẻ kiêu căng ngạo mạn của anh bỗng chốc như quả bóng bị xì hết hơi. Cả người anh cứng lại, lắp ba lắp bắp, đột nhiên níu lấy nhúm tóc rơi.“Tôi tôi tôi, nói cậu tiếp tục đi.”.

Cô gật đầu nhẹ nhàng, tiếp tục đốt những sợi tóc làm thí nghiệm xem protein có mùi gì?', 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (212, N'Bạn Trai Tuấn Tú Thường Xuyên Mời Ăn Cơm', N'ban-trai-tuan-tu-thuong-xuyen-moi-an-com.jpg', 40000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', N'Giang Tuần đã từng dùng một câu để mỉa mai Trần Hi Nguyệt — tham ăn sớm muộn cũng hỏng chuyện, háo sắc nhất định gặp tai ương.

Đối với bình luận này, Trần Hi Nguyệt yên lặng liếc xéo trong lòng một cái, cảm thấy cậu ta rảnh rỗi đến phát khùng, đơn giản là nói hưu nói vượn thôi.

Nhưng sự thật chứng minh, Giang Tuần nói không sai chút nào. Sau này, đúng là cô bị thua bởi hai chuyện tham ăn và háo sắc, hơn hai mươi năm đạo hạnh một đi không trở lại, hơn nữa còn ngọt ngào như mật, vui mừng khôn xiết.', 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (213, N'Chú Hay Anh', N'chu-hay-anh.jpg', 22000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', N'Câu chuyện tinh yêu của cặp đôi trâu già gặm cỏ non khi anh đã là chàng trai đang độ tuổi đẹp nhất còn em thì chỉ vừa mới sinh ra đời và là con của anh trai bạn anh. Tuy còn nhỏ nhưng khi được anh bồng trên tay thì lại cười rất vui vẻ. Cũng từ đó mở ra đoạn nhân duyên của hai người.', 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (214, N'Chụp Trộm Chàng Trai Bò Cạp', N'chup-trom-chang-trai-bo-cap.jpg', 21900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', N'Điền Điềm giấu đầu lòi đuôi mà giải thích với Từ Minh Phong:

"Bạn cùng phòng đòi trang điểm cho em, rồi mấy cô ấy còn đưa em cái váy này."

Điền Điềm gãi đầu, mất tự nhiên giải thích, cô sợ Từ Minh Phong tưởng bở rằng vì gặp anh nên cô mới mất công chưng diện. Thế thì mất mặt lắm!

Từ Minh Phong “À” một tiếng rồi nói: “Tay nghề trang điểm của bạn em không tệ.”

Điền Điềm: “…”', 16)
GO
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (215, N'Cường Thế Sủng Ái', N'cuong-the-sung-ai.jpg', 45000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (216, N'Diệp Hồ Diệp Lai', N'diep-diep-ho-lai.jpg', 50000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (217, N'Đừng Nhìn Tớ Đầu Hàng', N'dung-nhin-anh-dau-hang.jpg', 37000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 17)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (218, N'Hứa Với Em Một Đời Hoa Nở', N'hua-voi-em-mot-doi-hoa-no.jpg', 29000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (219, N'Lấy Phải Boss Kiêu Ngạo', N'lay-phai-boss-kieu-ngao.jpg', 33000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (220, N'Năm Tháng Ngọt Ngào Của Anh Và Em', N'nam-thang-ngot-ngao-cua-anh-va-em.jpg', 79000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 13)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (221, N'Người Mới Tức Giận', N'nguoi-moi-tuc-gian.jpg', 66800, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (222, N'Ôm Mộc Thành Lâm', N'on-moc-thanh-lam.jpg', 55900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (223, N'Thần Chi Tả Thủ', N'than-chi-ta-thu.jpg', 78900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (224, N'Thần Hồn Điên Đảo', N'than-hon-dien-dao.jpg', 54900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (225, N'Tựa Như Tình Không Của Thâm Viễn', N'tua-nhu-tinh-khong-cua-tham-vien.jpg', 99000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (226, N'Vĩ Gian Phong', N'vi-gian-phong.jpg', 75300, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (227, N'Yêu Sự Ấm Áp Của Em', N'yeu-su-am-ap-cua-em.jpg', 28900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'TNNT', NULL, 9)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (228, N'Ý Tưởng Triết Học', N'50-y-tuong-triet-hoc.jpg', 55000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (229, N'Chủ Nghĩa Vô Thần', N'chu-nghia-vo-than.jpg', 78000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (230, N'Dân Luận Về Jung', N'dan-luan-ve-jung.jpg', 49900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (231, N'Đạo Đức Học Bức Tranh', N'dao-duc-hoc-bang-tranh.jpg', 94000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (232, N'Dân Luận Về NIETZSCHE', N'dan-luan-ve-nietzsche.jpg', 77900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (233, N'Hiểu Hết Về Triết Học', N'hieu-het-ve-triet-hoc.jpg', 66000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 2)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (234, N'Liệt Tử Và Dương Liệt', N'liet-tu-va-duong-tu.jpg', 56900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (235, N'Lịch Sử Triết Học', N'luoc-su-triet-hoc.jpg', 87000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (236, N'Mặc Tử Và Biệt Mặc', N'mac-tu-va-biet-mac.jpg', 92900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 13)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (237, N'Nhập Môn Foucault', N'nhap-mon-foucault.jpg', 90000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (238, N'Niềm Cảm Hứng', N'niem-cam-hung.jpg', 45000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 14)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (239, N'Phê Phán Lý Tính Thực Hành', N'phe-phan-ly-tinh-thuc-hanh.jpg', 79500, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (240, N'SENECA Những Bức Thư Đạo Đức', N'seneca-nhung-buc-thu-dao-duc.jpg', 80000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (241, N'Tâm Thức Bản Ngã Và Xã Hội', N'tam-thuc-ban-nga-va-xa-hoi.jpg', 78000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 9)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (242, N'Triết Học', N'triet-hoc.jpg', 89000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (243, N'Logic Hoc Bằng Tranh', N'triet-hoc-ly-thu-logic-hoc-bang-tranh.jpg', 55000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (244, N'Tuân Tử', N'tuan-tu.jpg', 60000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (245, N'Yến Bội Và Phaedrus', N'yen-hoi-va-phaedrus.jpg', 60000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'CTHD', NULL, 9)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (246, N'Ác Ma Doanh Địa', N'ac-ma-doanh-dia.jpg', 49000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (247, N'Amaryllis Ở Xứ Sở Băng Giá', N'amaryllis-o-xu-so-bang-gia.jpg', 68900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 3)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (248, N'Ánh Trăng Hôn Qua Sao Trời', N'anh-trang-hon-lay-vi-sao.jpg', 73000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 2)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (249, N'Double Joker', N'double-joker.jpg', 94000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 11)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (250, N'Dù Được Ban Đôi Cánh', N'du-duoc-ban-doi-canh.jpg', 38900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (251, N' ECHO Tiếng Vong', N'echo-tieng-vong.jpg', 65900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 14)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (252, N'Hành Trình Đến Tận Cùng Thế Giới', N'hanh-trinh-den-tan-cung-the-gioi-yorozuya-tadahito.jpg', 99000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (253, N'Iris Những Ngày Mua', N'iris-nhung-ngay-mua.jpg', 79000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (254, N'Khoảng Cách Giữa Hai Người', N'khoang-cach-giua-hai-nguoi.jpg', 59000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 13)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (255, N'Vật Linh Hội', N'lua-chon-mu.jpg', 49000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (256, N'Mr Cà Vạt', N'mr-ca-vat.jpg', 68900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 16)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (257, N'Narcissu', N'narcissu.jpg', 88000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 18)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (258, N'Nhánh Linh Lan Hắc Ám', N'nhanh-linh-lan-hac-am.jpg', 100000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (259, N'Phế Tích', N'phe-tich.jpg', 92000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 15)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (260, N'Phù Thủy Thế Hệ Satori', N'phu-thuy-the-he-satori.jpg', 59000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 17)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (261, N'Sự Trở Về Của Nidaime', N'su-tro-ve-cua-nidaime.jpg', 75000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 13)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (262, N'Trình Tự Kudryavka', N'trinh-tu-kudryavka.jpg', 58000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (263, N'Trò Chơi Sinh Tử', N'tro-choi-sinh-tu.jpg', 72000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'VD', NULL, 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (264, N'Anh Đây Cóc Sợ Vợ', N'anh-day-coc-so-vo.jpg', 89900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (265, N'Bạn Trai Tuấn Tú Thường Xuyên Mời Ăn Cơm', N'ban-trai-tuan-tu-thuong-xuyen-moi-an-com.jpg', 68000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 9)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (266, N'Chú Hay Anh', N'chu-hay-anh.jpg', 40000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 2)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (267, N'Chụp Trộm Chàng Trai Bò Cạp', N'chup-trom-chang-trai-bo-cap.jpg', 54000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (268, N'Cường Thế Sủng Ái', N'cuong-the-sung-ai.jpg', 27000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (269, N'Diệp Diệp Hồ Lai', N'diep-diep-ho-lai.jpg', 79000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (270, N'Đừng Nhìn Tớ Đầu Hàng', N'dung-nhin-anh-dau-hang.jpg', 57000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (271, N'Hứa Với Em Một Đời Hoa Nở', N'hua-voi-em-mot-doi-hoa-no.jpg', 79000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 11)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (272, N'Lấy Phải Boss Kiêu ngạo ', N'lay-phai-boss-kieu-ngao.jpg', 56900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 14)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (273, N'Năm Tháng Ngọt Ngào Của Anh Và Em', N'nam-thang-ngot-ngao-cua-anh-va-em.jpg', 72900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 17)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (274, N'Người Mới Tức Giận', N'nguoi-moi-tuc-gian.jpg', 45900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 19)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (275, N'Ôn Mộc Thành Lâm', N'on-moc-thanh-lam.jpg', 64000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 20)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (276, N'Thần Chi Tả Thủ', N'than-chi-ta-thu.jpg', 85000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 4)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (277, N'Thần Hồn Điên Đảo', N'than-hon-dien-dao.jpg', 54000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 6)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (278, N'Tựa Như Tình Không Của Thâm Viễn', N'tua-nhu-tinh-khong-cua-tham-vien.jpg', 57900, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (279, N'Vĩ Gian Phong', N'vi-gian-phong.jpg', 74000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 7)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (280, N'Yêu Sự Ấm Áp Của Em', N'yeu-su-am-ap-cua-em.jpg', 70000, CAST(N'2023-11-22T00:00:00.000' AS DateTime), 1, N'SU', NULL, 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (306, N'Phong Trào Đấu Tranh Yêu Nước Sinh Viên Học Sinh Cao Trào 1969 - 1972', N'f0791250.jpg', 135000, CAST(N'2024-05-02T13:04:40.320' AS DateTime), 1, N'LS', N'Phong Trào Đấu Tranh Yêu Nước Sinh Viên Học Sinh Cao Trào 1969 - 1972

Cuốn sách mà độc giả đang cầm trên tay là cuốn sách thứ hai viết về cùng một đề tài Phong trào đấu tranh yêu nước sinh viên học sinh trong thời kỳ chống Mỹ. Cuốn đầu tiên có tên Dấu ấn một thời do Nhà xuất bản Trẻ ấn hành vào năm 2007 và nay tác giả có cuốn thứ hai mang tên Phong trào đấu tranh yêu nước sinh viên học sinh – cao trào 1969-1972 (Hồi ức lịch sử). Cuốn sách sau cách cuốn trước 16 năm và bây giờ tác giả cũng đã ở tuổi 80.
Là người trong cuộc và may mắn được tổ chức cách mạng của sinh viên phân công và bố trí ở các vị trí đại diện của tổ chức sinh viên để cùng anh em lãnh đạo Phong trào đấu tranh công khai Sinh viên, học sinh (1969 – 1972) – tác giả có điều kiện quý báu là trải nghiệm cuộc đấu tranh cộng với hàng trăm trang tư liệu viết tay của chính tác giả thời ấy vẫn còn giữ được – chưa kể hiện nay có hàng chục cuốn sách về truyền thống của Thành Đoàn, của phong trào đấu tranh đô thị Huế, của Ban Trí vận Mặt trận Sài Gòn để tham khảo.', 29)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (307, N'Chảo Lửa Bất Tử', N'a1ecf0cb.jpg', 115000, CAST(N'2024-05-02T13:11:49.140' AS DateTime), 1, N'LS', N'Chảo lửa bất tử là câu chuyện về những tháng năm chiến đấu và hy sinh anh dũng của những người lính cụ Hồ trên chiến trường Quảng Nam - Đà Nẵng. Tác giả Võ Quang Tiến - một trong số những người còn được trở về từ “chảo lửa” khốc liệt ấy - đã cầm bút để ghi lại những thời khắc không bao giờ quên trong cuộc đời ông và những người đồng đội.

Chiến đấu là vinh quang, chiến thắng là tự hào. Nhưng phía sau tất cả những điều ấy, là nỗi sợ của những thiếu niên vừa mới bước vào độ xanh, nỗi sợ bom đạn, sợ chết, sợ không được về nhà nữa. Sau những nụ cười là những giọt nước mắt, là tình yêu chớm nở nhưng bị buộc phải lụi tàn, là những lần chia tay vội vã, là những cái sự đứt dây tơ duyên giữa chừng.

Ngày hôm nay, sau hơn nửa thế kỷ độc lập, các bạn sẽ lại được cầm trên tay cuốn sách về “thời chiến”, có niềm vui, có ca ngợi nhưng hơn hết, cuốn sách là câu chuyện thật, được viết bởi một người lính, chứa nỗi đau và nỗi nhớ của một người bước ra từ ngọn lửa đạn bom.', 15)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (310, N'Lịch Sử Việt Nam Bằng Tranh - Nguyễn Trãi (Bản Màu) (Tái Bản 2023)', N'8cf28c2f.jpg', 60000, CAST(N'2024-05-02T13:31:29.593' AS DateTime), 1, N'LS', N'Lịch Sử Việt Nam Bằng Tranh - Nguyễn Trãi (Bản Màu) (Tái Bản 2023)
Bộ sách Lịch sử Việt Nam bằng tranh kể chuyện lịch sử Việt Nam bằng một phong cách ngắn gọn, hấp dẫn và có hệ thống qua những câu chuyện và những bức tranh đẹp. Phiên bản mới này được tô màu rất công phu. Sách được chăm chút khâu thiết kế, với ruột và bìa đẹp, vừa hiện đại vừa đậm bản sắc Việt.
-------------------
Trong thắng lợi của nghĩa quân Lam Sơn, không thể không nhắc đến Nguyễn Trãi. Tham gia nghĩa quân Lam Sơn, ông trở thành mưu sĩ, đất nước hòa bình, ông trở thành công thần. Tuy nhiên, năm 1442, ông cùng toàn bị tru di tam tộc trong vụ án Lệ Chi viên. Mãi đến năm 1464, vua Lê Thánh Tông mới xuống chiếu giải oan cho ông.
_________
"Sự lộng hành của bọn xu nịnh, sự giảo hoạt của bọn cơ hội và sự tự mãn của những người vừa được trao chức tước lớn... khiến cho Nguyễn Trãi vô cùng lo âu. Những cái chết oan ức của Trần Nguyên Hãn, Phạm Văn Xảo và Lưu Nhân Chú... khiến cho ông xót xa, đau đớn. Và đúng lúc ấy, đến lượt Nguyễn Trãi cũng bị gièm pha, khích bác..."', 15)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (311, N'Lịch Sử Việt Nam Bằng Tranh - Thăng Long Buổi Đầu (Bản Màu) (Tái Bản 2023)', N'9466767b.jpg', 60000, CAST(N'2024-05-02T13:32:39.827' AS DateTime), 1, N'LS', N'Lịch Sử Việt Nam Bằng Tranh - Thăng Long Buổi Đầu (Bản Màu) (Tái Bản 2023)

Đầu thế kỷ 11, Lý Công Uẩn lập nên nhà Lý. Nhà Lý  kéo dài hơn 200 năm, là một trong ba vương triều ổn định nhất trong lịch sử nước nhà. Một trong những đóng góp to lớn của triều Lý với dân tộc ta chính là việc dời đô từ Hoa Lư về Thăng Long.

“Theo truyền thuyết, lúc ấy ở làng Cổ Pháp có một cây gạo bỗng dưng bị sét đánh, vỏ cây bị tước ra làm lộ mấy câu sấm với ý nghĩa như sau:

Vua thì non yếu', 20)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (312, N'Lịch Sử Việt Nam Bằng Tranh - Chiến Thắng Quân Nguyên Mông Lần 2 (Bản Màu) (Tái Bản 2023)', N'c1a518dc.jpg', 60000, CAST(N'2024-05-02T13:39:26.963' AS DateTime), 1, N'LS', N'Lịch Sử Việt Nam Bằng Tranh - Chiến Thắng Quân Nguyên Mông Lần 2 (Bản Màu)

Thất bại trong cuộc chiến tranh xâm lược Đại Việt lần thứ nhất, Nguyên Mông lại nuôi dã tâm bành trướng, thâu tóm Đại Việt. Với lòng yêu nước, đoàn kết quyết tâm, quân và dân nhà Trần một lần nữa đẩy lùi cuộc xâm lược của giặc Nguyên Mông.

"Đứng trước các vị trưởng lão râu tóc bạc phơ, Thượng hoàng hỏi: “Nên hòa hay nên chiến?”. Lập tức cả ngàn tiếng nói cùng hòa làm một trong khí thế bừng bừng, tất cả hô vang: “Quyết chiến, quyết chiến”. Lòng can đảm và ý chí quật cường của các bô lão làm nức lòng triều đình cùng dân chúng. Hội nghị Diên Hồng mãi mãi là tấm gương sáng về lòng yêu nước nồng nàn và tinh thần đoàn kết chống kẻ thù xâm lược của nhân dân ta".', 38)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (314, N'Theo Dấu Chân Bác Hồ', N'd1c744c1.jpg', 50000, CAST(N'2024-05-02T13:48:09.067' AS DateTime), 1, N'LS', N'Cuốn sách “Theo dấu chân Bác Hồ” tuyển chọn một số bài viết của Tiến sĩ Phan Văn Hoàng về Chủ tịch Hồ Chí Minh. Bằng nguồn tài liệu phong phú từ nhiều phía, bằng lập luận khoa học rõ ràng, chắc chắn, ông đã phản bác một cách thuyết phục luận điểm của Tiến sĩ Lê Hữu Mục cho rằng “Nhật ký trong tù” không phải tác phẩm của Hồ Chủ tịch; góp phần làm rõ vì sao trong những năm 1942 – 1944, Bác đã “thành công trong việc thay đổi địa vị của mình từ một người tù trở thành một đồng minh” và được trả tự do. Những bài viết trong cuốn sách cũng góp phần phác họa chân dung của Hồ Chủ tịch – một lãnh tụ cách mạng luôn lấy “độc lập cho Tổ quốc tôi, tự do cho đồng bào tôi” là mục đích tối thượng; luôn mang trong mình lòng tự hào, tự tôn dân tộc; khiến những người ở bên kia chiến tuyến nể phục và kính trọng. Cuốn sách cũng giúp bạn đọc hiểu rõ hơn về nơi Bác Hồ đã xuống tàu để ra đi tìm đường cứu nước; về những mốc thời gian mà Sài Gòn – Gia Định mang tên lãnh tụ Hồ Chí Minh…', 30)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (315, N'Indian Givers - Những Món Quà Của Người Da Đỏ', N'6603a991.jpg', 230000, CAST(N'2024-05-02T13:49:52.787' AS DateTime), 1, N'TT', N'Tiểu thuyết về bộ tộc người da đỏ', 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (316, N'Thành Đoàn Cùng Quân Và Dân Sài Gòn - Gia Định Tham Gia Chiến Dịch Hồ Chí Minh', N'fd593e3a.jpg', 207000, CAST(N'2024-05-02T13:58:55.853' AS DateTime), 1, N'LS', N'Trong cuộc chiến tranh nhân dân cho đến ngày đại thắng 30/4/1975, Tuổi trẻ Sài Gòn - Gia Định luôn là một lực lượng cách mạng, là mũi xung kích đi đầu trên tất cả các mặt trận chính trị, quân sự, binh vận; trên khắp các chiến trường: rùng núi, nông thôn, đô thị; từ vùng giải phóng cho đến nổi dậy trong lòng địch tận hang ổ kẻ thù.

Trân trọng công lao xương máu của chiến sĩ, đồng bào, các tổ chức đoàn thể thanh niên, phát huy khí phách anh hùng 45 năm trước để xây dựng đất nước ta “Đàng hoàng hơn, to đẹp hơn”, nhân kỷ niệm 50 năm thực hiện Di chúc Chủ tịch Hồ Chí Minh (1969 - 2019), 70 năm ngày truyền thống Học sinh, sinh viên (9/1/1950 - 9/1/2020), 90 năm ngày thành lập Đảng Cộng sản Việt Nam (3/2/1930 - 3/2/2020) 45 năm Chiến dịch Hồ Chí Minh toàn thắng (1975 - 2020), Câu lạc bộ Truyền thống Thành Đoàn cùng Ban Thường vụ Thành Đoàn và Nhà xuất bản Trẻ thực hiện quyển THÀNH ĐOÀN CÙNG QUÂN DÂN SÀI GÒN - GIA ĐỊNH THAM GIA CHIẾN DỊCH HỒ CHÍ MINH.', 20)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (317, N'Nguyễn Thái Học (Bìa Cứng)', N'b18fdb1b.jpg', 59000, CAST(N'2024-05-02T13:59:47.737' AS DateTime), 1, N'LS', N'Cuốn sách này luôn mang lại giá trị như một tư liệu lịch sử và là một trong những ấn phẩm sớm nhất viết và tôn vinh một trong những gương mặt tiêu biểu nhất trong lịch sử đấu tranh giải phóng dân tộc Việt Nam', 15)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (318, N'Phụ Nữ Việt Nam - Những Khoảnh Khắc', N'e758c95d.jpg', 269000, CAST(N'2024-05-02T14:00:48.207' AS DateTime), 1, N'LS', N'Nhân dịp kỷ niệm 90 năm thành lập Hội liên hiệp Phụ nữ Việt Nam và ngày Phụ nữ Việt Nam (20/10/2020), Hội liên hiệp Phụ nữ Việt Nam xuất bản cuốn sách Phụ nữ Việt Nam- Những khoảnh khắc. Cuốn sách đã thể hiện được quá khứ hào hùng và hiện tại vinh quang của phụ nữ Việt Nam. Dù ở giai đoạn lịch sử nào, phụ nữ Việt Nam luôn luôn nỗ lực để khẳng định vai trò và vị thế của mình trên mọi lĩnh vực: văn hóa, xã hội, kinh tế, chính trị, an ninh, quốc phòng,… góp phần xây dựng đất nước ngày càng phát triển và hội nhập sâu rộng. Đây là một cuốn sách vô cùng ấn tượng được xuất bản bằng hình thức song ngữ Anh-Việt, kèm theo hình ảnh sống động, ghi lại những khoảnh khắc đẹp trong cuộc hành trình suốt 90 năm mà phụ nữ Việt Nam, Hội LHPN Việt Nam đã chung tay cùng cả nước tạo nên sức mạnh, niềm tin, tự nào và vị thế Việt Nam, để đất nước vững bước hội nhập với tư thế của một quốc gia bình yên và hạnh phúc.', 14)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (319, N'Đứa Trẻ Hiểu Chuyện Thường Không Có Kẹo Ăn', N'c6b0f7ba.jpg', 149000, CAST(N'2024-05-02T14:03:22.883' AS DateTime), 1, N'TTH', N'Đứa Trẻ Hiểu Chuyện Thường Không Có Kẹo Ăn
“Đứa trẻ hiểu chuyện thường không có kẹo ăn” – Cuốn sách dành cho những thời thơ ấu đầy vết thương.
Trên đời này có một điều rất kỳ diệu, đó là bậc phụ huynh nào cũng mong muốn con mình trở nên hoàn hảo theo một hình mẫu giống hệt nhau.
Lanh lẹ, khôn khéo, dễ thương, luôn nhìn cha mẹ với gương mặt tươi cười trong sáng.', 11)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (320, N'Lý Thuyết Trò Chơi', N'86326d7a.jpg', 116000, CAST(N'2024-05-02T14:40:07.783' AS DateTime), 1, N'TTH', N'Lý Thuyết Trò Chơi

Đời người giống như trò chơi, mỗi bước đều phải cân nhắc xem đi như thế nào, đi về đâu, phải kết hợp nhiều yếu tố lại chúng ta mới có thể đưa ra được lựa chọn. Mà trong quá trình chọn lựa này các yếu tố khiến ta phải cân nhắc và những đường đi khác nhau sẽ ảnh hưởng trực tiếp đến kết quả.

Cuốn sách Lý thuyết trò chơi là bách khoa toàn thư về tâm lý học, về tẩy não và chống lại tẩy não, thao túng và chống lại thao túng, thống trị và chống lại thống trị. Cuốn sách giới thiệu công thức chiến thắng cho những “trò chơi” đấu trí giữa người với người trong cuộc sống hằng ngày; phân tách các khái niệm lý thuyết trò chơi vốn mơ hồ trở thành ngôn ngữ dễ hiểu và kết nối liền mạch với nghệ thuật tâm lý học; cho phép bạn nắm vững những bí ẩn của trò chơi tâm lý trong thời gian ngắn nhất.
Những kỹ năng trong Lý thuyết trò chơi có thể giúp chúng ta đọc thấu hoạt động tâm lý người khác, và từ đó chiếm thế chủ động trong trò chơi đấu trí giữa những người xung quanh.
Những trích dẫn hay:
- Nếu coi một ván chơi như một trò chơi, mà trò chơi luôn luôn có thắng thua. Một bên thắng thì đồng nghĩa bên kia thất bại.
- Đằng sau những người chiến thắng lẫy lừng đều che giấu một nỗi khổ tâm và chua xót của kẻ thua cuộc.
Hãy coi xã hội này như một ván cờ, mà mỗi chúng ta đều là những kỳ thủ. Từng đường đi nước bước của ta đều tương ứng với việc đặt từng con cờ. Một kỳ thủ tinh tường cẩn thận sẽ không hấp tấp đánh cờ, họ thường thông qua việc suy đoán lẫn nhau, thậm chí tính kế để từng bước đi đều khống chế đối phương cho đến khi giành được thắng lợi cuối cùng. Mà thuyết trò chơi chính là cuốn sách giáo khoa dạy những kỳ thủ chúng ta nên đánh cờ như thế nào.', 10)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (321, N'Tâm Lý Học Tội Phạm - Phác Họa Chân Dung Kẻ Phạm Tội', N'4a4d9eaa.jpg', 100000, CAST(N'2024-05-02T14:41:28.637' AS DateTime), 1, N'TTH', N'TÂM LÝ HỌC TỘI PHẠM - PHÁC HỌA CHÂN DUNG KẺ PHẠM TỘI

Tội phạm, nhất là những vụ án mạng, luôn là một chủ đề thu hút sự quan tâm của công chúng, khơi gợi sự hiếu kỳ của bất cứ ai. Một khi đã bắt đầu theo dõi vụ án, hẳn bạn không thể không quan tâm tới kết cục, đặc biệt là cách thức và động cơ của kẻ sát nhân, từ những vụ án phạm vi hẹp cho đến những vụ án làm rúng động cả thế giới.

Lấy 36 vụ án CÓ THẬT kinh điển nhất trong hồ sơ tội phạm của FBI, “Tâm lý học tội phạm - phác họa chân dung kẻ phạm tội” mang đến cái nhìn toàn cảnh của các chuyên gia về chân dung tâm lý tội phạm. Trả lời cho câu hỏi: Làm thế nào phân tích được tâm lý và hành vi tội phạm, từ đó khôi phục sự thật thông qua các manh mối, từ hiện trường vụ án, thời gian, dấu tích,… để tìm ra kẻ sát nhân thực sự. 

Đằng sau máu và nước mắt là các câu chuyện rợn tóc gáy về tội ác, góc khuất xã hội và những màn đấu trí đầy gay cấn giữa điều tra viên và kẻ phạm tội. Trong số đó có những con quỷ ăn thịt người; những cô gái xinh đẹp nhưng xảo quyệt; và cả cách trả thù đầy man rợ của các nhà khoa học,… Một số đã sa vào lưới pháp luật ngay khi chúng vừa ra tay, nhưng cũng có những kẻ cứ vậy ngủ yên hơn hai mươi năm. 

Bằng giọng văn sắc bén, “Tâm lý học tội phạm - phác họa chân dung kẻ phạm tội” hứa hẹn dẫn dắt người đọc đi qua các cung bậc cảm xúc từ tò mò, ngạc nhiên đến sợ hãi, hoang mang tận cùng. Chúng ta sẽ lần tìm về quá khứ để từng bước gỡ những nút thắt chưa được giải, khiến ta "ngạt thở" đọc tới tận trang cuối cùng. 

Hy vọng cuốn sách sẽ giúp bạn có cái nhìn sâu sắc, rõ ràng hơn về bộ môn tâm lý học tội phạm và có thể rèn luyện thêm sự tư duy, nhạy bén.', 1)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (322, N'Thuật Thao Túng - Góc Tối Ẩn Sau Mỗi Câu Nói', N'e9c024c7.jpg', 90000, CAST(N'2024-05-02T14:44:17.183' AS DateTime), 1, N'TTH', N'Thuật Thao Túng
Bạn có muốn giành phần thắng cuối cùng trong các cuộc tranh luận?
Bạn có muốn dẹp đi bộ mặt kiêu ngạo của các đồng nghiệp xung quanh mình?
Bạn có muốn chứng minh rằng bạn đã đúng về mọi thứ?', 11)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (323, N'Thiên Tài Bên Trái, Kẻ Điên Bên Phải (Tái Bản 2021)', N'faafd024.jpg', 120000, CAST(N'2024-05-02T14:45:29.133' AS DateTime), 1, N'TTH', N'Thiên Tài Bên Trái, Kẻ Điên Bên Phải

NẾU MỘT NGÀY ANH THẤY TÔI ĐIÊN, THỰC RA CHÍNH LÀ ANH ĐIÊN ĐẤY!

Hỡi những con người đang oằn mình trong cuộc sống, bạn biết gì về thế giới của mình? Là vô vàn thứ lý thuyết được các bậc vĩ nhân kiểm chứng, là luật lệ, là cả nghìn thứ sự thật bọc trong cái lốt hiển nhiên, hay những triết lý cứng nhắc của cuộc đời?

Lại đây, vượt qua thứ nhận thức tẻ nhạt bị đóng kín bằng con mắt trần gian, khai mở toàn bộ suy nghĩ, để dòng máu trong bạn sục sôi trước những điều kỳ vĩ, phá vỡ mọi quy tắc. Thế giới sẽ gọi bạn là kẻ điên, nhưng vậy thì có sao? Ranh giới duy nhất giữa kẻ điên và thiên tài chẳng qua là một sợi chỉ mỏng manh: Thiên tài chứng minh được thế giới của mình, còn kẻ điên chưa kịp làm điều đó. Chọn trở thành một kẻ điên để vẫy vùng giữa nhân gian loạn thế hay khóa hết chúng lại, sống mãi một cuộc đời bình thường khiến bạn cảm thấy hạnh phúc hơn?

Thiên tài bên trái, kẻ điên bên phải là cuốn sách dành cho những người điên rồ, những kẻ gây rối, những người chống đối, những mảnh ghép hình tròn trong những ô vuông không vừa vặn… những người nhìn mọi thứ khác biệt, không quan tâm đến quy tắc. Bạn có thể đồng ý, có thể phản đối, có thể vinh danh hay lăng mạ họ, nhưng điều duy nhất bạn không thể làm là phủ nhận sự tồn tại của họ. Đó là những người luôn tạo ra sự thay đổi trong khi hầu hết con người chỉ sống rập khuôn như một cái máy. Đa số đều nghĩ họ thật điên rồ nhưng nếu nhìn ở góc khác, ta lại thấy họ thiên tài. Bởi chỉ những người đủ điên nghĩ rằng họ có thể thay đổi thế giới mới là những người làm được điều đó. 
Chào mừng đến với thế giới của những kẻ điên.', 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (324, N'Đại Dương Đen - Những Câu Chuyện Từ Thế Giới Của Trầm Cảm', N'33c21cf5.jpg', 170000, CAST(N'2024-05-02T14:47:54.700' AS DateTime), 1, N'TTH', N'Đại Dương Đen

“Tôi sợ những cơn của mình, chúng xâm chiếm não bộ tôi, nhấn chìm lý trí của tôi, chúng phơi bày sự đau đớn, cô đơn, nỗi sầu thảm suốt những năm tháng niên thiếu của tôi, sự ám ảnh của bạo lực, của lẻ loi, của tức giận vì chẳng được ai giúp đỡ. Trong những giấc mơ, tôi thét lên với mọi người, cố gắng diễn đạt sự sợ hãi và tuyệt vọng của mình, nhưng không ai hiểu.”', 17)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (325, N'Tâm Lý Học Về Tiền', N'93f62c44.jpg', 120000, CAST(N'2024-05-02T15:18:33.817' AS DateTime), 1, N'TTH', N'Tiền bạc có ở khắp mọi nơi, nó ảnh hưởng đến tất cả chúng ta, và khiến phần lớn chúng ta bối rối. Mọi người nghĩ về nó theo những cách hơi khác nhau một chút. Nó mang lại những bài học có thể được áp dụng tới rất nhiều lĩnh vực trong cuộc sống, như rủi ro, sự tự tin, và hạnh phúc. Rất ít chủ đề cung cấp một lăng kính phóng to đầy quyền lực giúp giải thích vì sao mọi người lại hành xử theo cách họ làm hơn là về tiền bạc. Đó mới là một trong những chương trình hoành tráng nhất trên thế giới.', 11)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (326, N'How Psychology Works - Hiểu Hết Về Tâm Lý Học', N'43824122.jpg', 120000, CAST(N'2024-05-02T15:19:26.033' AS DateTime), 1, N'TTH', N'MỘT TRONG NHỮNG CUỐN SÁCH MỞ KHÓA HỮU ÍCH NHẤT VỀ TƯ DUY, KÝ ỨC VÀ CẢM XÚC CỦA CON NGƯỜI!
Ám sợ là gì, ám sợ có thực sự đáng sợ không? Rối loạn tâm lý là gì, làm thế nào để thoát khỏi tình trạng suy nhược và xáo trộn đó? Trầm cảm là gì, vì sao con người hiện đại thường xuyên gặp và chống chọi với tình trạng u uất, mệt mỏi và tuyệt vọng này?', 8)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (327, N'Định Luật Murphy - Mọi Bí Mật Tâm Lý Thao Túng Cuộc Đời Bạn', N'df828588.jpg', 110000, CAST(N'2024-05-02T15:20:25.270' AS DateTime), 1, N'TTH', N'Định Luật Murphy – Mọi Bí Mật Tâm Lý Thao Túng Cuộc Đời Bạn
Nếu một điều tồi tệ có thể xảy ra, nó sẽ xảy ra!
Khi một món đồ quan trọng bị rơi, nó có xu hướng lăn tới dưới ngăn tủ nặng nhất.
Khi hai tay bạn cầm đầy đồ đạc, mũi bạn bắt đầu ngứa.', 5)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (328, N'Tâm Lý Học Thành Công', N'1bb57f1b.jpg', 120000, CAST(N'2024-05-02T15:22:04.807' AS DateTime), 1, N'TTH', N'Mindset - Tâm Lý Học Thành Công sẽ cho bạn thấy không chỉ khả năng và tài trí mới mang lại thành công cho chúng ta, mà phần lớn do cách tiếp cận mục tiêu bằng lối tư duy nào. Việc tán dương trí thông minh và khả năng của con bạn không hề nuôi dưỡng lòng tự trọng và dẫn đến thành tựu, mà thậm chí còn phương hại đến thành công sau này. Với tư duy đúng đắn, chúng ta có thể tạo động lực cho con cái và giúp chúng phát triển trong trường học, cũng như đạt được mục tiêu của bản thân trong cuộc sống và sự nghiệp. Dweck cho tất cả các bậc cha mẹ, giáo viên, CEO và vận động viên thấy một ý tưởng đơn giản về não bộ có thể tạo ra tình yêu học tập và sự kiên trì – cơ sở cho những thành tựu vĩ đại ở mọi lĩnh vực.', 12)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (329, N'Doraemon - Hoạt Hình Màu - Tập 1 (Tái Bản 2020)', N'da415aea.jpg', 49000, CAST(N'2024-05-02T15:28:42.480' AS DateTime), 1, N'TTHH', N'Truyền tranh về chú mèo máy đến từ tương lai', 40)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (330, N'Doraemon - Hoạt Hình Màu - Tập 2 (Tái Bản 2020)', N'acb92688.jpg', 49000, CAST(N'2024-05-02T15:29:23.280' AS DateTime), 1, N'TTHH', N'Bộ truyện được xem là huyền thoại của Nhật Bản. Nói về cuộc sống của một chú nhóc tên Nobita, tính tình hậu đậu và chú mèo máy Doremon đến từ thế kỉ 22 cùng những người bạn Xuka, Chaien, Xeko; để từ đó gây ra bao tiếng cười và rút ra những bài học ý nghĩa cho người xem !!', 40)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (331, N'Doraemon - Tuyển Tập Tranh Truyện Màu Kĩ Thuật Số - Tập 5', N'880df8b5.jpg', 49000, CAST(N'2024-05-02T15:30:02.317' AS DateTime), 1, N'TTHH', N'Bộ truyện được xem là huyền thoại của Nhật Bản. Nói về cuộc sống của một chú nhóc tên Nobita, tính tình hậu đậu và chú mèo máy Doremon đến từ thế kỉ 22 cùng những người bạn Xuka, Chaien, Xeko; để từ đó gây ra bao tiếng cười và rút ra những bài học ý nghĩa cho người xem !!', 40)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (333, N'Slam Dunk - Deluxe Edition - Tập 1', N'69bfbc58.jpg', 49000, CAST(N'2024-05-02T15:31:36.837' AS DateTime), 1, N'TTHH', N'Slam Dunk là một bộ truyện tranh dài 31 tập được sáng tác bởi tác giả Takehiko Inoue. Nó xoay quanh đội bóng rổ của trường cấp 3 Shohoku. Nhân vật chính của bộ manga này là Hanamichi Sakuragi, một kẻ giữ kỉ lục “T bình phương” (thất tình), có sức mạnh vượt trội và rất nóng máu, đứng đầu một nhóm học sinh chuyên quậy phá. Truyện được xem như bộ manga bán chạy nhất trong lịch sử của Nhật Bản với 121 triệu bản được bán ra, chỉ tính riêng tại quốc gia này', 41)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (334, N'Slam Dunk - Deluxe Edition - Tập 2', N'fcc2fc3b.jpg', 49000, CAST(N'2024-05-02T15:32:22.223' AS DateTime), 1, N'TTHH', N'Slam Dunk là một bộ truyện tranh dài 31 tập được sáng tác bởi tác giả Takehiko Inoue. Nó xoay quanh đội bóng rổ của trường cấp 3 Shohoku. Nhân vật chính của bộ manga này là Hanamichi Sakuragi, một kẻ giữ kỉ lục “T bình phương” (thất tình), có sức mạnh vượt trội và rất nóng máu, đứng đầu một nhóm học sinh chuyên quậy phá. Truyện được xem như bộ manga bán chạy nhất trong lịch sử của Nhật Bản với 121 triệu bản được bán ra, chỉ tính riêng tại quốc gia này', 41)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (335, N'Slam Dunk - Deluxe Edition - Tập 3', N'38237bbb.jpg', 49000, CAST(N'2024-05-02T15:32:42.787' AS DateTime), 1, N'TTHH', N'Slam Dunk là một bộ truyện tranh dài 31 tập được sáng tác bởi tác giả Takehiko Inoue. Nó xoay quanh đội bóng rổ của trường cấp 3 Shohoku. Nhân vật chính của bộ manga này là Hanamichi Sakuragi, một kẻ giữ kỉ lục “T bình phương” (thất tình), có sức mạnh vượt trội và rất nóng máu, đứng đầu một nhóm học sinh chuyên quậy phá. Truyện được xem như bộ manga bán chạy nhất trong lịch sử của Nhật Bản với 121 triệu bản được bán ra, chỉ tính riêng tại quốc gia này', 41)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (336, N'Slam Dunk - Deluxe Edition - Tập 4', N'5363a7a1.jpg', 49000, CAST(N'2024-05-02T15:33:05.977' AS DateTime), 1, N'TTHH', N'Slam Dunk là một bộ truyện tranh dài 31 tập được sáng tác bởi tác giả Takehiko Inoue. Nó xoay quanh đội bóng rổ của trường cấp 3 Shohoku. Nhân vật chính của bộ manga này là Hanamichi Sakuragi, một kẻ giữ kỉ lục “T bình phương” (thất tình), có sức mạnh vượt trội và rất nóng máu, đứng đầu một nhóm học sinh chuyên quậy phá. Truyện được xem như bộ manga bán chạy nhất trong lịch sử của Nhật Bản với 121 triệu bản được bán ra, chỉ tính riêng tại quốc gia này', 41)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (337, N'Bộ SGK Lớp 1', N'd7a0a2bb.jpg', 120000, CAST(N'2024-05-02T15:34:06.607' AS DateTime), 1, N'SGK', N'Bộ sách giáo khoa lớp 1 bao gồm : 
1. Sách giáo khoa lớp 1 môn Toán
2. Sách giáo khoa lớp 1 môn Đạo Đức
3. Sách giáo khoa lớp 1 môn Tự nhiên và xã hội
4. Sách giáo khoa lớp 1 môn Âm nhạc
5. Sách giáo khoa lớp 1 môn Mỹ thuật
và một số vở rèn chữ', 44)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (338, N'Bộ SGK Lớp 2', N'9d0cf03a.jpg', 120000, CAST(N'2024-05-02T15:34:33.923' AS DateTime), 1, N'SGK', N'Bộ sách giáo khoa lớp 2 bao gồm một loạt các quyển sách hỗ trợ học tập cho học sinh lớp 2. Dưới đây là danh sách các quyển sách trong bộ sách giáo khoa lớp 2:

Tiếng Việt 2: Bao gồm 3 quyển, được xuất bản bởi Nhà xuất bản Giáo dục Việt Nam và Nhà xuất bản Đại học Sư phạm Thành phố Hồ Chí Minh
Toán 2: Cũng bao gồm 3 quyển, được xuất bản bởi Nhà xuất bản Giáo dục Việt Nam và Nhà xuất bản Đại học Sư phạm
Tự nhiên và Xã hội 2: Gồm 3 quyển.
Hoạt động trải nghiệm 2: Bao gồm 3 quyển.
Giáo dục thể chất 2: Cũng gồm 3 quyển.
Đạo đức 2: Bao gồm 3 quyển.
Âm nhạc 2: Gồm 3 quyển.
Mĩ thuật 2: Bao gồm 3 quyển.', 44)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (339, N'Bộ SGK Lớp 3', N'726663c4.jpg', 120000, CAST(N'2024-05-02T15:34:59.100' AS DateTime), 1, N'SGK', N'Bộ sách giáo khoa lớp 3 bao gồm 11 môn học và hoạt động giáo dục. Dưới đây là danh sách các môn học và sách tương ứng:

Tiếng Việt:
Tập 1: Bùi Mạnh Hùng (Tổng Chủ biên), Trần Thị Hiền Lương (Chủ biên), Đỗ Hồng Dương, Nguyễn Thị Kim Oanh, Trần Kim Phượng.
Tập 2: Bùi Mạnh Hùng (Tổng Chủ biên), Trần Thị Hiền Lương (Chủ biên), Lê Thị Lan Anh, Nguyễn Lê Hằng, Vũ Thị Lan, Đặng Thị Hảo Tâm.
Toán:
Hà Huy Khoái (Tổng Chủ biên), Lê Anh Vinh (Chủ biên), Nguyễn Áng, Vũ Văn Dương, Nguyễn Minh Hải, Hoàng Quế Hường, Bùi Bá Mạnh.
Trần Nam Dũng (Tổng Chủ biên), Khúc Thành Chính (Chủ biên), Đinh Thị Xuân Dung, Nguyễn Kính Đức, Đinh Thị Kim Lan, Huỳnh Thị Kim Trang.
Đỗ Đức Thái (Tổng Chủ biên), Đỗ Tiến Đạt (Chủ biên), Nguyễn Hoài Anh, Trần Thuý Ngà, Nguyễn Thị Thanh Sơn.
Trần Diên Hiển (Chủ biên), Nguyễn Đình Khuê, Đào Thái Lai, Nguyễn Thị Kiều Oanh, Phạm Thanh Tâm, Nguyễn Thúy Vân.
Đạo đức:
Nguyễn Thị Toan (Tổng Chủ biên), Trần Thành Nam (Chủ biên), Nguyễn Thị Hoàng Anh, Nguyễn Ngọc Dung, Nguyễn Thị Việt Hà.
Huỳnh Văn Sơn (Tổng Chủ biên), Mai Mỹ Hạnh, Phạm Quỳnh (đồng Chủ biên), Lê Quỳnh Chi, Trần Thị Thùy Dung, Nguyễn Thị Mỹ Hạnh, Nguyễn Thị Vân Hương, Giang Thiên Vũ.
Nguyễn Thị Mỹ Lộc (Tổng Chủ biên), Đỗ Tất Thiên (Chủ biên), Nguyễn Chung Hải, Ngô Vũ Thu Hằng, Nguyễn Thanh Huân, Huỳnh Tông Quyền, Nguyễn Thị Hàn Thy.
Tự nhiên và xã hội, Công nghệ, Giáo dục thể chất, Âm nhạc, và Hoạt động trải nghiệm cũng có sách tương ứng.
Tiếng Anh cũng được phát triển với 10 cuốn sách.', 44)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (340, N'Bộ SGK Lớp 4', N'c56e60f5.jpg', 120000, CAST(N'2024-05-02T15:35:31.280' AS DateTime), 1, N'SGK', N'Bộ sách giáo khoa lớp 4 bao gồm nhiều môn học cơ bản. Dưới đây là danh sách các môn học và số lượng quyển sách tương ứng:

Toán: Bao gồm 1 quyển sách.
Tiếng Việt: Bao gồm 2 quyển sách (Tập 1 và Tập 2).
Tiếng Anh: Bao gồm 1 quyển sách.
Khoa học: Bao gồm 1 quyển sách.
Lịch sử và Địa lý: Bao gồm 1 quyển sách.
Đạo đức: Bao gồm 1 quyển sách.
Âm nhạc: Bao gồm 1 quyển sách.
Công nghệ: Bao gồm 1 quyển sách.', 44)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (341, N'Bộ SGK Lớp 5', N'8ea9f8c2.jpg', 120000, CAST(N'2024-05-02T15:35:57.437' AS DateTime), 1, N'SGK', N'Bộ sách giáo khoa lớp 5 bao gồm nhiều môn học khác nhau. Dưới đây là danh sách các môn học và sách giáo khoa tương ứng:

Toán: Có nhiều tùy chọn sách giáo khoa toán lớp 5, bao gồm:
Toán 5 của Hà Huy Khoái, Lê Anh Vinh, và các tác giả khác, được xuất bản bởi Nhà xuất bản Giáo dục Việt Nam.
Toán 5 của Trần Nam Dũng, Khúc Thành Chính, và đồng tác giả, xuất bản bởi Nhà xuất bản Giáo dục Việt Nam.
Toán 5 của Đỗ Đức Thái, Đỗ Tiến Đạt, và đồng tác giả, xuất bản bởi Công ty Vepic và Nhà xuất bản Đại học Sư phạm.
Toán 5 của Trần Diên Hiển, Nguyễn Đình Khuê, và đồng tác giả, xuất bản bởi Công ty sách Thạch Thảo - ABA và Nhà xuất bản Đại học Vinh.
Đạo đức: Có nhiều tùy chọn sách giáo khoa đạo đức lớp 5, bao gồm:
Đạo đức 5 của Nguyễn Thị Toan, Trần Thành Nam, và đồng tác giả, xuất bản bởi Nhà xuất bản Giáo dục Việt Nam.
Đạo đức 5 của Huỳnh Văn Sơn, Mai Mỹ Hạnh, và đồng tác giả, xuất bản bởi Nhà xuất bản Giáo dục Việt Nam.
Đạo đức 5 của Nguyễn Thị Mỹ Lộc, Đỗ Tất Thiên, và đồng tác giả, xuất bản bởi Công ty Vepic và Nhà xuất bản Đại học Sư phạm Thành phố Hồ Chí Minh.
Lịch sử và Địa lí: Có nhiều tùy chọn sách giáo khoa lịch sử và địa lí lớp 5, bao gồm:
Lịch sử và Địa lí 5 của Vũ Minh Giang, Nghiêm Đình Vỳ, và đồng tác giả (phần Lịch sử), Đào Ngọc Hùng và đồng tác giả (phần Địa lí), xuất bản bởi Nhà xuất bản Giáo dục Việt Nam.
Lịch sử và Địa lí 5 của Nguyễn Trà My, Phạm Đỗ Văn Trung, và đồng tác giả, xuất bản bởi Nhà xuất bản Giáo dục Việt Nam.
Lịch sử và Địa lí 5 của Đỗ Thanh Bình, Nguyễn Văn Dũng, và đồng tác giả (phần Lịch sử), Lê Thông và đồng tác giả (phần Địa lí), xuất bản bởi Nhà xuất bản Giáo dục Việt Nam.', 44)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (342, N'Bộ SGK Lớp 6', N'b55a04c3.jpg', 140000, CAST(N'2024-05-02T15:36:25.390' AS DateTime), 1, N'SGK', N'Bộ sách giáo khoa lớp 6 bao gồm nhiều môn học, và tùy theo chương trình giáo dục của từng quốc gia hoặc khu vực. Dưới đây là danh sách các môn học thường có trong bộ sách giáo khoa lớp 6:

Ngữ Văn: Bao gồm các nội dung về văn học, ngữ pháp, và viết văn.
Toán: Tập trung vào các kiến thức toán học cơ bản như số học, hình học, đại số, và tỷ lệ.
Vật Lý: Nắm vững kiến thức về vật lý, bao gồm các khái niệm về cơ học, nhiệt độ, ánh sáng, và âm thanh.
Sinh Học: Tìm hiểu về sự sống, cấu trúc của các hệ cơ thể, và môi trường sống.
Lịch Sử và Địa Lý: Khám phá lịch sử và địa lý của các quốc gia, vùng lãnh thổ, và dân tộc.
Công Nghệ: Học về công nghệ thông tin, máy tính, và ứng dụng công nghệ.
Âm Nhạc và Mĩ Thuật: Tìm hiểu về nghệ thuật âm nhạc và hình ảnh.
Giáo Dục Công Dân: Nắm vững kiến thức về quyền và nghĩa vụ của công dân.', 44)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (343, N'Bộ SGK Lớp 7', N'369459c3.jpg', 140000, CAST(N'2024-05-02T15:36:45.443' AS DateTime), 1, N'SGK', N'Bộ sách giáo khoa lớp 7 mới năm 2023 - 2024 gồm đầy đủ các môn học của **3 bộ sách**:

1. **Bộ sách Cánh Diều**: Bộ sách này bao gồm các môn học như **Ngữ Văn**, **Lịch Sử**, **Địa Lý**, **Âm Nhạc**, và **Mĩ Thuật**¹.
2. **Bộ sách Chân Trời Sáng Tạo**: Bộ sách này bao gồm các môn học như **Toán**, **Vật Lý**, **Công Nghệ**, và **GDCD**¹.
3. **Bộ sách Kết Nối Tri Thức Với Cuộc Sống**: Bộ sách này bao gồm các môn học như **Tiếng Anh**, **Khoa Học Tự Nhiên**, và **Tin Học**¹.', 44)
GO
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (344, N'Bộ SGK Lớp 8', N'6ba84e12.jpg', 140000, CAST(N'2024-05-02T15:37:11.560' AS DateTime), 1, N'SGK', N'Bộ sách giáo khoa lớp 8 có 11 môn học của nhà xuất bản Giáo dục Việt Nam: 
Toán
Ngữ văn
Vật lí
Hóa học
Sinh học
Công nghệ
Lịch sử, Địa lí
Giáo dục công dân
Âm nhạc mĩ thuật
Tiếng Anh.', 44)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (345, N'Bộ SGK Lớp 9', N'5cf76b06.jpg', 140000, CAST(N'2024-05-02T15:37:43.370' AS DateTime), 1, N'SGK', N'Bộ sách lớp 9 năm học 2023 – 2024 là bộ sách giáo khoa được biên soạn bởi nhóm tác giả Nhà xuất bản giáo dục Việt Nam. 
Bao gồm đầy đủ 12 môn học: 
Toán
Ngữ văn
Vật lí
Hóa học
Sinh học
Công nghệ
Lịch sử
Địa lí
Giáo dục công dân,
Âm nhạc và Mĩ thuật
Tiếng Anh.', 44)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (346, N'Bộ SGK Lớp 10', N'1ebe4b4a.jpg', 150000, CAST(N'2024-05-02T15:38:18.270' AS DateTime), 1, N'SGK', N'Bộ sách giáo khoa Cánh diều lớp 10 bao gồm đầy đủ 15 môn học : 
Ngữ văn
Toán
Tiếng Anh
Giáo dục thể chất
Giáo dục quốc phòng và an ninh
Lịch sử
Địa lí
Giáo dục kinh tế và pháp luật
Vật lí
Hoá học
Sinh học
Công nghệ
Tin học
Âm nhạc
Hoạt động trải nghiệm
hướng nghiệp.', 44)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (347, N'Bộ SGK Lớp 11', N'58883914.jpg', 150000, CAST(N'2024-05-02T15:38:40.553' AS DateTime), 1, N'SGK', N'Bộ SGK lớp 11 bao gồm 13 quyển sách cùng bài tập : 
Đại số & Giải tích: Bao gồm nội dung về đại số và giải tích.
Hình học: Chứa kiến thức về hình học.
Vật lí: Bao gồm kiến thức về vật lý.
Hóa học: Chứa kiến thức về hóa học.
Sinh học: Bao gồm nội dung về sinh học.
Ngữ văn: Sách giáo khoa ngữ văn được chia thành hai tập.
Lịch sử: Bao gồm kiến thức về lịch sử.', 44)
INSERT [dbo].[Books] ([Id], [Name], [Image], [Price], [Createdate], [Status], [Categoryid], [Discriptions], [Authorsid]) VALUES (348, N'Bộ SGK Lớp 12', N'c710a73a.jpg', 150000, CAST(N'2024-05-02T15:38:58.067' AS DateTime), 1, N'SGK', N'Bộ sách giáo khoa lớp 12 bao gồm : 
Bộ sách giáo khoa lớp 12 của Nhà xuất bản Giáo dục Việt Nam bao gồm tổng cộng 25 quyển. Trong đó, có 14 quyển sách giáo khoa và 11 quyển bài tập kèm theo. Dưới đây là danh sách các môn học và số lượng sách trong bộ giáo khoa lớp 12:

Giải Tích 12: 1 quyển
Hình Học 12: 1 quyển
Vật Lý 12: 1 quyển
Hóa Học 12: 1 quyển
Sinh Học 12: 1 quyển
Ngữ Văn 12 - Tập 1: 1 quyển
Ngữ Văn 12 - Tập 2: 1 quyển
Lịch Sử 12: 1 quyển
Địa Lý 12: 1 quyển
Tin Học 12: 1 quyển
Công Nghệ 12: 1 quyển
Giáo Dục Công Dân 12: 1 quyển
Tiếng Anh 12: 1 quyển
Giáo Dục Quốc Phòng - An Ninh: 1 quyển
Bài Tập Giải Tích 12: 1 quyển
Bài Tập Hình Học 12: 1 quyển
Bài Tập Vật Lý 12: 1 quyển
Bài Tập Hóa Học 12: 1 quyển
Bài Tập Tin Học 12: 1 quyển
Bài Tập Ngữ Văn 12 - Tập 1: 1 quyển
Bài Tập Ngữ Văn 12 - Tập 2: 1 quyển
Bài Tập Tiếng Anh 12: 1 quyển
Bài Tập Sinh Học 12: 1 quyển
Bài Tập Lịch Sử 12: 1 quyển
Bài Tập Địa Lý 12: 1 quyển', 44)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Cartdetails] ON 

INSERT [dbo].[Cartdetails] ([Id], [Cartid], [Bookid], [Price], [Quantity]) VALUES (148, 6, 10, 77100, 1)
INSERT [dbo].[Cartdetails] ([Id], [Cartid], [Bookid], [Price], [Quantity]) VALUES (149, 6, 11, 57100, 1)
INSERT [dbo].[Cartdetails] ([Id], [Cartid], [Bookid], [Price], [Quantity]) VALUES (10216, 2, 111, 78000, 1)
INSERT [dbo].[Cartdetails] ([Id], [Cartid], [Bookid], [Price], [Quantity]) VALUES (10217, 2, 1, 157000, 1)
INSERT [dbo].[Cartdetails] ([Id], [Cartid], [Bookid], [Price], [Quantity]) VALUES (10218, 2, 109, 55000, 1)
INSERT [dbo].[Cartdetails] ([Id], [Cartid], [Bookid], [Price], [Quantity]) VALUES (10225, 8, 111, 78000, 2)
INSERT [dbo].[Cartdetails] ([Id], [Cartid], [Bookid], [Price], [Quantity]) VALUES (10230, 1, 325, 120000, 1)
INSERT [dbo].[Cartdetails] ([Id], [Cartid], [Bookid], [Price], [Quantity]) VALUES (10231, 1, 109, 55000, 1)
INSERT [dbo].[Cartdetails] ([Id], [Cartid], [Bookid], [Price], [Quantity]) VALUES (10232, 5, 109, 55000, 1)
SET IDENTITY_INSERT [dbo].[Cartdetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [Userid], [Createdate]) VALUES (1, N'linh', CAST(N'2023-08-13' AS Date))
INSERT [dbo].[Carts] ([Id], [Userid], [Createdate]) VALUES (2, N'hduc', CAST(N'2023-08-13' AS Date))
INSERT [dbo].[Carts] ([Id], [Userid], [Createdate]) VALUES (3, N'tien', CAST(N'2023-08-23' AS Date))
INSERT [dbo].[Carts] ([Id], [Userid], [Createdate]) VALUES (5, N'tiennv', CAST(N'2023-08-24' AS Date))
INSERT [dbo].[Carts] ([Id], [Userid], [Createdate]) VALUES (6, N'tienth', CAST(N'2023-08-30' AS Date))
INSERT [dbo].[Carts] ([Id], [Userid], [Createdate]) VALUES (7, N'khanh', CAST(N'2023-11-29' AS Date))
INSERT [dbo].[Carts] ([Id], [Userid], [Createdate]) VALUES (8, N'admin', CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Carts] ([Id], [Userid], [Createdate]) VALUES (9, N'abc', CAST(N'2024-01-14' AS Date))
INSERT [dbo].[Carts] ([Id], [Userid], [Createdate]) VALUES (10, N'phat', CAST(N'2024-01-18' AS Date))
INSERT [dbo].[Carts] ([Id], [Userid], [Createdate]) VALUES (11, N'Phatlt', CAST(N'2024-05-02' AS Date))
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'CTHD', N'CƯỜNG THỦ HÀO ĐOẠT')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'DTQT', N'ĐÔ THỊ - QUAN TRƯỜNG')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'HD', N'HIỆN ĐẠI')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'KHTH', N'KIẾM HIỆP - TIÊN HIỆP')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'LS', N'LỊCH SỬ')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'QS', N'QUÂN SỰ')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'SGK', N'SÁCH GIÁO KHOA')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'SU', N'SỦNG')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'TCTL', N'TRUYỆN CƯỜI TIẾU LÂM')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'TMKD', N'TRUYỆN MA KINH DỊ')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'TNNT', N'TRUYỆN NGẮN NGÔN TÌNH')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'TT', N'TIỂU THUYẾT')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'TTH', N'TÂM LÝ HỌC')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'TTHH', N'TRUYỆN TRANH - HOẠT HÌNH')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'TTHS', N'TRINH THÁM HÌNH SỰ')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'VD', N'VÕNG DU')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'VHNN', N'VĂN HỌC NƯỚI NGOÀI')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'VHVN', N'VĂN HỌC VIỆT NAM')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'XK', N' XUYÊN KHÔNG')
GO
SET IDENTITY_INSERT [dbo].[Discounts] ON 

INSERT [dbo].[Discounts] ([id], [bookid], [discount], [startdate], [enddate]) VALUES (27, 310, 10, CAST(N'2024-04-30' AS Date), CAST(N'2024-05-05' AS Date))
INSERT [dbo].[Discounts] ([id], [bookid], [discount], [startdate], [enddate]) VALUES (28, 311, 10, CAST(N'2024-04-30' AS Date), CAST(N'2024-05-05' AS Date))
INSERT [dbo].[Discounts] ([id], [bookid], [discount], [startdate], [enddate]) VALUES (29, 312, 10, CAST(N'2024-04-30' AS Date), CAST(N'2024-05-05' AS Date))
INSERT [dbo].[Discounts] ([id], [bookid], [discount], [startdate], [enddate]) VALUES (30, 314, 10, CAST(N'2024-04-30' AS Date), CAST(N'2024-05-05' AS Date))
INSERT [dbo].[Discounts] ([id], [bookid], [discount], [startdate], [enddate]) VALUES (31, 316, 10, CAST(N'2024-04-30' AS Date), CAST(N'2024-05-05' AS Date))
SET IDENTITY_INSERT [dbo].[Discounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Evaluates] ON 

INSERT [dbo].[Evaluates] ([Id], [Userid], [Bookid], [Comment], [Star], [CommentDate]) VALUES (4, N'hduc', 12, N'sách hay', 5, CAST(N'2023-12-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Evaluates] ([Id], [Userid], [Bookid], [Comment], [Star], [CommentDate]) VALUES (5, N'hduc', 19, N'hhh', 5, CAST(N'2023-12-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Evaluates] ([Id], [Userid], [Bookid], [Comment], [Star], [CommentDate]) VALUES (7, N'khanh', 19, N'gggg', 3, CAST(N'2023-12-02T15:09:00.000' AS DateTime))
INSERT [dbo].[Evaluates] ([Id], [Userid], [Bookid], [Comment], [Star], [CommentDate]) VALUES (8, N'hduc', 11, N'tốt', 5, CAST(N'2023-12-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Evaluates] ([Id], [Userid], [Bookid], [Comment], [Star], [CommentDate]) VALUES (11, N'tienth', 19, N'tệ', 3, CAST(N'2023-12-05T23:16:10.570' AS DateTime))
SET IDENTITY_INSERT [dbo].[Evaluates] OFF
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (34, N'linh', 15, CAST(N'2023-08-25' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (47, N'linh', 19, CAST(N'2023-08-25' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (91, N'tiennv', 12, CAST(N'2023-08-30' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (92, N'tiennv', 18, CAST(N'2023-08-30' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (93, N'tienth', 1, CAST(N'2023-08-30' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (94, N'tienth', 9, CAST(N'2023-08-30' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10106, N'hduc', 109, CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10107, N'hduc', 114, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10108, N'hduc', 116, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10109, N'hduc', 1, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10110, N'hduc', 52, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10111, N'hduc', 49, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10112, N'hduc', 50, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10113, N'hduc', 48, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10114, N'hduc', 45, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10115, N'hduc', 44, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10116, N'hduc', 46, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10117, N'hduc', 23, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10118, N'hduc', 24, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10119, N'hduc', 25, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10121, N'hduc', 20, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10122, N'hduc', 21, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10123, N'hduc', 19, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10124, N'hduc', 54, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10125, N'hduc', 108, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10126, N'hduc', 106, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10127, N'hduc', 107, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10128, N'hduc', 9, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10129, N'hduc', 10, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10130, N'hduc', 102, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10131, N'hduc', 104, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10132, N'hduc', 105, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10133, N'hduc', 99, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10134, N'hduc', 101, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10135, N'hduc', 98, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10136, N'hduc', 103, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10137, N'abc', 113, CAST(N'2024-01-14' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10138, N'linh', 110, CAST(N'2024-03-03' AS Date))
INSERT [dbo].[Favorites] ([Id], [Userid], [Bookid], [Likedate]) VALUES (10140, N'admin', 306, CAST(N'2024-05-02' AS Date))
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (1, 1, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (2, 1, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (3, 1, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (30, 9, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (31, 9, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (32, 9, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (33, 10, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (34, 10, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (35, 10, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (36, 11, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (37, 11, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (38, 11, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (39, 12, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (40, 12, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (41, 12, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (42, 13, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (43, 13, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (44, 13, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (45, 14, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (46, 14, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (47, 14, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (48, 15, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (49, 15, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (50, 15, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (51, 16, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (52, 16, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (53, 16, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (54, 17, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (55, 17, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (56, 17, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (57, 18, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (58, 18, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (59, 18, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (60, 21, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (61, 21, N'')
INSERT [dbo].[Images] ([Id], [Bookid], [Link]) VALUES (62, 21, N'')
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[Import] ON 

INSERT [dbo].[Import] ([Id], [Bookid], [Quantity], [Adddate]) VALUES (1, 9, 5, CAST(N'2023-12-04T15:01:24.423' AS DateTime))
INSERT [dbo].[Import] ([Id], [Bookid], [Quantity], [Adddate]) VALUES (2, 10, 2, CAST(N'2023-12-04T15:02:24.423' AS DateTime))
INSERT [dbo].[Import] ([Id], [Bookid], [Quantity], [Adddate]) VALUES (3, 11, 2, CAST(N'2023-12-04T15:03:24.423' AS DateTime))
SET IDENTITY_INSERT [dbo].[Import] OFF
GO
SET IDENTITY_INSERT [dbo].[Proofreads] ON 

INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (1, 1, N'pham-nhan-truong-sinh-tien-dao-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (2, 1, N'pham-nhan-truong-sinh-tien-dao-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (3, 1, N'pham-nhan-truong-sinh-tien-dao-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (4, 1, N'pham-nhan-truong-sinh-tien-dao-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (5, 9, N'tien-lo-yen-tran-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (6, 9, N'tien-lo-yen-tran-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (7, 9, N'tien-lo-yen-tran-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (8, 9, N'tien-lo-yen-tran-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (9, 10, N'huyen-mon-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (11, 10, N'huyen-mon-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (12, 10, N'huyen-mon-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (13, 10, N'huyen-mon-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (14, 11, N'diet-van-do-luc-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (15, 11, N'diet-van-do-luc-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (16, 11, N'diet-van-do-luc-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (17, 11, N'diet-van-do-luc-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (18, 13, N'vo-dich-thien-de-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (19, 13, N'vo-dich-thien-de-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (20, 13, N'vo-dich-thien-de-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (21, 13, N'vo-dich-thien-de-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (22, 18, N'tien-gia-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (23, 18, N'tien-gia-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (24, 18, N'tien-gia-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (25, 18, N'tien-gia-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (26, 24, N'Chanh-mat-ong-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (27, 24, N'Chanh-mat-ong-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (28, 24, N'Chanh-mat-ong-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (29, 24, N'Chanh-mat-ong-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (30, 23, N'luan-ve-dai-chien-luoc-1.png')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (31, 23, N'luan-ve-dai-chien-luoc-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (32, 23, N'luan-ve-dai-chien-luoc-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (33, 23, N'luan-ve-dai-chien-luoc-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (34, 25, N'the-xac-va-tam-hon-2.png')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (35, 25, N'the-xac-va-tam-hon-1.png')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (36, 25, N'the-xac-va-tam-hon-3.png')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (37, 25, N'the-xac-va-tam-hon-4.png')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (38, 25, N'the-xac-va-tam-hon-5.png')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (39, 38, N'cam-khe-di-han-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (40, 38, N'cam-khe-di-han-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (41, 38, N'cam-khe-di-han-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (42, 38, N'cam-khe-di-han-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (43, 39, N'vinh-an-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (44, 39, N'vinh-an-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (45, 39, N'vinh-an-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (46, 39, N'vinh-an-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (47, 42, N'Nuoi-Duong-Bao-Vuong-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (48, 42, N'Nuoi-Duong-Bao-Vuong-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (49, 42, N'Nuoi-Duong-Bao-Vuong-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (50, 42, N'Nuoi-Duong-Bao-Vuong-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (51, 47, N'Buong-Gian-Than-Cua-Tram-Ra-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (52, 47, N'Buong-Gian-Than-Cua-Tram-Ra-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (53, 47, N'Buong-Gian-Than-Cua-Tram-Ra-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (54, 47, N'Buong-Gian-Than-Cua-Tram-Ra-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (55, 41, N'dai-duong-hao-dai-ca-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (56, 41, N'dai-duong-hao-dai-ca-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (57, 41, N'dai-duong-hao-dai-ca-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (58, 41, N'dai-duong-hao-dai-ca-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (59, 46, N'Ga-Cho-Lao-Nam-Nhan-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (60, 46, N'Ga-Cho-Lao-Nam-Nhan-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (61, 46, N'Ga-Cho-Lao-Nam-Nhan-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (62, 46, N'Ga-Cho-Lao-Nam-Nhan-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (63, 67, N'Gan-Ket-Ben-Em-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (64, 67, N'Gan-Ket-Ben-Em-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (65, 67, N'Gan-Ket-Ben-Em-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (66, 67, N'Gan-Ket-Ben-Em-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (67, 71, N'Khi-Anh-Gap-Em-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (68, 71, N'Khi-Anh-Gap-Em-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (69, 71, N'Khi-Anh-Gap-Em-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (70, 71, N'Khi-Anh-Gap-Em-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (71, 60, N'Song-Lai-De-Chuoc-Loi-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (72, 60, N'Song-Lai-De-Chuoc-Loi-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (73, 60, N'Song-Lai-De-Chuoc-Loi-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (74, 60, N'Song-Lai-De-Chuoc-Loi-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (75, 50, N'Tieu-on-nhu-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (76, 50, N'Tieu-on-nhu-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (77, 50, N'Tieu-on-nhu-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (78, 50, N'Tieu-on-nhu-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (79, 51, N'a-kieu-hom-nay-dau-thai-sao-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (80, 51, N'a-kieu-hom-nay-dau-thai-sao-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (81, 51, N'a-kieu-hom-nay-dau-thai-sao-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (82, 51, N'a-kieu-hom-nay-dau-thai-sao-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (83, 73, N'Doi-Dich-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (84, 73, N'Doi-Dich-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (85, 73, N'Doi-Dich-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (86, 73, N'Doi-Dich-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (87, 72, N'Hương Sắc Khuynh Thành_1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (88, 72, N'Hương Sắc Khuynh Thành_2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (89, 72, N'Hương Sắc Khuynh Thành_3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (90, 72, N'Hương Sắc Khuynh Thành_4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (91, 84, N'Món Nợ Ngọt Ngào_1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (92, 84, N'Món Nợ Ngọt Ngào_2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (93, 84, N'Món Nợ Ngọt Ngào_3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (94, 84, N'Món Nợ Ngọt Ngào_4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (95, 87, N'Mướn Chồng_1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (96, 87, N'Mướn Chồng_2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (97, 87, N'Mướn Chồng_3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (98, 87, N'Mướn Chồng_4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (99, 88, N'Nước Mắt Của Mưa_1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (100, 88, N'Nước Mắt Của Mưa_2.jpg')
GO
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (101, 88, N'Nước Mắt Của Mưa_3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (102, 88, N'Nước Mắt Của Mưa_4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (103, 108, N'Bí Mật Chiến Tranh Điệp Viên Từ Israel Tới_1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (104, 108, N'Bí Mật Chiến Tranh Điệp Viên Từ Israel Tới_2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (105, 108, N'Bí Mật Chiến Tranh Điệp Viên Từ Israel Tới_3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (106, 108, N'Bí Mật Chiến Tranh Điệp Viên Từ Israel Tới_4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (107, 96, N'Giang Sơn Như Thử Đa Kiêu_1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (108, 96, N'Giang Sơn Như Thử Đa Kiêu_2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (109, 96, N'Giang Sơn Như Thử Đa Kiêu_3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (110, 96, N'Giang Sơn Như Thử Đa Kiêu_4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (111, 101, N'Đại Đường Cuồng Sĩ_1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (112, 101, N'Đại Đường Cuồng Sĩ_2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (113, 101, N'Đại Đường Cuồng Sĩ_3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (114, 101, N'Đại Đường Cuồng Sĩ_4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (115, 93, N'Phong Lưu_1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (116, 93, N'Phong Lưu_2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (117, 93, N'Phong Lưu_3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (118, 93, N'Phong Lưu_4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (119, 107, N'Hitler và Lò thiêu sống dân Do Thái_1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (120, 107, N'Hitler và Lò thiêu sống dân Do Thái_2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (121, 107, N'Hitler và Lò thiêu sống dân Do Thái_3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (122, 107, N'Hitler và Lò thiêu sống dân Do Thái_4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (123, 126, N'phong-toa-1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (124, 126, N'phong-toa-2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (125, 126, N'phong-toa-3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (126, 126, N'phong-toa-4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (127, 126, N'phong-toa-5.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (128, 317, N'7c1ed3ce.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (129, 317, N'b7599ba.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (130, 317, N'6d3b73d4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (131, 306, N'5530939.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (132, 306, N'9a03c451.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (133, 306, N'9a03c451.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (137, 311, N'e82b160b.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (138, 311, N'2d2ff249.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (139, 311, N'7819110a.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (141, 314, N'4025ab31.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (142, 314, N'53f95eab.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (143, 314, N'3636cd90.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (145, 315, N'264dcd83.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (146, 315, N'fb5db834.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (148, 315, N'6065a017.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (149, 316, N'40fac487.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (150, 316, N'84a56e26.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (151, 316, N'24eed65d.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (152, 319, N'858a59a4.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (156, 320, N'f783b03.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (157, 320, N'565c50cb.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (158, 320, N'a98a6b68.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (159, 321, N'5f90709a.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (160, 321, N'd6711101.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (161, 321, N'c515145d.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (162, 322, N'3facfd53.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (163, 322, N'a578d259.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (164, 323, N'a067700a.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (165, 323, N'b5bebb71.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (166, 323, N'c24c4513.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (168, 324, N'915191b3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (169, 324, N'770c6466.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (170, 324, N'86128cfa.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (171, 325, N'320ad20b.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (172, 325, N'f1f25353.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (173, 325, N'2691238e.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (174, 326, N'56d3f38f.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (178, 327, N'b334660e.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (179, 327, N'bf763765.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (180, 327, N'd01aa884.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (181, 328, N'cd75e6b5.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (182, 328, N'aeda87fa.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (183, 328, N'dcdb379d.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (184, 329, N'e5f2a182.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (185, 329, N'821afdeb.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (186, 329, N'4f24f561.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (187, 330, N'36829b76.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (188, 330, N'86a22c01.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (189, 330, N'8984457f.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (191, 331, N'33fa927f.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (192, 331, N'1ee06b7c.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (193, 331, N'a1f5f0ae.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (194, 333, N'f4319d20.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (195, 333, N'ad23d5ee.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (196, 333, N'87101233.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (197, 334, N'8798d2f9.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (198, 334, N'789f3215.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (199, 334, N'414657be.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (200, 335, N'5c168c42.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (201, 335, N'2f2ee6cc.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (202, 335, N'c361af98.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (203, 336, N'5786fe56.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (204, 336, N'e29fcba9.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (205, 336, N'4fb7ea63.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (206, 337, N'a351f77c.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (207, 337, N'26290340.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (208, 337, N'92b26aa5.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (209, 337, N'41874c49.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (210, 337, N'fb4dd147.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (211, 337, N'b2cf9626.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (212, 337, N'a5d93d8d.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (213, 337, N'6e8e442b.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (214, 338, N'bd7716a0.jpg')
GO
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (215, 338, N'43b9ceba.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (216, 338, N'3d6d4004.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (217, 338, N'5e3345df.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (218, 338, N'7d6c1048.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (219, 338, N'32d37092.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (220, 338, N'e03032ab.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (221, 338, N'ebadd11d.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (222, 339, N'acfe7aaf.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (223, 339, N'14c97db2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (224, 339, N'6e55a872.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (225, 339, N'11888d7.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (226, 339, N'549e1c3c.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (227, 339, N'bb96f72b.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (228, 339, N'3a96121a.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (229, 339, N'4338fc9.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (230, 340, N'34f15447.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (231, 340, N'47726088.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (232, 340, N'6c91a430.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (233, 340, N'5d4e3f09.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (234, 340, N'ab62e8ae.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (235, 340, N'd6de0cbc.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (236, 340, N'c7fe23f6.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (237, 341, N'781137d8.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (238, 341, N'11ad8aec.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (239, 341, N'57aaacf0.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (241, 341, N'4a25002e.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (242, 341, N'6a06ab06.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (243, 341, N'5876af3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (244, 341, N'72192e7b.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (245, 341, N'd30ce277.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (246, 341, N'8c72bf1c.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (247, 341, N'486b81d2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (248, 342, N'e4fab3d3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (249, 342, N'd9a01556.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (250, 342, N'785c5465.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (251, 342, N'90d6af43.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (252, 342, N'c0a65d6c.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (253, 342, N'20ac9a11.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (254, 342, N'83416679.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (255, 343, N'bfdb1295.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (256, 343, N'316608f3.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (257, 343, N'1a2dbd60.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (258, 343, N'16becffd.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (259, 343, N'485c911b.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (260, 343, N'22fc85e5.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (261, 343, N'93a3a5e0.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (262, 344, N'ed348f43.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (263, 344, N'e5f2978c.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (264, 344, N'beeb9c8c.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (265, 344, N'8f0e3ba2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (266, 344, N'45018cbd.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (267, 344, N'9894af45.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (268, 344, N'233dab11.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (269, 345, N'86a5326c.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (270, 345, N'9c80fbed.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (272, 345, N'12f00e27.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (273, 345, N'b3896456.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (274, 346, N'1e7ad3ad.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (275, 346, N'10a6588d.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (276, 346, N'f2e117fd.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (277, 346, N'9f710084.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (278, 346, N'c3d41b82.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (279, 346, N'52245bd1.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (281, 346, N'8b722cc5.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (282, 346, N'38cc9a4e.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (283, 347, N'abd57eaa.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (284, 347, N'ce822e74.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (285, 347, N'7527b81f.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (286, 347, N'b873d44.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (287, 347, N'4501a763.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (288, 347, N'af2e18aa.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (289, 347, N'2ce8d101.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (290, 347, N'17ad60fd.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (291, 347, N'29401615.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (292, 347, N'a1bb5936.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (293, 347, N'3c962961.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (294, 348, N'cbb021ea.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (295, 348, N'853e0fae.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (296, 348, N'61696bcb.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (297, 348, N'1f11d26f.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (298, 345, N'c8c8672e.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (299, 345, N'2f56587b.png')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (300, 345, N'5cb88259.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (301, 345, N'60cb046b.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (302, 345, N'aa78cc8.png')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (303, 345, N'8b4db6cd.jfif')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (304, 345, N'4783a689.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (305, 345, N'4e85d1d5.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (306, 348, N'88fac512.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (307, 348, N'67379bfc.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (308, 348, N'2ea4ef78.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (309, 348, N'c0278094.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (310, 348, N'2e4862da.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (311, 348, N'5dd6a8d8.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (312, 348, N'e309d2d2.jpg')
INSERT [dbo].[Proofreads] ([Id], [Bookid], [images]) VALUES (313, NULL, N'7443dbe8.jpg')
SET IDENTITY_INSERT [dbo].[Proofreads] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'ADMIN', N'Quản trị')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'USER', N'Người dùng')
GO
SET IDENTITY_INSERT [dbo].[Storage] ON 

INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (1, 9, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (2, 10, 49)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (3, 109, 49)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (4, 13, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (5, 110, 49)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (6, 111, 44)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (7, 112, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (8, 113, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (9, 11, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (10, 12, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (11, 13, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (12, 14, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (13, 15, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (14, 16, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (15, 17, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (16, 18, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (17, 19, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (18, 20, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (19, 21, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (20, 20, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (21, 22, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (22, 23, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (23, 24, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (24, 25, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (25, 26, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (26, 27, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (27, 28, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (28, 29, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (29, 30, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (30, 31, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (31, 32, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (32, 33, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (33, 34, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (34, 35, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (35, 35, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (37, 37, 49)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (38, 38, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (39, 37, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (40, 38, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (41, 49, 49)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (42, 39, NULL)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (43, 40, NULL)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (44, 41, NULL)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (45, 42, NULL)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (46, 43, NULL)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (47, 51, NULL)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (48, 44, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (49, 45, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (50, 46, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (51, 47, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (52, 48, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (53, 50, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (54, 200, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (55, 201, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (56, 202, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (57, 203, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (58, 204, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (59, 205, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (60, 206, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (61, 207, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (62, 208, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (63, 209, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (64, 210, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (65, 211, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (66, 212, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (67, 213, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (68, 214, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (69, 190, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (70, 191, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (71, 192, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (72, 193, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (73, 194, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (74, 195, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (75, 196, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (76, 197, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (77, 198, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (78, 199, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (79, 189, 50)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (80, 80, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (124, 307, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (130, 310, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (131, 311, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (132, 312, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (133, 314, 149)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (134, 315, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (135, 316, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (136, 317, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (137, 318, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (138, 319, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (139, 320, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (140, 321, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (141, 322, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (142, 323, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (143, 324, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (144, 325, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (145, 326, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (146, 327, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (147, 328, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (148, 329, 150)
GO
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (149, 330, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (150, 331, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (152, 333, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (153, 334, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (154, 335, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (155, 336, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (156, 337, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (157, 338, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (158, 339, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (159, 340, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (160, 341, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (161, 342, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (162, 343, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (163, 344, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (164, 345, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (165, 346, 150)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (166, 347, 149)
INSERT [dbo].[Storage] ([Id], [Bookid], [Quantity]) VALUES (167, 348, 147)
SET IDENTITY_INSERT [dbo].[Storage] OFF
GO
SET IDENTITY_INSERT [dbo].[uservoucher] ON 

INSERT [dbo].[uservoucher] ([id], [username], [voucherid]) VALUES (9, N'Phatlt', N'MIENPHI15K')
INSERT [dbo].[uservoucher] ([id], [username], [voucherid]) VALUES (10, N'Phatlt', N'QUOCKHANH')
INSERT [dbo].[uservoucher] ([id], [username], [voucherid]) VALUES (11, N'Phatlt', N'MAGIAM10K')
INSERT [dbo].[uservoucher] ([id], [username], [voucherid]) VALUES (12, N'Phatlt', N'ORDERFIRST')
INSERT [dbo].[uservoucher] ([id], [username], [voucherid]) VALUES (13, N'Phatlt', N'ORDERSWEEK')
SET IDENTITY_INSERT [dbo].[uservoucher] OFF
GO
INSERT [dbo].[Vouchers] ([Voucherid], [Name], [Discount], [image], [Startdate], [Enddate]) VALUES (N'0', N'không có gì', 0, N'', CAST(N'2024-05-02' AS Date), CAST(N'2024-12-26' AS Date))
INSERT [dbo].[Vouchers] ([Voucherid], [Name], [Discount], [image], [Startdate], [Enddate]) VALUES (N'GIAMGIA10K', N'Giảm giá thử', 10000, N'856e6a3a.png', CAST(N'2024-04-29' AS Date), CAST(N'2024-05-11' AS Date))
INSERT [dbo].[Vouchers] ([Voucherid], [Name], [Discount], [image], [Startdate], [Enddate]) VALUES (N'LUNARNEWYEAR', N'Giảm giá Tết Nguyên Đáng', 30000, N'30k.png', CAST(N'2024-04-30' AS Date), CAST(N'2024-05-11' AS Date))
INSERT [dbo].[Vouchers] ([Voucherid], [Name], [Discount], [image], [Startdate], [Enddate]) VALUES (N'MAGIAM10K', N'GIAM10K', 10000, N'4c13595d.png', CAST(N'2024-04-30' AS Date), CAST(N'2023-12-13' AS Date))
INSERT [dbo].[Vouchers] ([Voucherid], [Name], [Discount], [image], [Startdate], [Enddate]) VALUES (N'MIENPHI15K', N'Miễn phí', 15000, N'15k.png', CAST(N'2024-04-29' AS Date), CAST(N'2024-05-16' AS Date))
INSERT [dbo].[Vouchers] ([Voucherid], [Name], [Discount], [image], [Startdate], [Enddate]) VALUES (N'ORDERFIRST', N'Đặt hàng lần đầu tiên', 15000, N'15k.png', CAST(N'2024-05-02' AS Date), CAST(N'2024-05-17' AS Date))
INSERT [dbo].[Vouchers] ([Voucherid], [Name], [Discount], [image], [Startdate], [Enddate]) VALUES (N'ORDERSWEEK', N'Đặt hàng nhiều lần trong tuần', 20000, N'20k.png', CAST(N'2024-05-02' AS Date), CAST(N'2024-05-22' AS Date))
INSERT [dbo].[Vouchers] ([Voucherid], [Name], [Discount], [image], [Startdate], [Enddate]) VALUES (N'QUOCKHANH', N'Lễ Quốc Khánh 2-9', 25000, N'25k.png', CAST(N'2024-05-02' AS Date), CAST(N'2024-05-28' AS Date))
INSERT [dbo].[Vouchers] ([Voucherid], [Name], [Discount], [image], [Startdate], [Enddate]) VALUES (N'TANGFREE', N'Tặng cho người mới', 20000, N'20k.png', CAST(N'2024-05-02' AS Date), CAST(N'2024-12-26' AS Date))
GO
/****** Object:  Index [UK6ks2nbjkwr8egrx1ebrdlk902]    Script Date: 5/2/2024 11:41:35 PM ******/
ALTER TABLE [dbo].[Cartdetails] ADD  CONSTRAINT [UK6ks2nbjkwr8egrx1ebrdlk902] UNIQUE NONCLUSTERED 
(
	[Cartid] ASC,
	[Bookid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Accounts] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Accounts]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FK_Authorities_Roles] FOREIGN KEY([Roleid])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FK_Authorities_Roles]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FKevi9708lm1k06pa4dugc91k7v] FOREIGN KEY([Roleid])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FKevi9708lm1k06pa4dugc91k7v]
GO
ALTER TABLE [dbo].[Authorities]  WITH CHECK ADD  CONSTRAINT [FKlw0sapcjvuxfa1kvyjw7jml88] FOREIGN KEY([Username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Authorities] CHECK CONSTRAINT [FKlw0sapcjvuxfa1kvyjw7jml88]
GO
ALTER TABLE [dbo].[Billdetails]  WITH CHECK ADD  CONSTRAINT [FK_Billdetails_Bills] FOREIGN KEY([Billid])
REFERENCES [dbo].[Bills] ([Id])
GO
ALTER TABLE [dbo].[Billdetails] CHECK CONSTRAINT [FK_Billdetails_Bills]
GO
ALTER TABLE [dbo].[Billdetails]  WITH CHECK ADD  CONSTRAINT [FK_Billdetails_Books] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Billdetails] CHECK CONSTRAINT [FK_Billdetails_Books]
GO
ALTER TABLE [dbo].[Billdetails]  WITH CHECK ADD  CONSTRAINT [FK1x4ptwrfhuajipfyj3mh4qh5o] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Billdetails] CHECK CONSTRAINT [FK1x4ptwrfhuajipfyj3mh4qh5o]
GO
ALTER TABLE [dbo].[Billdetails]  WITH CHECK ADD  CONSTRAINT [FKcwsc27km87tsanxqrjxac5ioi] FOREIGN KEY([Billid])
REFERENCES [dbo].[Bills] ([Id])
GO
ALTER TABLE [dbo].[Billdetails] CHECK CONSTRAINT [FKcwsc27km87tsanxqrjxac5ioi]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Accounts] FOREIGN KEY([Userid])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_Accounts]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Vouchers] FOREIGN KEY([Voucherid])
REFERENCES [dbo].[Vouchers] ([Voucherid])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_Vouchers]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK42nkw58tysv6e15qmnr1qigng] FOREIGN KEY([Voucherid])
REFERENCES [dbo].[Vouchers] ([Voucherid])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK42nkw58tysv6e15qmnr1qigng]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FKf1pjs7rgijpxvlutddmck0fnv] FOREIGN KEY([Userid])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FKf1pjs7rgijpxvlutddmck0fnv]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors] FOREIGN KEY([Authorsid])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories] FOREIGN KEY([Categoryid])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categories]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK7eq515abw8d5j0wvo2qtmaa5k] FOREIGN KEY([Authorsid])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK7eq515abw8d5j0wvo2qtmaa5k]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FKrx4qw2d9q77vjlmug7oxwxnco] FOREIGN KEY([Categoryid])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FKrx4qw2d9q77vjlmug7oxwxnco]
GO
ALTER TABLE [dbo].[Cartdetails]  WITH CHECK ADD  CONSTRAINT [FK_Cartdetails_Books] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Cartdetails] CHECK CONSTRAINT [FK_Cartdetails_Books]
GO
ALTER TABLE [dbo].[Cartdetails]  WITH CHECK ADD  CONSTRAINT [FK_Cartdetails_Carts] FOREIGN KEY([Cartid])
REFERENCES [dbo].[Carts] ([Id])
GO
ALTER TABLE [dbo].[Cartdetails] CHECK CONSTRAINT [FK_Cartdetails_Carts]
GO
ALTER TABLE [dbo].[Cartdetails]  WITH CHECK ADD  CONSTRAINT [FK5d6sesjcf708fol2awjfkp5m2] FOREIGN KEY([Cartid])
REFERENCES [dbo].[Carts] ([Id])
GO
ALTER TABLE [dbo].[Cartdetails] CHECK CONSTRAINT [FK5d6sesjcf708fol2awjfkp5m2]
GO
ALTER TABLE [dbo].[Cartdetails]  WITH CHECK ADD  CONSTRAINT [FKgqw87blkrgm3xxgx4d5gcth1a] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Cartdetails] CHECK CONSTRAINT [FKgqw87blkrgm3xxgx4d5gcth1a]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Accounts] FOREIGN KEY([Userid])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Accounts]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FKewp4dsetaot3i0q9mtxlgnevq] FOREIGN KEY([Userid])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FKewp4dsetaot3i0q9mtxlgnevq]
GO
ALTER TABLE [dbo].[ChangePanel]  WITH CHECK ADD  CONSTRAINT [FK_ChangePanel_Categories] FOREIGN KEY([IdCate])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[ChangePanel] CHECK CONSTRAINT [FK_ChangePanel_Categories]
GO
ALTER TABLE [dbo].[ChangePanel]  WITH CHECK ADD  CONSTRAINT [FKc9ibdg0u7xelmmg3f3gpjsjix] FOREIGN KEY([IdCate])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[ChangePanel] CHECK CONSTRAINT [FKc9ibdg0u7xelmmg3f3gpjsjix]
GO
ALTER TABLE [dbo].[Discounts]  WITH CHECK ADD  CONSTRAINT [FK_Discounts_Books1] FOREIGN KEY([bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Discounts] CHECK CONSTRAINT [FK_Discounts_Books1]
GO
ALTER TABLE [dbo].[Discounts]  WITH CHECK ADD  CONSTRAINT [FK6bkqu3jk8nj44e046krs7ayu4] FOREIGN KEY([bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Discounts] CHECK CONSTRAINT [FK6bkqu3jk8nj44e046krs7ayu4]
GO
ALTER TABLE [dbo].[Evaluates]  WITH CHECK ADD  CONSTRAINT [FK_Evaluates_Accounts] FOREIGN KEY([Userid])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Evaluates] CHECK CONSTRAINT [FK_Evaluates_Accounts]
GO
ALTER TABLE [dbo].[Evaluates]  WITH CHECK ADD  CONSTRAINT [FK_Evaluates_Books] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Evaluates] CHECK CONSTRAINT [FK_Evaluates_Books]
GO
ALTER TABLE [dbo].[Evaluates]  WITH CHECK ADD  CONSTRAINT [FKmood7c2x7sa3478n9xcd71dx0] FOREIGN KEY([Userid])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Evaluates] CHECK CONSTRAINT [FKmood7c2x7sa3478n9xcd71dx0]
GO
ALTER TABLE [dbo].[Evaluates]  WITH CHECK ADD  CONSTRAINT [FKp4ey9443aaerjt8c78w2m3hju] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Evaluates] CHECK CONSTRAINT [FKp4ey9443aaerjt8c78w2m3hju]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Accounts] FOREIGN KEY([Userid])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Accounts]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Books] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Books]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FKocjjmfmpqs0ai2kfeyisera37] FOREIGN KEY([Userid])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FKocjjmfmpqs0ai2kfeyisera37]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FKrtd31yekpoesjp9ywsn3scktw] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FKrtd31yekpoesjp9ywsn3scktw]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Books] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Books]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK5ohxwihfwy5cddgra4r69dg10] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK5ohxwihfwy5cddgra4r69dg10]
GO
ALTER TABLE [dbo].[Import]  WITH CHECK ADD  CONSTRAINT [FK_Import_Books] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Import] CHECK CONSTRAINT [FK_Import_Books]
GO
ALTER TABLE [dbo].[Import]  WITH CHECK ADD  CONSTRAINT [FK81uh2my8pk6lt7vlqw84hbth1] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Import] CHECK CONSTRAINT [FK81uh2my8pk6lt7vlqw84hbth1]
GO
ALTER TABLE [dbo].[Proofreads]  WITH CHECK ADD  CONSTRAINT [FK_Proofread_Books] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Proofreads] CHECK CONSTRAINT [FK_Proofread_Books]
GO
ALTER TABLE [dbo].[Proofreads]  WITH CHECK ADD  CONSTRAINT [FKgfetm9vnaai50ton2luunk9pm] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Proofreads] CHECK CONSTRAINT [FKgfetm9vnaai50ton2luunk9pm]
GO
ALTER TABLE [dbo].[Storage]  WITH CHECK ADD  CONSTRAINT [FK_Storage_Books] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Storage] CHECK CONSTRAINT [FK_Storage_Books]
GO
ALTER TABLE [dbo].[Storage]  WITH CHECK ADD  CONSTRAINT [FK4jlf5wurc33oqq6s5kg0300dx] FOREIGN KEY([Bookid])
REFERENCES [dbo].[Books] ([Id])
GO
ALTER TABLE [dbo].[Storage] CHECK CONSTRAINT [FK4jlf5wurc33oqq6s5kg0300dx]
GO
ALTER TABLE [dbo].[uservoucher]  WITH CHECK ADD  CONSTRAINT [FK_uservoucher_Accounts] FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([Username])
GO
ALTER TABLE [dbo].[uservoucher] CHECK CONSTRAINT [FK_uservoucher_Accounts]
GO
ALTER TABLE [dbo].[uservoucher]  WITH CHECK ADD  CONSTRAINT [FK_uservoucher_Vouchers] FOREIGN KEY([voucherid])
REFERENCES [dbo].[Vouchers] ([Voucherid])
GO
ALTER TABLE [dbo].[uservoucher] CHECK CONSTRAINT [FK_uservoucher_Vouchers]
GO
