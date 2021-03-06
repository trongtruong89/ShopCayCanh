CREATE DATABASE [ShopCayCanh]
USE [ShopCayCanh]
GO
/****** Object:  Table [dbo].[category]    Script Date: 10/31/2020 2:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[slug] [varchar](255) NOT NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[metakey] [nvarchar](150) NULL,
	[metadesc] [nvarchar](150) NULL,
	[created_at] [smalldatetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 10/31/2020 2:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](100) NULL,
	[email] [varchar](100) NULL,
	[phone] [varchar](15) NULL,
	[title] [nvarchar](255) NULL,
	[detail] [ntext] NULL,
	[created_at] [smalldatetime] NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[link]    Script Date: 10/31/2020 2:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[link](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[slug] [varchar](max) NULL,
	[tableId] [int] NULL,
	[type] [varchar](200) NULL,
	[parentId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 10/31/2020 2:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[link] [varchar](255) NULL,
	[tableid] [int] NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[position] [varchar](255) NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 10/31/2020 2:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](255) NOT NULL,
	[userid] [int] NOT NULL,
	[created_ate] [smalldatetime] NOT NULL,
	[exportdate] [smalldatetime] NULL,
	[deliveryaddress] [nvarchar](255) NOT NULL,
	[deliveryname] [nvarchar](100) NOT NULL,
	[deliveryphone] [varchar](255) NOT NULL,
	[deliveryemail] [varchar](255) NOT NULL,
	[deliveryPaymentMethod] [nvarchar](255) NOT NULL,
	[StatusPayment] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ordersdetail]    Script Date: 10/31/2020 2:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ordersdetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NOT NULL,
	[productid] [int] NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[priceSale] [int] NOT NULL,
	[amount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post]    Script Date: 10/31/2020 2:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[topid] [int] NULL,
	[title] [nvarchar](max) NOT NULL,
	[slug] [varchar](255) NOT NULL,
	[detail] [ntext] NULL,
	[img] [varchar](255) NULL,
	[type] [varchar](50) NULL,
	[metakey] [nvarchar](150) NOT NULL,
	[metadesc] [nvarchar](150) NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 10/31/2020 2:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[catid] [int] NOT NULL,
	[Submenu] [int] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[slug] [nvarchar](255) NOT NULL,
	[img] [varchar](100) NOT NULL,
	[detail] [ntext] NOT NULL,
	[number] [int] NOT NULL,
	[price] [float] NOT NULL,
	[pricesale] [float] NOT NULL,
	[metakey] [nvarchar](150) NULL,
	[metadesc] [nvarchar](max) NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
	[sold] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 10/31/2020 2:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[parentId] [int] NOT NULL,
	[accessName] [varchar](255) NOT NULL,
	[description] [nvarchar](225) NULL,
	[GropID] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slider]    Script Date: 10/31/2020 2:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slider](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[url] [varchar](255) NOT NULL,
	[position] [varchar](100) NOT NULL,
	[img] [varchar](100) NOT NULL,
	[orders] [int] NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic]    Script Date: 10/31/2020 2:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[slug] [varchar](255) NOT NULL,
	[parentid] [int] NOT NULL,
	[orders] [int] NOT NULL,
	[metakey] [varchar](150) NULL,
	[metadesc] [nvarchar](max) NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 10/31/2020 2:53:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](255) NOT NULL,
	[username] [varchar](225) NOT NULL,
	[password] [varchar](64) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[gender] [nvarchar](5) NULL,
	[phone] [varchar](20) NULL,
	[img] [varchar](100) NULL,
	[access] [int] NOT NULL,
	[created_at] [smalldatetime] NOT NULL,
	[created_by] [int] NOT NULL,
	[updated_at] [smalldatetime] NOT NULL,
	[updated_by] [int] NOT NULL,
	[status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (16, N'CÂY CẢNH VĂN PHÒNG', N'cay-canh-van-phong', 19, 0, N'CÂY CẢNH VĂN PHÒNG', N'CÂY CẢNH VĂN PHÒNG', CAST(N'2020-10-31T12:40:00' AS SmallDateTime), 1, CAST(N'2020-10-31T12:40:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (17, N'TIỂU CẢNH TERRARIUM', N'tieu-canh-terrarium', 19, 0, N'TIỂU CẢNH TERRARIUM', N'TIỂU CẢNH TERRARIUM', CAST(N'2020-10-31T12:40:00' AS SmallDateTime), 1, CAST(N'2020-10-31T12:40:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (18, N'SEN ĐÁ', N'sen-da', 0, 0, N'SEN ĐÁ', N'SEN ĐÁ', CAST(N'2020-10-31T12:41:00' AS SmallDateTime), 1, CAST(N'2020-10-31T12:41:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (19, N'CÂY CẢNH', N'cay-canh', 0, 0, N'aaaaa', N'aaaaa', CAST(N'2020-10-31T12:51:00' AS SmallDateTime), 1, CAST(N'2020-10-31T12:51:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (20, N'CHẬU CẢNH', N'chau-canh', 0, 0, N'da', N'ad', CAST(N'2020-10-31T12:51:00' AS SmallDateTime), 1, CAST(N'2020-10-31T12:51:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (21, N'XƯƠNG RỒNG', N'xuong-rong', 0, 0, N'XƯƠNG RỒNG', N'XƯƠNG RỒNG', CAST(N'2020-10-31T13:31:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:31:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[category] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (22, N' PHỤ KIỆN TERRARIUM', N'-phu-kien-terrarium', 0, 0, N' PHỤ KIỆN TERRARIUM', N' PHỤ KIỆN TERRARIUM', CAST(N'2020-10-31T13:40:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:40:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[category] OFF
SET IDENTITY_INSERT [dbo].[contact] ON 

INSERT [dbo].[contact] ([ID], [fullname], [email], [phone], [title], [detail], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (2, N'nguyen van hung', N'vanhung3339@gmail.com', N'0975271384', N'Làm thế nào để có nó?', N'Có rất nhiều biến thể của Lorem Ipsum mà bạn có thể tìm thấy, nhưng đa số được biến đổi bằng cách thêm các yếu tố hài hước, các từ ngẫu nhiên có khi không có vẻ gì là có ý nghĩa. Nếu bạn định sử dụng một đoạn Lorem Ipsum, bạn nên kiểm tra kĩ để chắn chắn là không có gì nhạy cảm được giấu ở giữa đoạn văn bản. Tất cả các công cụ sản xuất văn bản mẫu Lorem Ipsum đều được làm theo cách lặp đi lặp lại các đoạn chữ cho tới đủ thì thôi, khiến cho lipsum.com trở thành công cụ sản xuất Lorem Ipsum đáng giá nhất trên mạng. Trang web này sử dụng hơn 200 từ la-tinh, kết hợp thuần thục nhiều cấu trúc câu để tạo ra văn bản Lorem Ipsum trông có vẻ thật sự hợp lí. Nhờ thế, văn bản Lorem Ipsum được tạo ra mà không cần một sự lặp lại nào, cũng không cần chèn thêm các từ ngữ hóm hỉnh hay thiếu trật tự.', CAST(N'2019-11-26T11:44:00' AS SmallDateTime), NULL, CAST(N'2019-11-26T12:15:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[contact] ([ID], [fullname], [email], [phone], [title], [detail], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (5, N'ád', N'ád', N'12312312', N'tôi muôn mua @@2', N'nhưng tui k có tiền', CAST(N'2019-11-26T00:00:00' AS SmallDateTime), 1, CAST(N'2019-11-26T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[contact] ([ID], [fullname], [email], [phone], [title], [detail], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'nguyen van hhhh', N'anh4docganh@gmail.com', N'09747328372', N'0650320203205', N'fSSSSSSSSSSSSSSSSSSSSSSSSSS', CAST(N'2020-04-11T09:43:00' AS SmallDateTime), NULL, CAST(N'2020-07-10T17:44:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[contact] ([ID], [fullname], [email], [phone], [title], [detail], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (7, N'nguyen van hhhh', N'vanhung3339@gmail.com', N'09747328372', N'0650320203205', N'dddddddddddddddddddddddddddddddd', CAST(N'2020-04-29T23:31:00' AS SmallDateTime), NULL, CAST(N'2020-05-07T08:51:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[contact] ([ID], [fullname], [email], [phone], [title], [detail], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (8, N'nguyen van hhhh', N'vanhung3339@gmail.com', N'09747328372', N'0650320203205', N'?dasdasdadddddddddddddddddddddddddddddddddddddddddddd', CAST(N'2020-04-29T23:34:00' AS SmallDateTime), NULL, CAST(N'2020-05-07T08:51:00' AS SmallDateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[contact] OFF
SET IDENTITY_INSERT [dbo].[link] ON 

INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (221, N'cay-canh-van-phong', 2, N'category', 16)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (222, N'tieu-canh-terrarium', 2, N'category', 17)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (223, N'sen-da', 2, N'category', 18)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (224, N'cay-canh', 2, N'category', 19)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (225, N'chau-canh', 2, N'category', 20)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (226, N'xuong-rong', 2, N'category', 21)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (227, N'-phu-kien-terrarium', 2, N'category', 22)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (228, N'cay-moc-huong', 1, N'ProductDetail', 1)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (229, N'cay-cau-tieu-tram-thuy-sinh', 1, N'ProductDetail', 2)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (230, N'cay-van-nien-thanh-leo-cot', 1, N'ProductDetail', 3)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (231, N'cay-cam-nhung', 1, N'ProductDetail', 4)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (232, N'cay-van-loc', 1, N'ProductDetail', 5)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (233, N'cay-ngoc-ngan', 1, N'ProductDetail', 6)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (234, N'cay-hoa-da-yen-thao', 1, N'ProductDetail', 7)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (235, N'cay-duoi-cong-tim', 1, N'ProductDetail', 8)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (236, N'tieu-canh-composite-04', 1, N'ProductDetail', 9)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (237, N'tieu-canh-thuy-tinh-15', 1, N'ProductDetail', 10)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (238, N'tieu-canh-gom-ve-28', 1, N'ProductDetail', 11)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (239, N'tieu-canh-thuy-tinh-50', 1, N'ProductDetail', 12)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (240, N'chau-gom-su-hat-de-s2', 1, N'ProductDetail', 13)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (241, N'chau-thuy-tinh-tron', 1, N'ProductDetail', 14)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (242, N'chau-gom-su-ke-mieng', 1, N'ProductDetail', 15)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (243, N'chau-gom-dat-nung-binh-hoa', 1, N'ProductDetail', 16)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (244, N'sen-da-bap-cai-tim', 1, N'ProductDetail', 17)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (245, N'sen-da-ngoc', 1, N'ProductDetail', 18)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (246, N'sen-da-giot-le', 1, N'ProductDetail', 19)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (247, N'sen-da-soi-thien-thanh', 1, N'ProductDetail', 20)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (248, N'xuong-rong-astro-rau-de', 1, N'ProductDetail', 21)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (249, N'xuong-rong-bong-vang', 1, N'ProductDetail', 22)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (250, N'xuong-rong-long-thien-nga', 1, N'ProductDetail', 23)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (251, N'xuong-rong-mix-3-cay', 1, N'ProductDetail', 24)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (252, N'gioi-thieu', 3, N'topic', 1)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (253, N'tin-tuc', 3, N'topic', 16)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (254, N'tuyen-dung', 4, N'PostDetail', 26)
INSERT [dbo].[link] ([ID], [slug], [tableId], [type], [parentId]) VALUES (255, N'gioi-thieu', 4, N'PostDetail', 29)
SET IDENTITY_INSERT [dbo].[link] OFF
SET IDENTITY_INSERT [dbo].[menu] ON 

INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Trang Chủ', N'menu', N'', 2, 0, 1, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-12-05T13:03:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (3, N'Liên Hệ', N'page', N'lien-he', 2, 0, 3, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (4, N'Sản Phẩm', N'menu', N'san-pham', 2, 0, 4, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (5, N'Bài Viết', N'menu', N'bai-viet', 2, 0, 5, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-05-06T23:02:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'Tất Cả Sản Phẩm', N'menu', N'sanpham', 2, 4, 10, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2019-12-03T22:32:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (7, N'Em bé', N'menu', N'em-be', 2, 4, 13, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-05-05T22:39:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (8, N'Nữ', N'menu', N'c-nu', 2, 4, 14, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-05-05T22:40:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (10, N'Phu-Kien', N'menu', N'phu-kien', 2, 4, 12, N'mainmenu', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-05-04T11:19:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (25, N'Áo Sơ Mi Nam', N'menu', N'ao-so-mi-nam', 2, 0, 1, N'mainmenu', CAST(N'2020-05-06T11:31:00' AS SmallDateTime), 1, CAST(N'2020-05-06T11:31:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[menu] ([ID], [name], [type], [link], [tableid], [parentid], [orders], [position], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (26, N'Áo Khoác Nữ', N'menu', N'ao-khoac-nu', 2, 0, 1, N'mainmenu', CAST(N'2020-05-06T23:02:00' AS SmallDateTime), 1, CAST(N'2020-05-06T23:02:00' AS SmallDateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[menu] OFF
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (9, N'e3947841-58bf-4d7d-bcfe-26e0439f9a77', 1, CAST(N'2020-10-22T12:01:00' AS SmallDateTime), CAST(N'2020-10-22T12:01:00' AS SmallDateTime), N'adadadadad', N'ddddddddddddddddddddddd', N'0975271384', N'vadadas@gmial.com', N'Cổng thanh toán MOMO', 1, CAST(N'2020-10-22T12:01:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (10, N'4783010/22/2020 12:02:19 PM', 1, CAST(N'2020-10-22T12:02:00' AS SmallDateTime), CAST(N'2020-10-22T12:02:00' AS SmallDateTime), N'adadadadad', N'dddddddddddd', N'0975271384', N'vadadas@gmial.com', N'Cổng thanh toán Ngân Lượng', 1, CAST(N'2020-10-22T12:02:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (11, N'5798510/22/2020 12:04:02 PM', 1, CAST(N'2020-10-22T12:04:00' AS SmallDateTime), CAST(N'2020-10-22T12:04:00' AS SmallDateTime), N'adadadadad', N'ddddddddddddddddddddddd', N'0975271384', N'd3339@gmial.com', N'ATM Online qua ngân lượng', 1, CAST(N'2020-10-22T12:04:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (12, N'e9d6642c-ba27-4ebd-a891-6497fde9979e', 1, CAST(N'2020-10-30T18:05:00' AS SmallDateTime), CAST(N'2020-10-30T18:05:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'dddddddddddd', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán MOMO', 2, CAST(N'2020-10-30T18:05:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (13, N'9600510/30/2020 6:05:06 PM', 1, CAST(N'2020-10-30T18:05:00' AS SmallDateTime), CAST(N'2020-10-30T18:05:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'dddddddddddd', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán Ngân Lượng', 2, CAST(N'2020-10-30T18:05:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (14, N'954838a2-d68f-46fb-b8e2-8038c016f5bb', 1, CAST(N'2020-10-30T18:29:00' AS SmallDateTime), CAST(N'2020-10-30T18:29:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán MOMO', 2, CAST(N'2020-10-30T18:29:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (15, N'3454b838-9891-4b88-b18b-d4c71ba83040', 1, CAST(N'2020-10-30T18:32:00' AS SmallDateTime), CAST(N'2020-10-30T18:32:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán MOMO', 2, CAST(N'2020-10-30T18:32:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (8, N'c1f895ff-058a-446d-9251-06d2063aaf74', 1, CAST(N'2020-10-22T11:58:00' AS SmallDateTime), CAST(N'2020-10-22T11:58:00' AS SmallDateTime), N'cat minh phu cay', N'sdasdas', N'0975271384', N'vanhung3339@gmail.com', N'Cổng thanh toán MOMO', 1, CAST(N'2020-10-22T11:58:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (16, N'95cbcf03-a927-4c6d-ab35-b2782b48e5dc', 1, CAST(N'2020-10-30T18:37:00' AS SmallDateTime), CAST(N'2020-10-30T18:37:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'dddddddddddd', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán MOMO', 2, CAST(N'2020-10-30T18:37:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (17, N'4bb1130e-498b-4cbe-8619-61db16f4a34b', 1, CAST(N'2020-10-30T18:42:00' AS SmallDateTime), CAST(N'2020-10-30T18:42:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán MOMO', 2, CAST(N'2020-10-30T18:42:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (18, N'aa33f26d-f920-4277-a23b-c116648cd5a8', 1, CAST(N'2020-10-30T18:47:00' AS SmallDateTime), CAST(N'2020-10-30T18:47:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán MOMO', 2, CAST(N'2020-10-30T18:47:00' AS SmallDateTime), 1, 2)
INSERT [dbo].[order] ([ID], [code], [userid], [created_ate], [exportdate], [deliveryaddress], [deliveryname], [deliveryphone], [deliveryemail], [deliveryPaymentMethod], [StatusPayment], [updated_at], [updated_by], [status]) VALUES (19, N'ed970565-173b-4be9-950d-49543a4a2936', 1, CAST(N'2020-10-30T18:59:00' AS SmallDateTime), CAST(N'2020-10-30T18:59:00' AS SmallDateTime), N'Cát minh - Phù cát - Bình định', N'nguyen van hung', N'0975271384', N'vanhung3339@gmial.com', N'Cổng thanh toán MOMO', 2, CAST(N'2020-10-30T18:59:00' AS SmallDateTime), 1, 2)
SET IDENTITY_INSERT [dbo].[order] OFF
SET IDENTITY_INSERT [dbo].[ordersdetail] ON 

INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (1, 1, 4, 130000, 1, 0, 130000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (9, 9, 4, 130000, 2, 0, 260000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (93, 81, 3, 120000, 1, 0, 120000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (94, 81, 57, 150000, 1, 20, 120000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (95, 81, 58, 160000, 1, 50, 80000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (96, 82, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (97, 82, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (98, 82, 5, 120000, 1, 0, 120000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (99, 83, 14, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (100, 84, 31, 130000, 2, 20, 78000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (101, 84, 5, 120000, 1, 0, 120000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (102, 84, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (103, 85, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (104, 85, 31, 130000, 6, 20, -26000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (105, 85, 14, 130000, 7, 20, -52000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (106, 86, 14, 130000, 4, 20, 26000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (107, 86, 5, 120000, 4, 0, 480000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (108, 86, 30, 160000, 12, 20, -224000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (109, 87, 155, 150000, 1, 0, 150000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (110, 88, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (111, 90, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (112, 91, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (113, 92, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (114, 93, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (115, 94, 51, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (116, 95, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (117, 96, 31, 130000, 2, 20, 78000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (118, 96, 32, 50000, 1, 50, 25000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (119, 96, 155, 150000, 1, 0, 150000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (120, 1, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (121, 2, 51, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (122, 2, 156, 150000, 1, 0, 150000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (123, 3, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (124, 4, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (125, 5, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (126, 6, 14, 10000, 1, 20, 8000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (127, 8, 14, 10000, 1, 20, 8000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (128, 9, 14, 10000, 1, 20, 8000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (129, 10, 14, 10000, 1, 20, 8000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (130, 11, 14, 10000, 1, 20, 8000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (131, 12, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (132, 12, 51, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (133, 13, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (134, 13, 51, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (135, 14, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (136, 15, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (137, 16, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (138, 17, 30, 160000, 1, 20, 128000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (139, 18, 31, 130000, 1, 20, 104000)
INSERT [dbo].[ordersdetail] ([ID], [orderid], [productid], [price], [quantity], [priceSale], [amount]) VALUES (140, 19, 30, 160000, 1, 20, 128000)
SET IDENTITY_INSERT [dbo].[ordersdetail] OFF
SET IDENTITY_INSERT [dbo].[post] ON 

INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (26, 16, N'Tuyển dụng', N'tuyen-dung', N'<div data-v-bfbcefa4="" class="top-img" style="outline: none; word-break: break-word; font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, &quot;Droid Sans&quot;, Arial, sans-serif; font-size: 15px;"><h2 style="color: rgb(10, 10, 10); width: 779.1px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.6em; line-height: 1.3; font-family: Roboto, sans-serif;">THÔNG TIN TUYỂN DỤNG THÁNG 7/2019</h2><h1 style="margin-bottom: 10px; font-family: Roboto, Helvetica, Arial, sans-serif; font-weight: 700; line-height: 28px; color: rgb(68, 68, 68); font-size: 17px; padding-top: 15px; padding-bottom: 5px; border-bottom: 2px solid rgb(221, 221, 221);"><div class="mui-zebra-module" id="J_icms-5019644-1526365812889" data-module-id="icms-5019644-1526365812889" data-rmc-id="icms-5019644-1526365812889" data-id="35170" data-name="lzdmod-lzd-act-richtext" data-version="5.0.9" data-cfg-id="undefined" data-spm="icms-5019644-1526365812889" style="color: rgb(0, 0, 0); font-family: Roboto-Regular, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: medium; font-weight: 400;"><div class="lzd-act-richtext" data-spm-anchor-id="a2o4n.11531481.icms-5019644-1526365812889.i0.db802f244ZupyU" style="margin-top: 8px; padding: 8px; overflow-wrap: break-word; word-break: keep-all; overflow: hidden; font-family: Arial, Verdana, sans-serif !important; line-height: normal !important;"><div class="inner-content" style="margin-right: auto; margin-left: auto; width: 1188px; overflow: hidden;"><div class="text_exposed_show" style="color: rgb(40, 40, 40); font-family: Roboto, sans-serif; font-size: 16px;"><p style="margin-bottom: 1.3em;">Với kế hoạch mở rộng và phát triển hoạt động kinh doanh lĩnh vực cây xanh trên toàn quốc, Cây Xinh tuyển dụng nhân sự ở các vị trí khác nhau, tạo việc làm và cơ hội phát triển nghề nghiệp với thu nhập hấp dẫn.</p><p style="margin-bottom: 1.3em;">Đặc biệt rất phù hợp với các bạn có tình yêu với cây cối, thích làm việc trong môi trường xanh, đồng nghiệp tốt, quản lý giỏi để phát triển kỹ năng trở thành người bán hàng vĩ đại nhất</p><p style="margin-bottom: 1.3em;">Địa chỉ làm việc:&nbsp;Số 1, Ngõ 213, Giáp Nhất, Thanh Xuân, Hà Nội</p></div></div></div></div></h1><h3 style="color: rgb(10, 10, 10); width: 779.1px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Roboto, sans-serif;">I. VỊ TRÍ TUYỂN DỤNG:</h3><h1 style="margin-bottom: 10px; font-family: Roboto, Helvetica, Arial, sans-serif; font-weight: 700; line-height: 28px; color: rgb(68, 68, 68); font-size: 17px; padding-top: 15px; padding-bottom: 5px; border-bottom: 2px solid rgb(221, 221, 221);"><div class="mui-zebra-module" data-module-id="icms-5019644-1526365812889" data-rmc-id="icms-5019644-1526365812889" data-id="35170" data-name="lzdmod-lzd-act-richtext" data-version="5.0.9" data-cfg-id="undefined" data-spm="icms-5019644-1526365812889" style="color: rgb(0, 0, 0); font-family: Roboto-Regular, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: medium; font-weight: 400;"><div class="lzd-act-richtext" data-spm-anchor-id="a2o4n.11531481.icms-5019644-1526365812889.i0.db802f244ZupyU" style="margin-top: 8px; padding: 8px; overflow-wrap: break-word; word-break: keep-all; overflow: hidden; font-family: Arial, Verdana, sans-serif !important; line-height: normal !important;"><div class="inner-content" style="margin-right: auto; margin-left: auto; width: 1188px; overflow: hidden;"><div class="text_exposed_show" style="color: rgb(40, 40, 40); font-family: Roboto, sans-serif; font-size: 16px;"><p style="margin-bottom: 1.3em;">– Kế toán nội bộ: 1 nhân sự (mức lương 6,5-8tr/tháng)<br>– Nhân viên bán hàng/CSKH: 4 nhân sự (lương 6-8tr/tháng)&nbsp;<br>– Nhân viên Partime (3 ca từ 8-19h hàng ngày): 4 nhân sự (lương 14-16k/h)&nbsp;<br>*Mức lương tuỳ theo năng lực của ứng viên, khi phỏng vấn sẽ trao đổi cụ thể hơn</p></div></div></div></div></h1><h3 style="color: rgb(10, 10, 10); width: 779.1px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Roboto, sans-serif;">II. YÊU CẦU CHUNG</h3><h1 style="margin-bottom: 10px; font-family: Roboto, Helvetica, Arial, sans-serif; font-weight: 700; line-height: 28px; color: rgb(68, 68, 68); font-size: 17px; padding-top: 15px; padding-bottom: 5px; border-bottom: 2px solid rgb(221, 221, 221);"><div class="mui-zebra-module" data-module-id="icms-5019644-1526365812889" data-rmc-id="icms-5019644-1526365812889" data-id="35170" data-name="lzdmod-lzd-act-richtext" data-version="5.0.9" data-cfg-id="undefined" data-spm="icms-5019644-1526365812889" style="color: rgb(0, 0, 0); font-family: Roboto-Regular, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: medium; font-weight: 400;"><div class="lzd-act-richtext" data-spm-anchor-id="a2o4n.11531481.icms-5019644-1526365812889.i0.db802f244ZupyU" style="margin-top: 8px; padding: 8px; overflow-wrap: break-word; word-break: keep-all; overflow: hidden; font-family: Arial, Verdana, sans-serif !important; line-height: normal !important;"><div class="inner-content" style="margin-right: auto; margin-left: auto; width: 1188px; overflow: hidden;"><div class="text_exposed_show" style="color: rgb(40, 40, 40); font-family: Roboto, sans-serif; font-size: 16px;"><p style="margin-bottom: 1.3em;">1. Đối với kế toán:&nbsp;<br>– Tốt nghiệp Đại học trở lên, chuyên ngành kế toán/kiểm toán<br>– Yêu cầu kinh nghiệm trên 1 năm, sử dụng thành thạo 1 số phần mềm kế toán thông dụng<br>– Quản lý, đối chiếu công nợ, lập báo cáo thu chi hàng tháng của công ty&nbsp;<br>– Nhanh nhẹn, thật thà, ý thức làm việc nhóm tốt</p><p style="margin-bottom: 1.3em;">2. Đối với nhân viên bán hàng/CSKH:&nbsp;<br>– Kỹ năng giao tiếp tốt, thái độ phục vụ tốt, năng động, nhiệt tình, chăm chỉ<br>– Yêu thích cây cảnh là một lợi thế<br>– Ưu tiên các bạn có kinh nghiệm bán hàng online</p><p style="margin-bottom: 1.3em;">3. Đối với nhân viên Partime:<br>– Không yêu cầu kinh nghiệm, ca làm việc linh động&nbsp;<br>– Hỗ trợ bán hàng, chăm sóc khách hàng, sắp xếp, chăm sóc cây&nbsp;<br>– Thời gian làm việc tối thiểu 4 buổi/tuần</p></div></div></div></div></h1><h3 style="color: rgb(10, 10, 10); width: 779.1px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Roboto, sans-serif;">III. QUYỀN LỢI</h3><h1 style="margin-bottom: 10px; font-family: Roboto, Helvetica, Arial, sans-serif; font-weight: 700; line-height: 28px; color: rgb(68, 68, 68); font-size: 17px; padding-top: 15px; padding-bottom: 5px; border-bottom: 2px solid rgb(221, 221, 221);"><div class="mui-zebra-module" data-module-id="icms-5019644-1526365812889" data-rmc-id="icms-5019644-1526365812889" data-id="35170" data-name="lzdmod-lzd-act-richtext" data-version="5.0.9" data-cfg-id="undefined" data-spm="icms-5019644-1526365812889" style="color: rgb(0, 0, 0); font-family: Roboto-Regular, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: medium; font-weight: 400;"><div class="lzd-act-richtext" data-spm-anchor-id="a2o4n.11531481.icms-5019644-1526365812889.i0.db802f244ZupyU" style="margin-top: 8px; padding: 8px; overflow-wrap: break-word; word-break: keep-all; overflow: hidden; font-family: Arial, Verdana, sans-serif !important; line-height: normal !important;"><div class="inner-content" style="margin-right: auto; margin-left: auto; width: 1188px; overflow: hidden;"><div class="text_exposed_show" style="color: rgb(40, 40, 40); font-family: Roboto, sans-serif; font-size: 16px;"><p style="margin-bottom: 1.3em;">– Thu nhập cạnh tranh, xét duyệt tăng lương theo năng lực<br>– Hưởng các chế độ BHXH, BHYT, BHTN đầy đủ theo luật định<br>– Có cơ hội đào tạo, phát triển năng lực cá nhân trong môi trường chuyên nghiệp, năng động<br>– Đào tạo từ A-Z về các phần mềm quản lý, kỹ năng bán hàng, chốt sale, Telesale…</p></div></div></div></div></h1><h3 style="color: rgb(10, 10, 10); width: 779.1px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Roboto, sans-serif;">IV. HƯỚNG DẪN ỨNG TUYỂN</h3><h1 style="margin-bottom: 10px; font-family: Roboto, Helvetica, Arial, sans-serif; font-weight: 700; line-height: 28px; color: rgb(68, 68, 68); font-size: 17px; padding-top: 15px; padding-bottom: 5px; border-bottom: 2px solid rgb(221, 221, 221);"><div class="mui-zebra-module" data-module-id="icms-5019644-1526365812889" data-rmc-id="icms-5019644-1526365812889" data-id="35170" data-name="lzdmod-lzd-act-richtext" data-version="5.0.9" data-cfg-id="undefined" data-spm="icms-5019644-1526365812889" style="color: rgb(0, 0, 0); font-family: Roboto-Regular, &quot;Helvetica Neue&quot;, Helvetica, Tahoma, Arial, sans-serif; font-size: medium; font-weight: 400;"><div class="lzd-act-richtext" data-spm-anchor-id="a2o4n.11531481.icms-5019644-1526365812889.i0.db802f244ZupyU" style="margin-top: 8px; padding: 8px; overflow-wrap: break-word; word-break: keep-all; overflow: hidden; font-family: Arial, Verdana, sans-serif !important; line-height: normal !important;"><div class="inner-content" style="margin-right: auto; margin-left: auto; width: 1188px; overflow: hidden;"><div class="text_exposed_show" style="color: rgb(40, 40, 40); font-family: Roboto, sans-serif; font-size: 16px;"><p style="margin-bottom: 1.3em;">– Nộp hồ sơ và phỏng vấn trực tiếp tại: Số 1, Ngõ 213, Giáp Nhất, Thanh Xuân, Hà Nội<br>– Điện thoại: Mr. Dũng 096.771.6467 hoặc 094.822.5678<br>– Gửi CV qua email: cayxinh.vn@gmail.com</p><p style="margin-bottom: 1.3em;"><em>Mọi thắc mắc xin vui lòng liên hệ trực tiếp để được giải đáp, xin cảm ơn!</em></p></div></div></div></div></h1></div>', N'gioithieu/tuyen-dung.jpg', NULL, N'metakey', N'metadesc', CAST(N'2019-02-15T00:00:00' AS SmallDateTime), 9, CAST(N'2020-10-31T14:23:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[post] ([ID], [topid], [title], [slug], [detail], [img], [type], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (29, 1, N'Giới thiệu', N'gioi-thieu', N'<header class="entry-header" style="color: rgb(40, 40, 40); font-family: Roboto, sans-serif;"><div class="entry-header-text entry-header-text-top text-left" style="padding: 0px 0px 1.5em;"><h6 class="entry-category is-xsmall" style="color: rgb(10, 10, 10); width: 786px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 0.7em; opacity: 0.8; line-height: 1.05; letter-spacing: 0.05em; text-transform: uppercase; font-family: Roboto, sans-serif;"><a href="https://cayxinh.vn/kien-thuc-cay-canh" rel="category tag" style="touch-action: manipulation; color: rgb(0, 178, 20);">KIẾN THỨC CÂY CẢNH</a></h6><h1 class="entry-title" style="color: rgb(10, 10, 10); width: 786px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Roboto, sans-serif;">6 bước đơn giản để sang chậu và thay đất mới cho cây</h1><div class="entry-meta uppercase is-xsmall" style="line-height: 1.2; letter-spacing: 0px; font-size: 15px; color: gray;"><span class="posted-on">Posted on&nbsp;<a href="https://cayxinh.vn/6-buoc-don-gian-de-sang-chau-va-thay-dat-moi-cho-cay.html" rel="bookmark" style="touch-action: manipulation; color: rgb(0, 178, 20);"><time class="entry-date published" datetime="2020-10-28T23:03:24+07:00">28/10/2020</time></a></span><span class="byline">&nbsp;by&nbsp;<span class="meta-author vcard"><a class="url fn n" href="https://cayxinh.vn/author/luongtham125" style="touch-action: manipulation; color: rgb(0, 178, 20);">Cây Xinh</a></span></span></div></div></header><div class="entry-content single-page" style="padding-top: 0px; padding-bottom: 0px; color: rgb(40, 40, 40); font-family: Roboto, sans-serif;"><div id="toc_container" class="toc_white no_bullets contracted" style="background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 1px solid rgb(187, 230, 200); padding: 10px; margin-bottom: 1em; width: auto; display: table; font-size: 15.2px;"><p class="toc_title" style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-align: center; padding: 0px;">Mục lục chính&nbsp;<span class="toc_toggle" style="font-size: 13.68px;">[<a href="https://cayxinh.vn/6-buoc-don-gian-de-sang-chau-va-thay-dat-moi-cho-cay.html#" style="touch-action: manipulation; color: rgb(0, 178, 20); text-shadow: none;">Hiện</a>]</span></p></div><p style="margin-bottom: 1.3em; text-align: justify;">Cây cảnh từ lâu đã trở thành thú vui không thể thiếu trong cuộc sống mỗi người. Đặc biệt là trong những năm gần đây, cây xanh được đưa và trồng trong nhà như một xu thế tất yếu. Nó không chỉ giải quyết nhu cầu về không gian sống xanh mà còn mang lại những giá trị tinh thần vô giá giúp cho con người sống nhẹ nhàng, thư thái hơn.</p><div class="meta-related" style="margin-bottom: 15px; background: rgb(230, 244, 255); padding: 15px 0px;"><div class="rpbt_shortcode"><ul style="list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 0px; margin-left: 15px;"><li style="margin-bottom: 2px; margin-left: 1.3em; color: rgb(0, 146, 255); font-size: 15px;"><a href="https://cayxinh.vn/cay-xinh-dia-chi-cung-cap-qua-tang-doanh-nghiep-chat-luong.html" style="touch-action: manipulation; color: rgb(0, 178, 20);">Cây Xinh – Địa chỉ cung cấp quà tặng doanh nghiệp chất lượng</a></li><li style="margin-bottom: 2px; margin-left: 1.3em; color: rgb(0, 146, 255); font-size: 15px;"><a href="https://cayxinh.vn/kinh-nghiem-kinh-doanh-cay-canh-nhat-dinh-thanh-cong.html" style="touch-action: manipulation; color: rgb(0, 178, 20);">Kinh nghiệm kinh doanh cây cảnh nhất định thành công</a></li><li style="margin-bottom: 2px; margin-left: 1.3em; color: rgb(0, 146, 255); font-size: 15px;"><a href="https://cayxinh.vn/goi-y-11-mon-qua-tang-cay-canh-cho-ngay-phu-nu-viet-nam-20-10.html" style="touch-action: manipulation; color: rgb(0, 178, 20);">Gợi ý 11 món quà tặng cây cảnh cho ngày Phụ nữ Việt Nam 20/10</a></li><li style="margin-bottom: 2px; margin-left: 1.3em; color: rgb(0, 146, 255); font-size: 15px;"><a href="https://cayxinh.vn/huong-dan-chi-tiet-cach-tuoi-nuoc-cho-cay-trong-trong-nha.html" style="touch-action: manipulation; color: rgb(0, 178, 20);">Hướng dẫn chi tiết cách tưới nước cho cây trồng trong nhà</a></li><li style="margin-bottom: 2px; margin-left: 1.3em; color: rgb(0, 146, 255); font-size: 15px;"><a href="https://cayxinh.vn/dac-diem-cua-cay-trong-trong-nha.html" style="touch-action: manipulation; color: rgb(0, 178, 20);">Đặc điểm của cây trồng trong nhà? 5 loại cây cảnh giúp không gian sáng bừng</a></li></ul></div></div><p style="margin-bottom: 1.3em; text-align: justify;">Không chỉ lựa chọn và chăm sóc các mẫu cây trồng có sẵn khi mua tại các cửa hàng cây cảnh, nhiều người lại thích tự tay trồng cho mình một chậu cây ưng ý, bắt đầu từ khâu chọn cây, sang chậu và thay đất mới. Đối với họ, mầm sống do chính mình trồng chính là tâm huyết, là tình cảm và là hy vọng gửi gắm vào đó.</p><p style="margin-bottom: 1.3em; text-align: justify;"><img class="aligncenter size-full wp-image-18391" src="https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-2.jpg" alt="hướng dẫn sang chậu và thay đấy cho cây" width="800" height="533" srcset="https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-2.jpg 800w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-2-600x400.jpg 600w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-2-768x512.jpg 768w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-2-510x340.jpg 510w" sizes="(max-width: 800px) 100vw, 800px" style="max-width: 100%; height: auto; display: block; opacity: 1; transition: opacity 1s ease 0s; clear: both; margin: 0px auto;"></p><p style="margin-bottom: 1.3em; text-align: justify;">Trong bài viết sau đây,&nbsp;Cây Xinh&nbsp;hướng dẫn bạn 6 bước đơn giản để sang chậu và thay đất mới cho cây. Hy vọng bài viết sẽ giúp ích cho những ai đang có ý định tự tay trồng cho mình hoặc người thân yêu những chậu cây xinh xắn.</p><h2 style="color: green; width: 786px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 20px; line-height: 1.3; font-family: Roboto, sans-serif; text-align: justify;"><span id="Buoc_1_Chon_chau_va_dat_moi_thay_cho_cay" style="-webkit-box-decoration-break: clone;">Bước 1: Chọn chậu và đất mới thay cho cây</span></h2><p style="margin-bottom: 1.3em; text-align: justify;">Chọn chậu là bước vô cùng quan trọng, nó quyết định đến sự phát triển của cây sau này. Các loại cây để bàn, cây trồng trong nhà để đảm bảo tính thẩm mỹ đều cần phải được chứa trong các chậu phù hợp cả về kích thước, chất liệu lẫn mẫu mã.&nbsp;</p><figure id="attachment_18392" aria-describedby="caption-attachment-18392" class="wp-caption aligncenter" style="margin-right: auto; margin-bottom: 2em; margin-left: auto; clear: both; max-width: 100%; width: 800px;"><img class="size-full wp-image-18392" src="https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b1.jpg" alt="Bước 1: Chọn chậu và đất mới thay cho cây" width="800" height="800" srcset="https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b1.jpg 800w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b1-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b1-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b1-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b1-247x247.jpg 247w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b1-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b1-100x100.jpg 100w" sizes="(max-width: 800px) 100vw, 800px" style="max-width: 100%; height: auto; display: inline-block; opacity: 1; transition: opacity 1s ease 0s;"><figcaption id="caption-attachment-18392" class="wp-caption-text" style="text-align: center; padding: 0.4em; font-size: 0.9em; background: rgba(0, 0, 0, 0.05); font-style: italic;">Bước 1: Chọn chậu và đất mới thay cho cây</figcaption></figure><p style="margin-bottom: 1.3em; text-align: justify;">Lưu ý: Các loại cây trồng phải được trồng trong một chiếc chậu có kích thước phù hợp để đảm bảo rằng nước được truyền đi nuôi cây dễ dàng. Cây trồng trong các chậu quá nhỏ có thể bị “bó rễ”, nghĩa là rễ chiếm hết không gian. Cây trong chậu quá lớn có thể không giữ được nước trong đất và vì vậy sẽ bị khô héo.</p><p style="margin-bottom: 1.3em; text-align: justify;">Bên cạnh đó, thay đất mới cho cây là một việc làm rất cần thiết. Bởi các cây khi trồng trong các chậu ươm từ vườn qua thời gian đã hết chất dinh dưỡng. Thay đất mới đồng nghĩa với việc cung cấp thêm chất dinh dưỡng giúp cây kích thích rễ mới mọc ra và phát triển tốt hơn.</p><p style="margin-bottom: 1.3em; text-align: justify;">Loại đất phù hợp cho&nbsp;<a href="https://cayxinh.vn/danh-muc/cay-trong-trong-nha" target="_blank" rel="noopener noreferrer" style="touch-action: manipulation; color: rgb(0, 178, 20);">cây trồng trong nhà</a>&nbsp;nói chung nên là loại đất thoát nước tốt, đề phòng tình trạng phòng bí, khả năng thoát nước kém dễ làm úng và chết cây. Tuy nhiên với mỗi loại cây trồng bạn nên nghiên cứu và sử dụng loại đất trộn theo tỷ lệ thích hợp.</p><h2 style="color: green; width: 786px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 20px; line-height: 1.3; font-family: Roboto, sans-serif; text-align: justify;"><span id="Buoc_2_Nho_cay_ra_khoi_chau" style="-webkit-box-decoration-break: clone;">Bước 2: Nhổ cây ra khỏi chậu</span></h2><p style="margin-bottom: 1.3em; text-align: justify;">Bầu dùng để ươm cây thường là bầu nhựa hoặc nilon. Đối với hai loại này, bạn chỉ cần nhẹ nhàng tách cây ra khỏi chậu và trồng sang chậu mới. Tránh tác động mạnh làm đứt rễ cây và ảnh hưởng đến sự phát triển của cây.</p><p style="margin-bottom: 1.3em; text-align: justify;"><img class="aligncenter size-full wp-image-18393" src="https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b2.jpg" alt="Bước 2: Nhổ cây ra khỏi chậu" width="800" height="800" srcset="https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b2.jpg 800w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b2-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b2-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b2-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b2-247x247.jpg 247w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b2-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b2-100x100.jpg 100w" sizes="(max-width: 800px) 100vw, 800px" style="max-width: 100%; height: auto; display: block; opacity: 1; transition: opacity 1s ease 0s; clear: both; margin: 0px auto;"></p><p style="margin-bottom: 1.3em; text-align: justify;">Nếu như đất trong chậu quá chặt, bạn có hai phương pháp để lựa chọn. Một là dùng dao hoặc kéo cắt phần chậu cũ, phần còn lại bạn có thể tiếp tục trồng sang chậu mới. Nếu như khó khăn hơn, cách thứ 2 bạn có thể lựa chọn đó là ngâm vào chậu nước cho đất mềm ra, sau đó việc nhor cây ra khỏi chậu sẽ diễn ra dễ dàng.</p><h2 style="color: green; width: 786px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 20px; line-height: 1.3; font-family: Roboto, sans-serif; text-align: justify;"><span id="Buoc_3_Xu_ly_bau_re" style="-webkit-box-decoration-break: clone;">Bước 3: Xử lý bầu rễ</span></h2><p style="margin-bottom: 1.3em; text-align: justify;">Đây là bước khá quan trọng đòi hỏi bạn phải tiến hành cẩn thận. Sau khi nhổ cây ra khỏi chậu, bộ rễ của cây hiện ra, nếu như chỗ nào bị thừa rễ bạn có thể tỉa bớt đi, giúp cây tập trung chất dinh dưỡng sản sinh rễ mới nhiều hơn, khỏe mạnh hơn.</p><p style="margin-bottom: 1.3em; text-align: justify;"><img class="aligncenter size-full wp-image-18394" src="https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b3.jpg" alt="Bước 3: Xử lý bầu rễ" width="800" height="800" srcset="https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b3.jpg 800w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b3-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b3-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b3-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b3-247x247.jpg 247w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b3-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b3-100x100.jpg 100w" sizes="(max-width: 800px) 100vw, 800px" style="max-width: 100%; height: auto; display: block; opacity: 1; transition: opacity 1s ease 0s; clear: both; margin: 0px auto;"></p><p style="margin-bottom: 1.3em; text-align: justify;">Tuy nhiên bạn cũng không nên quá mạnh tay tỉa hết rễ của cây đi bởi cây sẽ đột nhiên mất đi cơ quan quan trọng hấp thu nước, cây mới trồng nên sức chống chọi cũng sẽ không được hoàn hảo như cây đã trồng lâu ngày trong chậu.</p><h2 style="color: green; width: 786px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 20px; line-height: 1.3; font-family: Roboto, sans-serif; text-align: justify;"><span id="Buoc_4_Sang_chau_va_thay_dat_cho_cay" style="-webkit-box-decoration-break: clone;">Bước 4: Sang chậu và thay đất cho cây</span></h2><p style="margin-bottom: 1.3em; text-align: justify;">Sau khi đã xử lý xong xuôi bộ rễ của cây thì bạn chuyển sang bước sang chậu và thay đất cho cây. Đặt cây vào chậu đã chuẩn bị sẵn và tiến hành thêm đất. Kiểm tra lần cuối xem cây còn vấn đề gì cần xử lý nữa không, chẳng hạn lá vàng thì nên tỉa bớt, cành gãy hay dễ gãy thì nên loại bỏ.</p><p style="margin-bottom: 1.3em; text-align: justify;"><img class="aligncenter size-full wp-image-18395" src="https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b4.jpg" alt="Bước 4: Sang chậu và thay đất cho cây" width="800" height="800" srcset="https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b4.jpg 800w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b4-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b4-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b4-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b4-247x247.jpg 247w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b4-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b4-100x100.jpg 100w" sizes="(max-width: 800px) 100vw, 800px" style="max-width: 100%; height: auto; display: block; opacity: 1; transition: opacity 1s ease 0s; clear: both; margin: 0px auto;"></p><p style="margin-bottom: 1.3em; text-align: justify;">Khi đặt vào chậu mới, nên lưu ý chọn mặt đẹp nhất, ngắm được nhiều tán lá tương ứng với mặt chính diện khi ngắm chậu. Để cây ở trung tâm chậu hoặc lệch một chút về bên trái, bên phải, đằng sau,… tùy theo ý tưởng thiết kế chậu cây của bạn.</p><p style="margin-bottom: 1.3em; text-align: justify;">Đất để cố định cho cây trong chậu gồm 3 lớp cơ bản nhất:</p><p style="margin-bottom: 1.3em; text-align: justify;">– Lớp 1: Tạo độ thông thoáng và thoát nước cho cây. Thông thường đây sẽ là lớp sỉ than hoặc sỏi nhẹ.</p><p style="margin-bottom: 1.3em; text-align: justify;">– Lớp 2: Đây là lớp đất quan trọng cung cấp chất dinh dưỡng đảm bảo sự phát triển của cây. Thông thường bạn sẽ tìm thấy loại đất chuyên dụng để trồng các loại cây cảnh tại các cửa hàng cung cấp cây cảnh. Hoặc trước tiên bạn nên tìm hiểu xem loại đất nào phù hợp với loại cây mình đang cần trồng.</p><p style="margin-bottom: 1.3em; text-align: justify;">– Lớp 3: Lớp trên mặt, đây là lớp cố định giúp cho cây đứng vững không bị ngả nghiêng.&nbsp;</p><h2 style="color: green; width: 786px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 20px; line-height: 1.3; font-family: Roboto, sans-serif; text-align: justify;"><span id="Buoc_5_Them_dat_va_nen_dat_xung_quanh" style="-webkit-box-decoration-break: clone;">Bước 5: Thêm đất và nén đất xung quanh</span></h2><p style="margin-bottom: 1.3em; text-align: justify;">Một lưu ý nho nhỏ ở bước này đó là không nên nén đất quá chặt bởi nó sẽ làm cho rễ cây bị bí và không hút được nước trong thời gian đầu. Hay để đất tự nén chặt tự nhiên trải qua các lần tưới nước sau này.</p><p style="margin-bottom: 1.3em; text-align: justify;"><img class="aligncenter size-full wp-image-18396" src="https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b5.jpg" alt="Bước 5: Thêm đất và nén đất xung quanh" width="800" height="800" srcset="https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b5.jpg 800w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b5-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b5-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b5-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b5-247x247.jpg 247w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b5-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b5-100x100.jpg 100w" sizes="(max-width: 800px) 100vw, 800px" style="max-width: 100%; height: auto; display: block; opacity: 1; transition: opacity 1s ease 0s; clear: both; margin: 0px auto;"></p><h2 style="color: green; width: 786px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 20px; line-height: 1.3; font-family: Roboto, sans-serif; text-align: justify;"><span id="Buoc_6_Tuoi_nuoc_am_cho_chau_cay" style="-webkit-box-decoration-break: clone;">Bước 6: Tưới nước ẩm cho chậu cây</span></h2><p style="margin-bottom: 1.3em; text-align: justify;">Cây mới trồng nên để ở chỗ râm mát và được tưới qua một chút nước đủ để làm ẩm đất cho rễ cây dễ dàng hấp thụ nước trong những hôm đầu mới sang chậu. Nên chú ý quan sát cây kỹ hơn khi mới trồng. Sau khi cây trồng ổn định bạn có thể mang cây ra chỗ thoáng nhiều ánh sáng và gió đế cây vươn mình lớn nhanh.</p><p style="margin-bottom: 1.3em; text-align: justify;"><img class="aligncenter size-full wp-image-18397" src="https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b6.jpg" alt="Bước 6: Tưới nước ẩm cho chậu cây" width="800" height="800" srcset="https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b6.jpg 800w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b6-400x400.jpg 400w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b6-280x280.jpg 280w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b6-768x768.jpg 768w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b6-247x247.jpg 247w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b6-510x510.jpg 510w, https://cayxinh.vn/wp-content/uploads/2020/10/huong-dan-thay-chau-b6-100x100.jpg 100w" sizes="(max-width: 800px) 100vw, 800px" style="max-width: 100%; height: auto; display: block; opacity: 1; transition: opacity 1s ease 0s; clear: both; margin: 0px auto;"></p><h2 style="color: green; width: 786px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 20px; line-height: 1.3; font-family: Roboto, sans-serif; text-align: justify;"><span id="Nhung_luu_y_khi_sang_chau_va_thay_dat_cho_cay" style="-webkit-box-decoration-break: clone;">Những lưu ý khi sang chậu và thay đất cho cây</span></h2><p style="margin-bottom: 1.3em; text-align: justify;">Sang chậu và thay đất cho cây là một việc làm dễ dàng mà bất kỳ ai cũng có thể tự làm được. Bạn có thể quan tâm tới một số lưu ý nhỏ sau đây:</p><p style="margin-bottom: 1.3em; text-align: justify;">– Nếu bạn kiểm tra rễ thấy có nhiều rễ hơn là đất, đây là một dấu hiệu tốt cho thấy bạn nên chọn một chậu lớn hơn.</p><p style="margin-bottom: 1.3em; text-align: justify;">– Nếu các lá của cây có kích thước không cân đối so với phía dưới, bạn cũng nên chuyển sang chậu có kích thước lớn hơn.&nbsp;</p><p style="margin-bottom: 1.3em; text-align: justify;">– Nên trồng cây vào chậu có lỗ thoát nước. Vì tưới quá nhiều nước thường làm chết cây. Chậu có đáy rắn có thể đọng nước và rễ cây có thể bị thối nếu ngâm trong đó quá lâu.</p><p style="margin-bottom: 1.3em; text-align: justify;">– Đặt một đĩa lót dưới chậu cây. Bởi nếu chậu của bạn sắp thoát nước, bạn chắc chắn không muốn nó thoát ra sàn nhà.</p><p style="margin-bottom: 1.3em; text-align: justify;">Với kinh nghiệm làm việc trong lĩnh vực cây cảnh, hầu hết các loại cây trồng trong nhà đều được&nbsp;Cây Xinh&nbsp;trồng và chăm sóc tốt nhất để đưa đến tay quý khách hàng. Bên cạnh đó, những kiến thức cây cảnh mà chúng tôi chia sẻ chắc chắn sẽ đem đến các bạn sự ngạc nhiên và thỏa mãn. Nếu có bất kỳ vấn đề nào còn thắc mắc, bạn liên hệ với Hotline chúng tôi để được hỗ trợ tốt nhất nhé!</p><div class="aiosrs-rating-wrap" data-schema-id="10822" style="margin-bottom: 10px;"><div class="aiosrs-star-rating-wrap " style="display: inline-block; vertical-align: middle;"><span class="aiosrs-star-rating dashicons dashicons-star-filled" data-index="1" style="font-family: dashicons; display: inline-block; line-height: 1; speak: none; text-decoration: inherit; text-rendering: auto; -webkit-font-smoothing: antialiased; width: 20px; height: 20px; font-size: 20px; vertical-align: top; text-align: center; transition: color 0.1s ease-in 0s; color: gold; cursor: pointer;"></span><span class="aiosrs-star-rating dashicons dashicons-star-filled" data-index="2" style="font-family: dashicons; display: inline-block; line-height: 1; speak: none; text-decoration: inherit; text-rendering: auto; -webkit-font-smoothing: antialiased; width: 20px; height: 20px; font-size: 20px; vertical-align: top; text-align: center; transition: color 0.1s ease-in 0s; color: gold; cursor: pointer;"></span><span class="aiosrs-star-rating dashicons dashicons-star-filled" data-index="3" style="font-family: dashicons; display: inline-block; line-height: 1; speak: none; text-decoration: inherit; text-rendering: auto; -webkit-font-smoothing: antialiased; width: 20px; height: 20px; font-size: 20px; vertical-align: top; text-align: center; transition: color 0.1s ease-in 0s; color: gold; cursor: pointer;"></span><span class="aiosrs-star-rating dashicons dashicons-star-filled" data-index="4" style="font-family: dashicons; display: inline-block; line-height: 1; speak: none; text-decoration: inherit; text-rendering: auto; -webkit-font-smoothing: antialiased; width: 20px; height: 20px; font-size: 20px; vertical-align: top; text-align: center; transition: color 0.1s ease-in 0s; color: gold; cursor: pointer;"></span><span class="aiosrs-star-rating dashicons dashicons-star-filled" data-index="5" style="font-family: dashicons; display: inline-block; line-height: 1; speak: none; text-decoration: inherit; text-rendering: auto; -webkit-font-smoothing: antialiased; width: 20px; height: 20px; font-size: 20px; vertical-align: top; text-align: center; transition: color 0.1s ease-in 0s; color: gold; cursor: pointer;"></span></div></div></div>', N'gioithieu/gioi-thieu.jpg', N'Post', N'a', N'a', CAST(N'2020-10-31T13:59:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:59:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[post] OFF
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (1, 16, 1, N'Cây Mộc Hương', N'cay-moc-huong', N'caycanhvanphong/cay-moc-huong.jpg', N'Cây Mộc Hương sở hữu những bông hoa với mùi hương ngọt ngào, là một trong những loài cây được đặc biệt nhiều người Việt Nam yêu thích. Đặc biệt, đây chính là sự lựa chọn không thể thiếu trong sân nhà.

Sản phẩm của Cây Xinh được cập nhật liên tục hàng ngày vì th', 100, 850000, 10, N'a', N'a', CAST(N'2020-10-31T12:50:00' AS SmallDateTime), 1, CAST(N'2020-10-31T12:50:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (2, 16, 19, N'Cây Cau Tiểu Trâm Thủy Sinh', N'cay-cau-tieu-tram-thuy-sinh', N'caycanhvanphong/cay-cau-tieu-tram-thuy-sinh.jpg', N'Cây Cau Tiểu Trâm thủy sinh (tên khoa học: Chamaedorea elegans) là loại cây trồng trong nhà không cần ánh sáng, dễ chăm sóc, đặc biêt hợp với người mệnh Mộc…', 100, 170000, 10, N'a', N'a', CAST(N'2020-10-31T12:54:00' AS SmallDateTime), 1, CAST(N'2020-10-31T12:54:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (3, 16, 19, N'Cây Vạn Niên Thanh Leo Cột', N'cay-van-nien-thanh-leo-cot', N'caycanhvanphong/cay-van-nien-thanh-leo-cot.jpg', N'Cây Vạn Niên Thanh Leo Cột', 100, 85000, 20, N'Cây Vạn Niên Thanh Leo Cột', N'Cây Vạn Niên Thanh Leo Cột', CAST(N'2020-10-31T12:55:00' AS SmallDateTime), 1, CAST(N'2020-10-31T12:55:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (4, 16, 19, N'Cây Cẩm Nhung', N'cay-cam-nhung', N'caycanhvanphong/cay-cam-nhung.jpg', N'Cây Cẩm Nhung (tên khoa học: Fittonia) là loại cây cảnh để bàn làm việc có vẻ đẹp hết sức độc đáo. Không những thế, chúng còn mang một giá trị phong thủy hết sức tốt lành với may mắn, tài lộc, thịnh vượng đến cho gia chủ…', 100, 500000, 5, N'Cây Cẩm Nhung', N'Cây Cẩm Nhung', CAST(N'2020-10-31T12:56:00' AS SmallDateTime), 1, CAST(N'2020-10-31T12:56:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (5, 16, 19, N'Cây Vạn Lộc', N'cay-van-loc', N'caycanhvanphong/cay-van-loc.jpg', N'Cây Vạn Lộc (tên khoa học: Aglaonema Rotundum Pink) có tốc độ sinh trưởng nhanh, dễ chăm sóc, phù hợp trang trí nội thất, phòng làm việc. Cây Vạn Lộc phong thủy tượng trưng cho sự may mắn, năng lượng tràn đầy và mang sự thịnh vượng, no đủ cho gia chủ.', 111, 160000, 10, N'a', N'â', CAST(N'2020-10-31T12:57:00' AS SmallDateTime), 1, CAST(N'2020-10-31T12:57:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (6, 16, 19, N'Cây Ngọc Ngân', N'cay-ngoc-ngan', N'caycanhvanphong/cay-ngoc-ngan.jpg', N'Cây Ngọc Ngân (tên khoa học: Aglaonema Costatum) thường dùng trang trí quán cà phê, văn phòng. Trong phong thủy cây có ý nghĩa mang đến sự may mắn, tài lộc…', 100, 130000, 10, N'a', N'a', CAST(N'2020-10-31T12:58:00' AS SmallDateTime), 1, CAST(N'2020-10-31T12:58:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (7, 16, 1, N'Cây hoa Dạ Yến Thảo', N'cay-hoa-da-yen-thao', N'caycanhvanphong/cay-hoa-da-yen-thao.jpg', N'Hoa Dạ Yến Thảo mang đến cho không gian sống nhiều màu sắc rực rỡ, bắt mắt. Đây là sự lựa chọn hoàn hảo cho những ai đang tìm kiếm loại cây trồng ban công dễ trồng và dễ chăm sóc…', 100, 150000, 10, N'a', N'b', CAST(N'2020-10-31T12:59:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:42:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (8, 16, 19, N'Cây Đuôi Công Tím', N'cay-duoi-cong-tim', N'caycanhvanphong/cay-duoi-cong-tim.jpg', N'Cây Đuôi Công Tím (tên khoa học: Calathea medallion/Calathea makoyana) với vẻ ngoài nổ bật, thu hút đã trở thành loại cây để bàn, cây văn phòng được ưa chuộng nhất hiện nay. Cây biểu trưng cho sự thịnh vượng và may mắn cho gia chủ.', 100, 310000, 10, N'a', N'a', CAST(N'2020-10-31T13:00:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:00:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (9, 17, 19, N'Tiểu cảnh Composite 04', N'tieu-canh-composite-04', N'tieucanhterrarium/tieu-canh-composite-04.jpg', N'Tiểu cảnh Composite 04', 100, 160000, 0, N'Tiểu cảnh Composite 04', N'Tiểu cảnh Composite 04', CAST(N'2020-10-31T13:03:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:03:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (10, 17, 1, N'Tiểu cảnh Thuỷ Tinh 15', N'tieu-canh-thuy-tinh-15', N'tieucanhterrarium/tieu-canh-thuy-tinh-15.jpg', N'Tiểu cảnh Thuỷ Tinh 15', 100, 150000, 0, N'Tiểu cảnh Thuỷ Tinh 15', N'Tiểu cảnh Thuỷ Tinh 15', CAST(N'2020-10-31T13:03:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:04:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (11, 17, 19, N'Tiểu cảnh gốm vẽ 28', N'tieu-canh-gom-ve-28', N'tieucanhterrarium/tieu-canh-gom-ve-28.jpg', N'Tiểu cảnh gốm vẽ 28', 100, 200000, 0, N'Tiểu cảnh gốm vẽ 28', N'Tiểu cảnh gốm vẽ 28', CAST(N'2020-10-31T13:04:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:04:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (12, 17, 19, N'Tiểu cảnh Thuỷ Tinh 50', N'tieu-canh-thuy-tinh-50', N'tieucanhterrarium/tieu-canh-thuy-tinh-50.jpg', N'Tiểu cảnh Thuỷ Tinh 50', 100, 200000, 10, N'Tiểu cảnh Thuỷ Tinh 50', N'Tiểu cảnh Thuỷ Tinh 50', CAST(N'2020-10-31T13:05:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:05:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (13, 20, 20, N'Chậu Gốm Sứ Hạt Dẻ S2', N'chau-gom-su-hat-de-s2', N'chaucanh/chau-gom-su-hat-de-s2.jpg', N'Chậu Gốm Sứ Hạt Dẻ S2', 100, 310000, 0, N'Chậu Gốm Sứ Hạt Dẻ S2', N'Chậu Gốm Sứ Hạt Dẻ S2', CAST(N'2020-10-31T13:07:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:07:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (14, 20, 20, N'Chậu Thủy Tinh Tròn', N'chau-thuy-tinh-tron', N'chaucanh/chau-thuy-tinh-tron.jpg', N'Chậu Thủy Tinh Tròn', 100, 243000, 10, N'Chậu Thủy Tinh Tròn', N'Chậu Thủy Tinh Tròn', CAST(N'2020-10-31T13:25:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:25:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (15, 16, 19, N'Chậu Gốm Sứ Kẻ Miệng', N'chau-gom-su-ke-mieng', N'caycanhvanphong/chau-gom-su-ke-mieng.jpg', N'Chậu Gốm Sứ Kẻ Miệng', 100, 500000, 30, N'Chậu Gốm Sứ Kẻ Miệng', N'Chậu Gốm Sứ Kẻ Miệng', CAST(N'2020-10-31T13:26:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:26:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (16, 20, 1, N'Chậu Gốm Đất Nung Bình Hoa', N'chau-gom-dat-nung-binh-hoa', N'chaucanh/chau-gom-dat-nung-binh-hoa.jpg', N'Chậu Gốm Đất Nung Bình Hoa', 100, 100000, 0, N'Chậu Gốm Đất Nung Bình Hoa', N'Chậu Gốm Đất Nung Bình Hoa', CAST(N'2020-10-31T13:26:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:28:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (17, 18, 19, N'Sen Đá Bắp Cải Tím', N'sen-da-bap-cai-tim', N'senda/sen-da-bap-cai-tim.jpg', N'Sen Đá Bắp Cải Tím', 100, 150000, 0, N'Sen Đá Bắp Cải Tím', N'Sen Đá Bắp Cải Tím', CAST(N'2020-10-31T13:28:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:28:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (18, 18, 19, N'Sen Đá Ngọc', N'sen-da-ngoc', N'senda/sen-da-ngoc.jpg', N'Sen Đá Ngọc', 100, 120000, 0, N'Sen Đá Ngọc', N'Sen Đá Ngọc', CAST(N'2020-10-31T13:29:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:29:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (19, 18, 19, N'Sen Đá Giọt Lệ', N'sen-da-giot-le', N'senda/sen-da-giot-le.jpg', N'Sen Đá Giọt Lệ', 100, 120000, 0, N'Sen Đá Giọt Lệ', N'Sen Đá Giọt Lệ', CAST(N'2020-10-31T13:29:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:29:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (20, 18, 19, N'Sen Đá Sỏi Thiên Thanh', N'sen-da-soi-thien-thanh', N'senda/sen-da-soi-thien-thanh.jpg', N'Sen Đá Sỏi Thiên Thanh', 100, 160000, 0, N'Sen Đá Sỏi Thiên Thanh', N'Sen Đá Sỏi Thiên Thanh', CAST(N'2020-10-31T13:30:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:30:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (21, 21, 19, N'Xương Rồng Astro Râu Dê', N'xuong-rong-astro-rau-de', N'xuongrong/xuong-rong-astro-rau-de.jpg', N'Xương Rồng Astro Râu Dê', 100, 160000, 0, N'Xương Rồng Astro Râu Dê', N'Xương Rồng Astro Râu Dê', CAST(N'2020-10-31T13:34:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:34:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (22, 16, 19, N'Xương rồng bóng vàng', N'xuong-rong-bong-vang', N'caycanhvanphong/xuong-rong-bong-vang.jpg', N'Xương rồng bóng vàng', 100, 70000, 0, N'Xương rồng bóng vàng', N'Xương rồng bóng vàng', CAST(N'2020-10-31T13:34:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:34:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (23, 21, 19, N'Xương Rồng Lông Thiên Nga', N'xuong-rong-long-thien-nga', N'xuongrong/xuong-rong-long-thien-nga.jpg', N'Xương Rồng Lông Thiên Nga', 100, 350000, 0, N'Xương Rồng Lông Thiên Nga', N'Xương Rồng Lông Thiên Nga', CAST(N'2020-10-31T13:34:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:34:00' AS SmallDateTime), 1, 1, 0)
INSERT [dbo].[product] ([ID], [catid], [Submenu], [name], [slug], [img], [detail], [number], [price], [pricesale], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status], [sold]) VALUES (24, 21, 19, N'Xương Rồng Mix 3 Cây', N'xuong-rong-mix-3-cay', N'xuongrong/xuong-rong-mix-3-cay.jpg', N'Xương Rồng Mix 3 Cây', 100, 168000, 0, N'Xương Rồng Mix 3 Cây', N'Xương Rồng Mix 3 Cây', CAST(N'2020-10-31T13:35:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:35:00' AS SmallDateTime), 1, 1, 0)
SET IDENTITY_INSERT [dbo].[product] OFF
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (1, 0, N'ADMIN', N'Quản trị viên Full quyền', N'ADMIN')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (2, 1, N'CUSTOMER', N'Khách hàng', N'CUSTOMER')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (3, 2, N'ACCOUNTANT', N'Kế toán, thống kê', N'ACCOUNTANT')
INSERT [dbo].[role] ([ID], [parentId], [accessName], [description], [GropID]) VALUES (7, 3, N'SALESMAN', N'Nhân viên bán hàng', N'SALESMAN')
SET IDENTITY_INSERT [dbo].[role] OFF
SET IDENTITY_INSERT [dbo].[slider] ON 

INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (3, N'Slider3333', N'slider3333', N'SliderShow', N'slider3333.jpg', 1, CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:49:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[slider] ([ID], [name], [url], [position], [img], [orders], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (8, N'dddddd', N'dddddd', N'SliderShow', N'dddddd.jpg', 1, CAST(N'2020-10-31T13:49:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:49:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[slider] OFF
SET IDENTITY_INSERT [dbo].[topic] ON 

INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Giới Thiệu', N'gioi-thieu', 0, 1, N'metakey', N'metadesc', CAST(N'2019-03-15T00:00:00' AS SmallDateTime), 9, CAST(N'2019-11-26T13:12:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[topic] ([ID], [name], [slug], [parentid], [orders], [metakey], [metadesc], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (16, N'Tin Tức', N'tin-tuc', 0, 1, N'a', N'a', CAST(N'2020-10-31T13:57:00' AS SmallDateTime), 1, CAST(N'2020-10-31T13:57:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[topic] OFF
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (1, N'Nguyễn Văn A', N'admin', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'Nam', N'0975271384', N'ádasd', 0, CAST(N'2020-05-10T15:45:00' AS SmallDateTime), 1, CAST(N'2020-08-20T11:25:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (6, N'Nguyễn Văn A', N'khachhang1', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'Nam', N'333333333333333', N'bav', 1, CAST(N'2020-05-10T15:54:00' AS SmallDateTime), 6, CAST(N'2020-08-20T11:20:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (8, N'Nguyễn Văn A', N'khachhang2', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'Nam', N'1231231231', N'ádasd', 1, CAST(N'2020-05-08T16:43:00' AS SmallDateTime), 1, CAST(N'2020-08-20T11:25:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (11, N'Nguyễn Văn A', N'Accountant', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'nu', N'13212123', N'132121', 2, CAST(N'2020-05-07T00:00:00' AS SmallDateTime), 1, CAST(N'2020-08-20T11:16:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (13, N'Nguyễn Văn A', N'Salesman', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'Nam', N'13212123', N'ádasd', 3, CAST(N'2020-05-07T00:00:00' AS SmallDateTime), 1, CAST(N'2020-08-20T11:20:00' AS SmallDateTime), 1, 1)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (14, N'Nguyễn Văn A', N'khachhang123', N'4QrcOUm6Wau+VuBX8g+IPg==', N'abc@gmail.com', N'Nam', N'0975271384', N'ádasd', 1, CAST(N'2020-05-08T16:49:00' AS SmallDateTime), 1, CAST(N'2020-05-08T16:49:00' AS SmallDateTime), 1, 0)
INSERT [dbo].[user] ([ID], [fullname], [username], [password], [email], [gender], [phone], [img], [access], [created_at], [created_by], [updated_at], [updated_by], [status]) VALUES (15, N'Nguyễn Văn A', N'khachhang112', N'i5YoL5fbmnteeBT/9l4G1A==', N'abc@gmail.com', N'nam', N'0975271384', N'defalt.png', 1, CAST(N'2020-06-12T09:45:00' AS SmallDateTime), 1, CAST(N'2020-08-20T11:20:00' AS SmallDateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[user] OFF
ALTER TABLE [dbo].[category] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[contact] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[contact] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[contact] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[contact] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [link]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [tableid]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [created_by]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [updated_by]
GO
ALTER TABLE [dbo].[ordersdetail] ADD  DEFAULT ((1)) FOR [priceSale]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT (NULL) FOR [topid]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT (NULL) FOR [detail]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT (NULL) FOR [img]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ('post') FOR [type]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[post] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT (NULL) FOR [sold]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ((1)) FOR [orders]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT (NULL) FOR [updated_by]
GO
ALTER TABLE [dbo].[slider] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('Nam') FOR [gender]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [img]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [created_at]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [created_by]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [updated_at]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [updated_by]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [status]
GO
