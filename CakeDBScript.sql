USE [Tort]
GO
/****** Object:  Table [dbo].[CakeDecoration]    Script Date: 19.12.2020 19:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CakeDecoration](
	[Vendor_name] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Units] [nvarchar](50) NULL,
	[Amount] [int] NULL,
	[Main_vendor] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Price] [nvarchar](50) NULL,
	[Weight] [nvarchar](50) NULL,
 CONSTRAINT [PK__cake_dec__5CDBFC236B76775B] PRIMARY KEY CLUSTERED 
(
	[Vendor_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 19.12.2020 19:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[Label] [nvarchar](50) NOT NULL,
	[Equipment_type] [nvarchar](50) NOT NULL,
	[Characteristics] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Label] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentType]    Script Date: 19.12.2020 19:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentType](
	[Name] [nvarchar](50) NOT NULL,
	[Size] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Epuipmen__737584F7DFF01D0D] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredients]    Script Date: 19.12.2020 19:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredients](
	[Vendor_code] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Units] [nvarchar](50) NULL,
	[Amount] [nvarchar](50) NULL,
	[Main_vendor] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[Price] [nvarchar](50) NULL,
	[GOST] [nvarchar](50) NULL,
	[Packaging] [nvarchar](50) NULL,
	[Characteristic] [nvarchar](50) NULL,
 CONSTRAINT [PK__Ingridie__C9B23DD874CCA6D0] PRIMARY KEY CLUSTERED 
(
	[Vendor_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operations]    Script Date: 19.12.2020 19:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operations](
	[Product] [nvarchar](50) NOT NULL,
	[Operation] [nvarchar](50) NOT NULL,
	[Serial_number] [int] IDENTITY(0,1) NOT NULL,
	[Equiipment_type] [nvarchar](50) NULL,
	[Time_for_operation] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Product] ASC,
	[Operation] ASC,
	[Serial_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 19.12.2020 19:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Number] [int] IDENTITY(0,1) NOT NULL,
	[Date] [smalldatetime] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Product] [nvarchar](50) NOT NULL,
	[User] [nvarchar](50) NOT NULL,
	[Manager] [nvarchar](50) NULL,
	[Price] [money] NULL,
	[Plan_comp_date] [smalldatetime] NULL,
	[Examples] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[Number] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 19.12.2020 19:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Name] [nvarchar](50) NOT NULL,
	[Size] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecCakeDecoration]    Script Date: 19.12.2020 19:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecCakeDecoration](
	[Product] [nvarchar](50) NOT NULL,
	[Cake_decoration] [nvarchar](50) NOT NULL,
	[Amount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Product] ASC,
	[Cake_decoration] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecIngredients]    Script Date: 19.12.2020 19:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecIngredients](
	[Product] [nvarchar](50) NOT NULL,
	[Ingredient] [int] NOT NULL,
	[Amount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Product] ASC,
	[Ingredient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecSFProducts]    Script Date: 19.12.2020 19:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecSFProducts](
	[Product] [nvarchar](50) NOT NULL,
	[SFProduct] [nvarchar](50) NOT NULL,
	[Amount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Product] ASC,
	[SFProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tools]    Script Date: 19.12.2020 19:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tools](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ToolName] [nvarchar](255) NULL,
	[ToolType] [nvarchar](255) NULL,
	[DateOfBuy] [date] NULL,
	[Amount] [int] NULL,
	[Description] [nvarchar](255) NULL,
	[Wear] [nvarchar](255) NULL,
	[Provider] [nvarchar](255) NULL,
 CONSTRAINT [PK_Tools] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19.12.2020 19:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Last_name] [nvarchar](50) NOT NULL,
	[First_name] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 19.12.2020 19:39:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[Name] [nvarchar](50) NOT NULL,
	[Adress] [nvarchar](50) NOT NULL,
	[Date_of_delivery] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00001158', N'Фигурка новорожденный h5см  31603', N'шт.', 5, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00001184', N'Какао алкализ Кот Д-Ивуар Сargill АМ 70', N'кг.', 1, NULL, N'Какао', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00001193', N'Желейные шарики ВИШНЯ М 8-10', N'кг.', 4, NULL, N'Желейные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00001198', N'картинки вафельные d45 ПОД ЗАКАЗ  27699', N'упак.', 7, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00001254', N'картинки ваф ФРУКТЫ d14.5 24 шт (уп)', N'упак.', 8, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'0000127', N'Мармелад Ежевичка 4 гр 300 шт', N'упак.', 4, NULL, N'Желейные украшения', NULL, N'4 гр')
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00001270', N'Крошка Карибе шоколадная', N'кг.', 7, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00001271', N'картинки ваф НОВОРОЖДЕННЫЙ d14,5 24 шт 30591 (уп)', N'упак.', 10, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00001321', N'Капли шоколадные Carribe Fondaente Gocce 850', N'кг.', 1, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00001354', N'Посыпки Осен.листья', N'кг.', 10, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00001355', N'Посыпки Ромбики', N'кг.', 7, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00001364', N'лента для цветов бумажная 0,7см 250м БЕЛАЯ  12330', N'шт.', 1, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00001417', N'Серебряные шарики 6мм', N'кг.', 1, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00001746', N'Крошка Карибе белая', N'кг.', 9, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00001747', N'Диски белые Карибе', N'кг.', 6, NULL, N'Шоколад', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'0000199', N'Посыпка Конфетти яркие мини 0,75', N'кг.', 1, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00002502', N'Желейные шарики ЛИМОН М 8-10', N'кг.', 8, NULL, N'Желейные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00002531', N'Серебряные шарики 8мм', N'кг.', 3, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00002780', N'Желейные шарики ЯБЛОКО М 8-10', N'кг.', 8, NULL, N'Желейные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00002924', N'Мармелад фигурный Лимон 19 г 16 шт', N'упак.', 10, NULL, N'Желейные украшения', NULL, N'19г')
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00003013', N'Какао-порошок Элитный натур.', N'кг.', 10, NULL, N'Какао', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00003069', N'Диски шоколадные Карибе', N'кг.', 6, NULL, N'Шоколад', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00003099', N'Золотые шарики 4мм', N'кг.', 4, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00003285', N'Вафельные БАБОЧКИ цветные с рисунком 180шт микс', N'упак.', 1, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00003329', N'Посыпки Звезды К/б/с', N'кг.', 4, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00003891', N'Посыпка Шарики роз. перл.', N'кг.', 7, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00003941', N'Посыпки Звезды К/б/3', N'кг.', 5, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00003975', N'Посыпка Шарики микс гол/зел/роз. перл.', N'кг.', 9, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00003976', N'Посыпка Шарики микс гол/лил/желт. перл.', N'кг.', 5, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00003977', N'Посыпка Шарики микс гол/лил/роз. перл.', N'кг.', 9, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004171', N'Мармелад Ежевичка 4г 300 фиг. F-002', N'упак.', 1, NULL, N'Желейные украшения', NULL, N'4г')
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004172', N'Мармелад Клубничка 200шт', N'упак.', 4, NULL, N'Желейные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004173', N'Мармелад Малинка 4г 300 фиг. F-001', N'упак.', 2, NULL, N'Желейные украшения', NULL, N'4г')
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004335', N'Вафельные МАРГАРИТКИ микс (200шт)', N'упак.', 7, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004336', N'Вафельные НАРЦИССЫ махровый (70шт/уп) 8712', N'упак.', 5, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004339', N'Вафельная РОЗА  большая Микс (56шт/уп)', N'упак.', 1, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004340', N'Вафельная РОЗА большая сложная микс (28шт/уп)', N'упак.', 7, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004341', N'Вафельная РОЗА малая (160шт/уп) Малина', N'упак.', 8, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004342', N'Вафельная РОЗА малая сложная чай (80шт/уп)', N'упак.', 6, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004364', N'Вафельная ФИАЛКА микс (160)', N'упак.', 2, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004829', N'Мармелад фигурный Машинка большая 85г 4шт', N'шт.', 6, NULL, N'Желейные украшения', NULL, N'85г')
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004837', N'Посыпка Сердечки разноцветные', N'кг.', 6, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004860', N'Фигурка свадебная  ТG660420 пара ссердцем 31621', N'шт.', 9, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004861', N'Фигурка свадебная ТG660773 пара в белом 31623 14/6', N'шт.', 2, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004866', N'Фигурка свадебная SG013506 ГОЛУБИ', N'шт.', 4, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00004929', N'Мармелад фигурный Красная смородина 20 г16 шт', N'упак.', 8, NULL, N'Желейные украшения', NULL, N'20 г')
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005014', N'Фигурка свадебная AY62691U-7   h26 d10 см c подсве', N'шт.', 5, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005037', N'Мармелад фигурный Виноград зеленый 20 г 16шт', N'упак.', 6, NULL, N'Желейные украшения', NULL, N'20 г')
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005113', N'Рис воздушный (белый)2-4 мм деко-про', N'кг.', 9, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005114', N'Рис воздушный радужный', N'кг.', 8, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005145', N'Рис ПЭК кукурузный (хлопья) формовой диам 5-7мм (1', N'кг.', 5, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005294', N'Рис воздушный с какао 2-4мм', N'кг.', 2, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005450', N'Мармелад фигурный БАНАН 17 г 16шт', N'упак.', 1, NULL, N'Желейные украшения', NULL, N'17 г')
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005480', N'Сахарная фигурка Белоснежка ,семь гномов D0044', N'шт.', 4, NULL, N'Сахаристые украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005481', N'Сахарная фигурка обьем ЛЕВ 1955', N'шт.', 5, NULL, N'Сахаристые украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005482', N'Сахарная фигурка объем ФУТБОЛИСТЫ в красном', N'шт.', 5, NULL, N'Сахаристые украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005486', N'Сахарная фигурка Пингвины 40804', N'шт.', 10, NULL, N'Сахаристые украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005487', N'Сахарная фигурка Футболисты 4 вида D0022', N'шт.', 9, NULL, N'Сахаристые украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005488', N'Сахарная фигурка Цыплята забавные 4 вида 34342', N'шт.', 2, NULL, N'Сахаристые украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005496', N'Мармелад  фигурный Машинка малая 12 г 25 шт', N'упак.', 2, NULL, N'Желейные украшения', NULL, N'12г.')
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005498', N'Мармелад фигурный Сердце 14,3г 30 шт', N'упак.', 1, NULL, N'Желейные украшения', NULL, N'14.3 г')
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005784', N'Фигурка свадебная TG 660743', N'шт.', 6, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005815', N'Сахарная фигурка Цыплята малыши 4 вида 34343', N'шт.', 6, NULL, N'Сахаристые украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005856', N'Лист розы малый 38мм зеленый  1000 шт.', N'упак.', 8, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00005907', N'лента для цветов бумажная 0,7см 250м корич  12332', N'рулон', 1, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006012', N'Вафельные ПИОНЫ большой на трилистнике микс (35 шт', N'упак.', 9, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006017', N'Вафельные ФЛОКСЫ микс (250 шт.)', N'упак.', 10, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006019', N'Вафельные КАКТУСЫ на трилистнике 3см микс (200)', N'упак.', 7, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006145', N'Серебряные шарики 4мм', N'кг.', 7, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006374', N'Сахарная фигурка ПИРАТЫ 8 видов 28738', N'шт.', 8, NULL, N'Сахаристые украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006388', N'Рис воздушный белый 2-4 мм', N'кг.', 5, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006485', N'Вафельные ПИОНЫ микс 2,4см (110)', N'упак.', 10, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006486', N'Золотые шарики 8мм', N'кг.', 2, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006559', N'Крошка ТЕМНАЯ глянцевая', N'кг.', 1, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006639', N'Мармелад фигурный Машинка средняя 32 г 12 шт', N'упак.', 2, NULL, N'Желейные украшения', NULL, N'32 г')
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006763', N'Фигурка свадебная h25 d18 см пластик 1HYM07', N'шт.', 9, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006764', N'Фигурка свадебная h25 d8 см с подсв.AY78091L-1', N'шт.', 10, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006808', N'Цветочная ветка из сахарн.мастики Малая розовая (В', N'шт.', 3, NULL, N'Сахаристые украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006892', N'Посыпка крист.сахар красный', N'кг.', 7, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006926', N'Крошка декор. "Сереб. блеск"  глянцевая (Лимон) 3 ', N'кг.', 6, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00006953', N'Фигурка свадебная MRH38385 фарфор h14d9см', N'шт.', 5, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00007003', N'Посыпка Шарики одноцветные зеленые', N'кг.', 8, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00007014', N'Посыпка  вермишель белая', N'кг.', 2, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00007101', N'Посыпка Сердечки к/б', N'кг.', 2, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00007103', N'Посыпка Звезды зеленые перламутровые', N'кг.', 4, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00007207', N'Какао натуральное Франция PON 10-В2', N'кг.', 3, NULL, N'Какао', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00007308', N'Какао алкализ. Малайзия', N'кг.', 3, NULL, N'Какао', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00007773', N'Цветочная ветка из сахарн.мастики Малая красная. (', N'шт.', 3, NULL, N'Сахаристые украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00007779', N'Вафельный стакан (552)', N'упак.', 6, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00007966', N'Какао-порошок натур. Россия', N'кг.', 10, NULL, N'Какао', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00007979', N'Мармелад фигурный  ОВЦА J 1026', N'шт.', 10, NULL, N'Желейные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008049', N'Фигурка свадебная MRH38469 фарфор h13d8см', N'шт.', 7, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008052', N'Фигурка свадебная AY78088-1 Н20 d7см Модерн', N'шт.', 1, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008053', N'Фигурка свадебная Н22 d8см Пластик 1916300', N'шт.', 8, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008055', N'Фигурка свадебная AY78092L-1 Н24 d12см с подсветк.', N'шт.', 6, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008056', N'Фигурка свадебная AY78085-4 Н25 d8см Модерн', N'шт.', 10, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008059', N'Фигурка свадебная MRH38453 d9см Фарфор', N'шт.', 5, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008060', N'Фигурка свадебная MRH38392 d10см Фарфор', N'шт.', 5, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008370', N'Вафельная РОЗА малая чайная (160шт/уп)', N'упак.', 1, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008411', N'Посыпка Звезды разноцветные мини', N'кг.', 2, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008413', N'Посыпка Шарики красные перламутровые', N'кг.', 8, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008496', N'Цифра-свеча "3"', N'шт.', 10, NULL, N'Свечи', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008502', N'Цифра-свеча "8"', N'шт.', 8, NULL, N'Свечи', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008518', N'Вафельный рожок 110 225шт.', N'упак.', 4, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008639', N'Вафельный рожок 150 (300шт)', N'упак.', 9, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008648', N'Диски темные Ariiba Fondente Dischi 57 (36/38)', N'кг.', 8, NULL, N'Шоколад', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008649', N'Капли Диаманты белые Ariba Bianco Diamante', N'кг.', 4, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008670', N'Крошка декор. "Серебряный блеск"  глянцевая (Апель', N'кг.', 6, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008877', N'Сахарная фигурка Сладкая парочка 32671', N'шт.', 6, NULL, N'Сахаристые украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008878', N'Мармелад фигурный Черная смородина 19г 20 шт', N'упак.', 8, NULL, N'Желейные украшения', NULL, N'19г')
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008932', N'Вафельный рожок 185 (300 шт)', N'упак.', 2, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008953', N'Лента на торт СЕРЕБРЯННАЯ (10м) 24192', N'шт.', 4, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008956', N'Мармелад фигурный Цветы Васелек 8,2г 40 шт', N'упак.', 7, NULL, N'Желейные украшения', NULL, N'8.2г')
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00008978', N'Крошка  декор. клубничная глянцевая 3 кг', N'кг.', 2, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009008', N'Посыпка Шарики бор/зол/серебр перлам d1мм', N'кг.', 5, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009078', N'Веточки из бумаги (свет-зел)  d0,7мм L25см 12328', N'упак.', 8, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009079', N'Веточки из бумаги (тёмн-зел) d0,7 мм L25см 12329', N'упак.', 5, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009099', N'Сахарная фигурка Эльфы NQ7', N'шт.', 2, NULL, N'Сахаристые украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009220', N'Крошка декор.КАПУЧИНО глянцевая 3 кг', N'кг.', 5, NULL, N'Шоколад', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009263', N'Посыпка Маргаритки мини', N'кг.', 8, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009407', N'Проволока конд. №20 зеленая  20шт. 36см 43508', N'шт.', 1, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009457', N'Проволока конд. №18 корич 20шт. 36см  43514', N'шт.', 8, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009567', N'Картинка ваф. d4,5 см Буратино', N'упак.', 6, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009573', N'Тарталетки 30шт.', N'упак.', 3, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009574', N'Тарталетки 90шт.', N'упак.', 6, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009622', N'Картинка ваф. d14,5 см Сказки Пушкина', N'шт.', 3, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009639', N'Сахарная фигурка Собачки с сердцем 4 вида', N'шт.', 9, NULL, N'Сахаристые украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009761', N'Мармелад фигурный Виноград темный 20г 16 шт', N'упак.', 4, NULL, N'Желейные украшения', NULL, N'20г')
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00009795', N'Посыпка декор.вермишель (апельсин)', N'кг.', 8, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00099', N'Какао алкализован. POR10G9 Франция', N'кг.', 7, NULL, N'Какао', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00119', N'Желейные шарики АПЕЛЬСИН 8-10', N'кг.', 2, NULL, N'Желейные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00148', N'Золотые шарики 2 мм', N'кг.', 7, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00194', N'Вафельный рожок 110мм (225шт. в коробке)', N'шт.', 2, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00259', N'Серебряные шарики 2мм', N'кг.', 7, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00440', N'Посыпка Конфетти яркие мини 25кг.', N'кг.', 6, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00544', N'Свеча-цифра 23046-0', N'шт.', 10, NULL, N'Свечи', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00669', N'Фигурка Свадебная пара 8х16х8 на кабриолете пласти', N'шт.', 1, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00681', N'Крошка БЕЛАЯ глянцевая', N'кг.', 7, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00682', N'Крошка шоколадная  КАПУЧИНО', N'кг.', 5, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00683', N'Драже шок. зерновое Трехцветное (1/9)', N'кг.', 9, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00726', N'Тычинки красные (пучок-50шт.) мелкие РМЕ т42', N'упак.', 5, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00729', N'Тычинки перламутровые (пучок-50шт.) мелкие РМЕ т38', N'упак.', 10, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00730', N'Тычинки перламутровые (пучок-50шт.) средние РМЕ т3', N'упак.', 10, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'00735', N'Тычинки розовые (пучок-50шт.) мелкие РМЕ т43', N'упак.', 9, NULL, N'Атрибутика', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'01204', N'Серебряные шарики 3мм', N'кг.', 2, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'01403', N'Сахарная фигурка Машинки 28618', N'шт.', 1, NULL, N'Сахаристые украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'01444', N'Лист розы малый 38мм белый  1000 шт.', N'упак.', 4, NULL, N'Вафельные украшения', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'01496', N'Посыпка Вермишель одноцветная коричневая', N'кг.', 10, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'01913', N'Посыпка вермишель темная шоколадная', N'кг.', 3, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'01946', N'Посыпка Шарики ЖЕМЧУГ розовый', N'кг.', 5, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'01974', N'Посыпка Шарики микс №8 разноцветные', N'кг.', 5, NULL, N'посыпки', NULL, NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'51401', N'Шок.декор-аэрозоль ДОЛЬЧЕ ВЕЛЮТО красный ', N'шт', 6, NULL, N'шоколад', N'1''584.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'51402', N'Шок.декор-аэрозоль ДОЛЬЧЕ ВЕЛЮТО оранжевый ', N'шт', 8, NULL, N'шоколад', N'1''584.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'51403', N'Шок.декор-аэрозоль ДОЛЬЧЕ ВЕЛЮТО жёлтый ', N'шт', 10, NULL, N'шоколад', N'1''584.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'51404', N'Шок.декор-аэрозоль ДОЛЬЧЕ ВЕЛЮТО розовый ', N'шт', 2, NULL, N'шоколад', N'1''584.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'51405', N'Шок.декор-аэрозоль ДОЛЬЧЕ ВЕЛЮТО коричневый ', N'шт', 4, NULL, N'шоколад', N'1''584.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'51406', N'Шок.декор-аэрозоль ДОЛЬЧЕ ВЕЛЮТО светл.корич. ', N'шт', 6, NULL, N'шоколад', N'1''584.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'51407', N'Шок.декор-аэрозоль ДОЛЬЧЕ ВЕЛЮТО белый ', N'шт', 4, NULL, N'шоколад', N'1''584.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'51408', N'Шок.декор-аэрозоль ДОЛЬЧЕ ВЕЛЮТО зеленый ', N'шт', 2, NULL, N'шоколад', N'1''584.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'51409', N'Шок.декор-аэрозоль ДОЛЬЧЕ ВЕЛЮТО голубой ', N'шт', 1, NULL, N'шоколад', N'1''584.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'51412', N'Шок.декор-аэрозоль ДОЛЬЧЕ ВЕЛЮТО вишнёвый ', N'шт', 6, NULL, N'шоколад', N'1''584.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'51413', N'Шок.декор-аэрозоль ДОЛЬЧЕ ВЕЛЮТО черный ', N'шт', 5, NULL, N'шоколад', N'1''584.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'71169', N'Украшение шоколадное ШАРИКИ КРАНЧ БЕЛЫЕ ', N'кг', 3, NULL, N'шоколад', N'1''764.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'71170', N'Украшение шоколадное ШАРИКИ КРАНЧ МОЛОЧНЫЕ ', N'кг', 3, NULL, N'шоколад', N'1''764.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'71171', N'Украшение шоколадное ШАРИКИ КРАНЧ ТЕМНЫЕ ', N'кг', 9, NULL, N'шоколад', N'1''692.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'71211', N'Глазурь сахарно-ореховая РЕАЛ ', N'кг.', 3, NULL, N'Посыпка', N'10''368.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80001', N'Посыпка из конд.глазури ШОК.КРОШКА ТЕМНАЯ ', N'кг.', 3, NULL, N'Посыпка', N'388,8', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80003', N'Посыпка из конд.глазури ШОК.КРОШКА МИНИ ТЕМН. ', N'кг.', 4, NULL, N'Посыпка', N'2''736.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80010', N'Посыпка из конд.глазури ШОК.КРОШКА ТЕМНАЯ ', N'кг.', 10, NULL, N'Посыпка', N'6''840.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80040', N'Посыпка из белой глазури ШОК.КРОШКА БЕЛАЯ ', N'кг.', 5, NULL, N'Посыпка', N'388,8', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80043', N'Посыпка из белой глазури ШОК.КРОШКА БЕЛАЯ ', N'кг.', 7, NULL, N'Посыпка', N'7''560.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80083', N'Посыпка из белой глазури ШОК.КРОШКА КРАСНАЯ ', N'кг.', 9, NULL, N'Посыпка', N'5''328.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80084', N'Посыпка из белой глазури ШОК.КРОШКА ЖЕЛТАЯ ', N'кг.', 9, NULL, N'Посыпка', N'5''328.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80085', N'Посыпка из белой глазури ШОК.КРОШКА РОЗОВАЯ ', N'кг.', 9, NULL, N'Посыпка', N'5''328.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80102', N'Посыпка из белой глазури ШОК.ВЕРМИШЕЛЬ БЕЛАЯ ', N'кг.', 1, NULL, N'Посыпка', N'3''744.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80110', N'Посыпка из конд.глазури ШОК.ВЕРМИШЕЛЬ ТЕМНАЯ ', N'кг.', 7, NULL, N'Посыпка', N'468', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80113', N'Посыпка из конд.глазури ШОК.ВЕРМИШЕЛЬ ТЕМНАЯ ', N'кг.', 2, NULL, N'Посыпка', N'8''496.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80170', N'Посыпка сахар.ВЕРМИШЕЛЬ разноцвет. ', N'кг.', 7, NULL, N'Посыпка', N'360', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80171', N'Посыпка сахар.ВЕРМИШЕЛЬ разноцвет. ', N'кг.', 8, NULL, N'Посыпка', N'6''120.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80173', N'Посыпка сахар.ВЕРМИШЕЛЬ разноцвет. с НК ', N'кг.', 8, NULL, N'Посыпка', N'2''761.20', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80183', N'Посыпка из белой глазури ШОК.ВЕРМИШЕЛЬ КРАСН. ', N'кг.', 9, NULL, N'Посыпка', N'4''320.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80184', N'Посыпка из белой глазури ШОК.ВЕРМИШЕЛЬ ЖЕЛТАЯ ', N'кг.', 7, NULL, N'Посыпка', N'4''320.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80185', N'Посыпка из белой глазури ШОК.ВЕРМИШЕЛЬ РОЗОВ. ', N'кг.', 8, NULL, N'Посыпка', N'4''320.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80200', N'Посыпка сахар.разноцветная МОНПАРЕЛЬ ', N'кг.', 7, NULL, N'Посыпка', N'1''610.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80201', N'Посыпка сахар.разноцвeт.МОНПАРЕЛЬ ', N'кг.', 10, NULL, N'Посыпка', N'360', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80243', N'Посыпка сахар.АМАРЕТТО ', N'кг.', 10, NULL, N'Посыпка', N'5''472.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80249', N'Посыпка сахар.АМАРЕЛЛА ', N'кг.', 2, NULL, N'Посыпка', N'648', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80250', N'Посыпка сахар.АМАРЕЛЛА ', N'кг.', 7, NULL, N'Посыпка', N'4''752.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80259', N'Посыпка сахар.ДУТЫЙ РИС ', N'кг.', 6, NULL, N'Посыпка', N'504', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80261', N'Посыпка ДУТЫЙ РИС САХАРИСТЫЙ ', N'кг.', 8, NULL, N'Посыпка', N'2''988.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80266', N'Посыпка сахарная декор-пудра НЭВИССИМА ', N'кг.', 3, NULL, N'Посыпка', N'1''800.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80270', N'Сахарная декор-пудра БУКАНЕВЕ ', N'кг.', 6, NULL, N'Посыпка', N'396', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80272', N'Сахарная декор-пудра БУКАНЕВЕ ', N'кг.', 6, NULL, N'Посыпка', N'1''908.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80273', N'Сахарная декор-пудра ДОЛОМИТИ ', N'кг.', 9, NULL, N'Посыпка', N'3''600.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80280', N'Посыпка какао-пудра БУКАО ', N'кг.', 7, NULL, N'Посыпка', N'432', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80281', N'Посыпка КОНФЕТТИ ', N'кг.', 6, NULL, N'Посыпка', N'648', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80282', N'Посыпка какао-пудра БУКАО ', N'кг.', 7, NULL, N'Посыпка', N'3''024.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80284', N'Посыпка какао-пудра СПОЛВЕРШОК ', N'кг.', 8, NULL, N'Посыпка', N'547,2', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80285', N'Посыпка какао-пудра СПОЛВЕРШОК ', N'кг.', 3, NULL, N'Посыпка', N'2''664.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80288', N'Посыпка сахар.МЕРЕНГА крошка ', N'кг.', 5, NULL, N'Посыпка', N'8''136.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80290', N'Капли шоколадные ПЕПИТА темные ', N'кг', 7, NULL, N'шоколад', N'1''980.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80291', N'Капли шоколадные ПЕПИТА белые ', N'кг', 2, NULL, N'шоколад', N'2''448.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'80297', N'Посыпка сахар.ГРАНЕЛЛА мелкая ', N'кг.', 8, NULL, N'Посыпка', N'1''800.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'82001', N'Шарики желейн.КЛУБНИКА 3/4 мм ', N'кг', 6, NULL, N'Шарики желейные', N'900', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'82011', N'Шарики желейн.ЧЕРЕШНЯ 9/10 мм ', N'кг', 8, NULL, N'Шарики желейные', N'918', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'82021', N'Шарики желейн.ЧЕРЕШНЯ 13/14 мм ', N'кг', 7, NULL, N'Шарики желейные', N'900', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'82027', N'Шарики желейн.ЧЕРЕШНЯ 13/14 мм ', N'кг', 5, NULL, N'Шарики желейные', N'5''112.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'82031', N'Шарики желейн.ЧЕРЕШНЯ 17/18 мм ', N'кг', 7, NULL, N'Шарики желейные', N'842,4', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'82081', N'Шарики желейн.ЯБЛОКО 3/4 мм ', N'кг', 5, NULL, N'Шарики желейные', N'900', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'82091', N'Шарики желейн.ЯБЛОКО 9/10 мм ', N'кг', 4, NULL, N'Шарики желейные', N'900', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'82101', N'Шарики желейн.ЯБЛОКО 13/14 мм ', N'кг', 1, NULL, N'Шарики желейные', N'900', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'82121', N'Шарики желейн.ЛЕСНАЯ ЯГОДА 3/4 мм ', N'кг', 1, NULL, N'Шарики желейные', N'900', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'82131', N'Шарики желейн.ЛЕСНАЯ ЯГОДА 9/10 мм ', N'кг', 2, NULL, N'Шарики желейные', N'900', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'82141', N'Шарики желейн.ЛЕСНАЯ ЯГОДА 13/14 мм ', N'кг', 2, NULL, N'Шарики желейные', N'882', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'82161', N'Шарики желейн.ЛИМОН 3/4 мм ', N'кг', 3, NULL, N'Шарики желейные', N'900', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'82171', N'Шарики желейн.ЛИМОН 9/10 мм ', N'кг', 10, NULL, N'Шарики желейные', N'900', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'82181', N'Шарики желейн.ЛИМОН 13/14 мм ', N'кг', 1, NULL, N'Шарики желейные', N'900', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88100', N'Вафельный рожок 185 естеств.край ', N'шт', 3, NULL, N'Выпеченные полуфабрикаты', N'875', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88101', N'Вафельный рожок 110 ровный край ', N'шт', 2, NULL, N'Выпеченные полуфабрикаты', N'400', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88102', N'Вафельный рожок 150 естеств.край ', N'шт', 8, NULL, N'Выпеченные полуфабрикаты', N'750', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88103', N'Вафельный рожок 60 Миниконус ровный край ', N'шт', 4, NULL, N'Выпеченные полуфабрикаты', N'1''725.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88104', N'Вафельная корзиночка ', N'шт', 9, NULL, N'Выпеченные полуфабрикаты', N'975', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88105', N'Вафельный стаканчик 75 ', N'шт', 9, NULL, N'Выпеченные полуфабрикаты', N'615', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88106', N'Вафельная сахарная крошка 3-5 мм ', N'кг', 6, NULL, N'Посыпка', N'1''700.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88108', N'Вафельный рожок 185 ЧЕРНЫЙ естеств.край ', N'шт', 10, NULL, N'Выпеченные полуфабрикаты', N'1''200.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88109', N'Вафельный рожок 110 ЧЕРНЫЙ ровный край ', N'шт', 6, NULL, N'Выпеченные полуфабрикаты', N'570', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88110', N'Вафельный стаканчик ФАКЕЛ ', N'шт', 6, NULL, N'Выпеченные полуфабрикаты', N'800', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88111', N'Валован пресный 44 мм. ', N'шт', 8, NULL, N'Выпеченные полуфабрикаты', N'1''656.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88112', N'Валован пресный 38 мм. ', N'шт', 7, NULL, N'Выпеченные полуфабрикаты', N'1''980.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88121', N'Вафельная сахарная крошка 1-3 мм ', N'кг', 8, NULL, N'Посыпка', N'850', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88171', N'Вафельный рожок 110 глазированный ровн. край ', N'шт', 10, NULL, N'Выпеченные полуфабрикаты', N'1''125.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88172', N'Вафельный рожок 150 глазированный ест. край ', N'шт', 2, NULL, N'Выпеченные полуфабрикаты', N'920', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88190', N'Украшение вафельное ДИСК 60 мм ', N'шт', 8, NULL, N'Выпеченные полуфабрикаты', N'1''728.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88191', N'Украшение вафельное СИГАРА 9 см ', N'шт', 6, NULL, N'Выпеченные полуфабрикаты', N'1''339.20', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88192', N'Вафельный рожок ФАКЕЛ 126 мм ', N'шт', 4, NULL, N'Выпеченные полуфабрикаты', N'1''368.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88193', N'Вафельный рожок ФАКЕЛ 141 мм ', N'шт', 1, NULL, N'Выпеченные полуфабрикаты', N'1''188.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88199', N'Бисквитные палочки САВОЙЯРДИ 18 х 0,1 кг ', N'шт', 7, NULL, N'Выпеченные полуфабрикаты', N'619,2', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88211', N'Тарталетка сладкая 44 мм. ', N'шт', 1, NULL, N'Выпеченные полуфабрикаты', N'1''224.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88212', N'Тарталетка сладкая 74 мм. ', N'шт', 9, NULL, N'Выпеченные полуфабрикаты', N'1''296.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88214', N'Тарталетка соленая 44 мм. ', N'шт', 3, NULL, N'Выпеченные полуфабрикаты', N'1''224.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88215', N'Лодочка сладкая 67 мм. ', N'шт', 9, NULL, N'Выпеченные полуфабрикаты', N'1''296.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88216', N'Лодочка соленая 67 мм. ', N'шт', 8, NULL, N'Выпеченные полуфабрикаты', N'1''296.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88217', N'Тарталетка соленая 74 мм. ', N'шт', 10, NULL, N'Выпеченные полуфабрикаты', N'1''296.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88218', N'Тарталетка сладкая Квадрат 45х45 мм.блистер ', N'шт', 5, NULL, N'Выпеченные полуфабрикаты', N'1''656.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88219', N'Тарталетка соленая Квадрат 45х45 мм.блистер ', N'шт', 2, NULL, N'Выпеченные полуфабрикаты', N'1''656.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88220', N'Тарталетка соленая Ассорти Квадрат 45х45 мм ', N'шт', 8, NULL, N'Выпеченные полуфабрикаты', N'2''376.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88228', N'Лодочка шоколадная 67 мм. ', N'шт', 1, NULL, N'Выпеченные полуфабрикаты', N'1''296.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88229', N'Тарталетка шоколадная 44 мм. ', N'шт', 5, NULL, N'Выпеченные полуфабрикаты', N'1''224.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88230', N'Печенье миндальное МАКАРУНС ассорти 6 цветов ', N'шт', 2, NULL, N'Выпеченные полуфабрикаты', N'2''160.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88234', N'Трубочка сицилийская 6 см. ', N'шт', 7, NULL, N'Выпеченные полуфабрикаты', N'1''296.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88235', N'Трубочка сицилийская 9 см. ', N'шт', 6, NULL, N'Выпеченные полуфабрикаты', N'936', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88240', N'Ром-баба 5 см. ', N'кг', 5, NULL, N'Выпеченные полуфабрикаты', N'2''606.40', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88243', N'Тарталетка Миньон 53 мм. ', N'шт', 3, NULL, N'Выпеченные полуфабрикаты', N'1''800.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88244', N'Тарталетка Ложка сладкая 80 мм. ', N'шт', 3, NULL, N'Выпеченные полуфабрикаты', N'2''880.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88245', N'Тарталетка Ложка соленая 80 мм. ', N'шт', 8, NULL, N'Выпеченные полуфабрикаты', N'2''880.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88252', N'Бисквитные палочки САВОЙЯРДИ ', N'шт', 7, NULL, N'Выпеченные полуфабрикаты', N'1''411.20', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88254', N'Бисквитные палочки САВОЙЯРДИ 15х0,4 кг ', N'шт', 3, NULL, N'Выпеченные полуфабрикаты', N'1''944.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88300', N'Профитроль 37 мм. ', N'шт', 7, NULL, N'Выпеченные полуфабрикаты', N'1''584.00', NULL)
GO
INSERT [dbo].[CakeDecoration] ([Vendor_name], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [Weight]) VALUES (N'88302', N'Профитроль 45 мм. ', N'шт', 6, NULL, N'Выпеченные полуфабрикаты', N'1''512.00', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1, N'Мука Сокольническая', NULL, NULL, NULL, N'Мука', N'32.50 руб.', NULL, N' 1 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (2, N'Мука высший сорт ', NULL, NULL, NULL, N'Мука', N'20 руб./кг', NULL, N'50 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (3, N'Мука пшеничная (1 сорт, высший сорт)', NULL, NULL, NULL, N'Мука', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (4, N'Мука "Макфа" в/с ', NULL, NULL, NULL, N'Мука', N'278.20 руб.', NULL, N'10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (5, N'Мука пшеничная высший сорт', NULL, NULL, NULL, N'Мука', N'от 13.20 до 14.50 руб./кг', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (6, N'Мука Высшего сорта', NULL, NULL, NULL, N'Мука', N'15.50 руб./кг', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (7, N'Мука пшеничная', NULL, NULL, NULL, N'Мука', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (8, N'Мука пшеничная Гост высший сорт', NULL, NULL, NULL, N'Мука', NULL, NULL, N'5, 10. 50 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (9, N'Мука хлебопекарная в/с (ГОСТ)', NULL, NULL, NULL, N'Мука', N'14100', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (10, N'Мука хлебопекарная I/c (ГОСТ)', NULL, NULL, NULL, N'Мука', N'13600', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (11, N'Мука хлебопекарная II/c (ГОСТ)', NULL, NULL, NULL, N'Мука', N'13400', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (12, N'Мука хлебопекарная пшеничная обойная', NULL, NULL, NULL, N'Мука', N'14600', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (13, N'Мука ржаная сеяная', NULL, NULL, NULL, N'Мука', N'11900', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (14, N'Мука ржаная обдирная', NULL, NULL, NULL, N'Мука', N'10300', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (15, N'Мука хлебопекарная ржаная цельная', NULL, NULL, NULL, N'Мука', N'10300', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (16, N'Мука ржаная обойная', NULL, NULL, NULL, N'Мука', N'10300', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (17, N'Мука овсяная', NULL, NULL, NULL, N'Мука', N'17700', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (18, N'Мука пшеничная в/с ГОСТ', N'т', NULL, NULL, N'Мука', N'14000р/т', NULL, NULL, N'кл.28,бел.58-61,ИДК-75-85')
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (19, N'Мука пшеничная ТУ', NULL, NULL, NULL, N'Мука', NULL, NULL, NULL, N'кл.24-27,бел.42-58,ИДК-75-85')
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (20, N'Мука пшеничная 1-ый сорт ГОСТ', NULL, NULL, NULL, N'Мука', NULL, NULL, NULL, N'кл.30,бел.42-48,ИДК-75-85')
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (21, N'Мука ржаная', NULL, NULL, NULL, N'Мука', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (22, N'сеяная', NULL, NULL, NULL, N'Мука', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (23, N'Мука 2-ой сорт ГОСТ', NULL, NULL, NULL, N'Мука', NULL, NULL, NULL, N'кл.25,бел.15-20,ИДК 90')
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (24, N'Сахар кусковой твердый прес. (1х0,4кг)х30', NULL, NULL, NULL, N'Сахар', N'28,8', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (25, N'Сахар кусковой твердый прес. (1х0,8кг)х15', NULL, NULL, NULL, N'Сахар', N'48,2', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (26, N'Сахар леденцовый белый Confer (1х0,15кг)х16', NULL, NULL, NULL, N'Сахар', N'54,2', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (27, N'Сахар леденцовый коричневый Confer (1х0,15кг)х16', NULL, NULL, NULL, N'Сахар', N'62,1', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (28, N'Сахар порционный ( 1х 5 г ) х 1500', NULL, NULL, NULL, N'Сахар', N'0,5', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (29, N'Сахар рафинад («Ленсахар») 90 ( 1х0,5кг) х 40', NULL, NULL, NULL, N'Сахар', N'25,9', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (30, N'Сахар рафинад , «Русский сахар» ( 1х0,5кг ) х 40', NULL, NULL, NULL, N'Сахар', N'28', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (31, N'Сахар рафинад , «Русский сахар» ( 1х1кг ) х 20', NULL, NULL, NULL, N'Сахар', N'50,5', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (32, N'Сахар рафинад , «Чайкофский» ( 1х0,5кг ) х 40', NULL, NULL, NULL, N'Сахар', N'30,2', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (33, N'Сахар рафинад , «Чайкофский» ( 1х1кг ) х 20', NULL, NULL, NULL, N'Сахар', N'57', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (34, N'Сахар рафинад , «Чайкофский», фигурн. ( 1х0,5кг ) ', NULL, NULL, NULL, N'Сахар', N'46,2', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (35, N'Сахар-песок весовой (1 х 1кг) х 50', NULL, NULL, NULL, N'Сахар', N'46,5', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (36, N'Сахар-песок тёмно-коричневый. п/пак ( 1х0,9кг ) х ', NULL, NULL, NULL, N'Сахар', N'98,9', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (37, N'Сахар-песок фас. в п/пак. ( 1х1кг ) х 12 «Русский»', NULL, NULL, NULL, N'Сахар', N'53,8', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (38, N'Сахар-песок фас. (Расф.)  в п/пак. ( 1х1кг ) х 21', NULL, NULL, NULL, N'Сахар', N'45', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (39, N'Сахар-песок фас.б/пак ( 1х0,9кг ) х 10 «Чайкофский', NULL, NULL, NULL, N'Сахар', N'45,4', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (40, N'Соль «Помол 1» ( 1х1 кг) х 18', NULL, NULL, NULL, N'Соль', N'16,9', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (41, N'Соль поваренная пищевая мелкая высший сорт (1 х 1к', NULL, NULL, NULL, N'Соль', N'21,3', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (42, N'Соль в солонке  (1х500 г) х 10', NULL, NULL, NULL, N'Соль', N'30,4', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (43, N'Соль в солонке йод. ( 1х 500 г ) х 20', NULL, NULL, NULL, N'Соль', N'30,6', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (44, N'Соль в солонке йод. ( 1х250 г ) х 21', NULL, NULL, NULL, N'Соль', N'27,2', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (45, N'Соль поваренная пищевая мелкая йодированная высший', NULL, NULL, NULL, N'Соль', N'21,8', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (46, N'разрыхлитель теста 10г Спецаромат', NULL, NULL, NULL, N'Разрыхлитель', N'1,03', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (47, N'разрыхлитель теста 12г Агроимпорт', NULL, NULL, NULL, N'Разрыхлитель', N'1,24', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (48, N'разрыхлитель теста 12г Премьер', NULL, NULL, NULL, N'Разрыхлитель', N'1,24', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (49, N'разрыхлитель теста 18г Цикория', NULL, NULL, NULL, N'Разрыхлитель', N'1,3', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (50, N'Обычное яйцо перепелиное', N'упак', NULL, NULL, N'Яйца', N'45 руб/упаковка', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (51, N'Отборное яйцо перепелиное', N'упаковка', NULL, NULL, N'Яйца', N'60 руб/упаковка', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (52, N'Яйцо второй категории  (45-55 гр.)', NULL, NULL, NULL, N'Яйца', N'37-00', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (53, N'Яйцо первой категории (55-65  гр.)', NULL, NULL, NULL, N'Яйца', N'42-00', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (54, N'Яйцо отборной категории (65-75 гр.)', NULL, NULL, NULL, N'Яйца', N'44-00', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (55, N'Яйцо высшей категории (75-90 гр.)', NULL, NULL, NULL, N'Яйца', N'50-00', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (56, N'Масло "Крестьянское" весовое', N'кг', NULL, NULL, N'Масло', NULL, N'ГОСТ 37-91', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (57, N'Масло "Крестьянское" в кашированной фольге 170 гр.', N'шт', NULL, NULL, N'Масло', NULL, N'ГОСТ 37-91', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (58, N'Масло шоколадное весовое', N'кг', NULL, NULL, N'Масло', NULL, N'ГОСТ 6822-67', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (59, N'Масло шоколадное в кашированной фольге 200гр', N'шт', NULL, NULL, N'Масло', NULL, N'ГОСТ 6822-67', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (60, N'Спред "Кубанский" весовой', N'кг', NULL, NULL, N'Спред', NULL, N'ТУ 9148-003-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (61, N'Спред "Кубанский" в фольге 170 гр.', N'шт', NULL, NULL, N'Спред', NULL, N'ТУ 9148-003-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (62, N'Спред "Кубанский" 82,5% жирн. весовой.', N'кг', NULL, NULL, N'Спред', NULL, N'ТУ 9148-003-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (63, N'Спред "Кубанский" 82,5% жирн. в фольге 170 гр.', N'шт', NULL, NULL, N'Спред', NULL, N'ТУ 9148-003-49464828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (64, N'Молоко паст. "Краснодарское" 3.2 % жирн. во флягах', N'кг', NULL, NULL, N'Молоко', NULL, N'ТУ 9222-001-49464 828', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (65, N'Молоко паст. "Краснодарское" 2,5 % жирн. во флягах', N'л', NULL, NULL, N'Молоко', NULL, N'ТУ 9222-001-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (66, N'Молоко пастер. "Краснодарское" 2,5% жирн. в пленке', N'шт', NULL, NULL, N'Молоко', NULL, N'ТУ 9222-001-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (67, N'Молоко пастер. "Краснодарское" 2,5% жирн. в пленке', N'шт', NULL, NULL, N'Молоко', NULL, N'ТУ 9222-001-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (68, N'Молоко пастер. "Краснодарское" 3,2% жирн. в пленке', N'шт', NULL, NULL, N'Молоко', NULL, N'ТУ 9222-001-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (69, N'Молоко пастер. "Краснодарское" 3,2% жирн. в пакета', N'шт', NULL, NULL, N'Молоко', NULL, N'ТУ 9222-001-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (70, N'Молоко цельное отборное пастер. 3,5% жирн. Lean Рa', N'шт', NULL, NULL, N'Молоко', NULL, N'ТУ 9222-001-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (71, N'Кефир 2,5% жирн. в пленке 500 гр.', N'шт', NULL, NULL, N'Кефир', NULL, N'ТУ 9222-356-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (72, N'Кефир 2,5% жирн. в пленке 1000 гр.', N'шт', NULL, NULL, N'Кефир', NULL, N'ГОСТ Р 52093-2003', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (73, N'Кефир 2,5% жирн. в пакетах Пюр-Пак 1000 гр.', N'шт', NULL, NULL, N'Кефир', NULL, N'ГОСТ Р 52093-2003', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (74, N'Кефир 2,5% жирн. в пакетах Пюр-Пак 500 гр.', N'шт', NULL, NULL, N'Кефир', NULL, N'ГОСТ Р 52093-2003', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (75, N'Кефир 2,5% жирн. в пакетах Пюр-Пак 200 гр.', N'шт', NULL, NULL, N'Кефир', NULL, N'ГОСТ Р 52093-2003', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (76, N'Кефир 2,5% жирн. в пакетах Lean Рack 1000 гр.', N'шт', NULL, NULL, N'Кефир', NULL, N'ГОСТ Р 52093-2003', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (77, N'Кефир 3,2% жирн. в пакетах Lean Рack 1000 гр.', N'шт', NULL, NULL, N'Кефир', NULL, N'ГОСТ Р 52093-2003', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (78, N'Сливки 10% жирн. в пакетах Пюр-Пак 500 гр.', N'шт', NULL, NULL, N'Сливки', NULL, N'ГОСТ Р 52091-2003', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (79, N'Сливки 20% жирн. во флягах', N'кг', NULL, NULL, N'Сливки', NULL, N'ГОСТ Р 52091-2003', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (80, N'Сметана 15% жирн. вес.', N'кг', NULL, NULL, N'Сметана', NULL, N'ТУ 9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (81, N'Сметана 15% жирн. в полист. стаканчиках 240 гр.', N'шт', NULL, NULL, N'Сметана', NULL, N'ТУ-9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (82, N'Сметана 15% жирн. в полист. стаканчиках 470 гр.', N'шт', NULL, NULL, N'Сметана', NULL, N'ТУ-9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (83, N'Сметана 20% жирн. вес.', N'кг', NULL, NULL, N'Сметана', NULL, N'ТУ 9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (84, N'Сметана 20% жирн. в полистироловых стаканчиках 100', N'шт', NULL, NULL, N'Сметана', NULL, N'ТУ 10,02,02,789-89', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (85, N'Сметана 20 % жирн. в полист. стак. 240гр.', N'шт', NULL, NULL, N'Сметана', NULL, N'ТУ-9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (86, N'Сметана 20% жирн. в полист. стаканчиках 240 гр. (г', N'шт', NULL, NULL, N'Сметана', NULL, N'ТУ-9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (87, N'Сметана 20% жирн. в полист. стаканчиках 470 гр.', N'шт', NULL, NULL, N'Сметана', NULL, N'ТУ-9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (88, N'Сметана 20% жирн. в пленке 470 гр.', N'шт', NULL, NULL, N'Сметана', NULL, N'ТУ 9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (89, N'Сметана 20% жирн. в пленке 250 гр.', N'шт', NULL, NULL, N'Сметана', NULL, N'ТУ 9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (90, N'Сметана 20% жирн. ведро 900 гр', N'шт', NULL, NULL, N'Сметана', NULL, N'ТУ 9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (91, N'"Сметанка из крынки" 20% жирн. 240гр', N'шт', NULL, NULL, N'Сметана', NULL, N'ТУ 9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (92, N'"Сметанка из крынки" 20% жирн. в п/с 470гр', N'шт', NULL, NULL, N'Сметана', NULL, N'ТУ 9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (93, N'Сметанка из крынки 20% жирн. ведро 600гр', N'шт', NULL, NULL, N'Сметана', NULL, N'ТУ 9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (94, N'Сметанка из крынки 20% жирн. ведро 900г', N'шт', NULL, NULL, N'Сметана', NULL, N'ТУ 9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (95, N'"Сметанка из крынки" 20% жирн. вес.', N'кг', NULL, NULL, N'Сметана', NULL, N'ТУ 9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (96, N'"Сметанка из крынки" 20% жирн. термизир. п/с 240гр', N'шт', NULL, NULL, N'Сметана', NULL, N'ТУ 9222-355-00419 785-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (97, N'Масса твор."Солнышко Кубани" 23% жирн. сладкая с и', N'кг', NULL, NULL, N'Масса творожная', NULL, N'ТУ 9222-030-00439 888-03', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (98, N'Масса твор. "Солнышко Кубани"23% жирн.сладкая с из', N'шт', NULL, NULL, N'Масса творожная', NULL, N'ТУ 9222-030-00439 888-03', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (99, N'Масса твор."Солнышко Кубани" 23% жирн.сладк.с кура', N'шт', NULL, NULL, N'Масса творожная', NULL, N'ТУ 9222-030-00439 888-03', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (100, N'Твор.масса "Солнышко Кубани" 23% жирн. с изюм. вес', N'кг', NULL, NULL, N'Масса творожная', NULL, N'ТУ 9222-030-00439 888-05', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (101, N'Творог "Гулькевичский" нежирный вес.', N'кг', NULL, NULL, N'Творог', NULL, N'ТУ 9220-002-49464828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (102, N'Творог "Гулькевичский" нежирный в перг. 250 гр.', N'шт', NULL, NULL, N'Творог', NULL, N'ТУ 9220-002-49464828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (103, N'Творог 5% жирн. весовой', N'кг', NULL, NULL, N'Творог', NULL, N'ТУ 9222-180-00419 785-99', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (104, N'Творог 5% жирн. "Гулькевичский" вес.', N'кг', NULL, NULL, N'Творог', NULL, N'ТУ 9220-002-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (105, N'Творог 5% жирн. "Гулькевичский" в перг. 250 гр.', N'шт', NULL, NULL, N'Творог', NULL, N'ТУ 9220-002-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (106, N'Творог 5% жирн. "Гулькевичский" в пленке 250 гр.', N'шт', NULL, NULL, N'Творог', NULL, N'ТУ 9220-002-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (107, N'Творог 5% жирн. "Гулькевичский" брикет 250 гр.', N'шт', NULL, NULL, N'Творог', NULL, N'ТУ 9220-002-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (108, N'Творог 5% жирн. "Гулькевичский" в барьерной пленке', N'шт', NULL, NULL, N'Творог', NULL, N'ТУ 9220-002-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (109, N'Творог 5% жирн. "Гулькевичский" барьерный пакет 5 ', N'шт', NULL, NULL, N'Творог', NULL, N'ТУ 9220-002-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (110, N'Творог 9% жирн. вес.', N'кг', NULL, NULL, N'Творог', NULL, N'ТУ 9222-180-00419 785-99', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (111, N'Творог 9% жирн. "Гулькевичский" вес.', N'кг', NULL, NULL, N'Творог', NULL, N'ТУ РСФСР 21-152-89', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (112, N'Творог 18% жирн. весовой', N'кг', NULL, NULL, N'Творог', NULL, N'ТУ 9222-180-00419 785-99', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (113, N'Молоко цельное сгущенное с сахаром во флягах', N'кг', NULL, NULL, N'Сгущенное молоко', NULL, N'ГОСТ 2903-78', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (114, N'Прод. сгущенный с сах. 8,5% жирн. вес.', N'шт', NULL, NULL, N'Сгущенное молоко', NULL, N'ТУ 9226-026-13870 642-05', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (115, N'Прод. сгущенный с сах. 8,5% жирн. в п/с 200 гр.', N'шт', NULL, NULL, N'Сгущенное молоко', NULL, N'ТУ 9226-026-13870 642-05', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (116, N'Майонез "Кубанский" весовой', N'кг', NULL, NULL, N'Майонез', NULL, N'ГОСТ 30004.1-93', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (117, N'Майонез "Кубанский" в полист. стаканчиках 250 гр.', N'шт', NULL, NULL, N'Майонез', NULL, N'ГОСТ 30004.1-93', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (118, N'Майонез "Кубанский" ведро 1 кг', N'шт', NULL, NULL, N'Майонез', NULL, N'ГОСТ 30004.1-93', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (119, N'Молоко сухое обезжиренное', N'кг', NULL, NULL, N'Молоко', NULL, N'ГОСТ 10970-87', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (120, N'Молоко цельное сухое 25% жирности', N'кг', NULL, NULL, N'Молоко', NULL, N'ГОСТ 4495-87', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (121, N'мед цветочный (луговое разнотравье)', N'кг', NULL, NULL, N'Мед', N'144', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (122, N'мед лесной', N'кг', NULL, NULL, N'Мед', N'153', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (123, N'мед цветочно-гречишный', N'кг', NULL, NULL, N'Мед', N'198', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (124, N'мед цветочно-липовый', N'кг', NULL, NULL, N'Мед', N'360', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (125, N'мед  акации', N'кг', NULL, NULL, N'Мед', N'396', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (126, N'крем-мед', N'кг', NULL, NULL, N'Мед', N'153', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (127, N'мед с прополисом', N'кг', NULL, NULL, N'Мед', N'216', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (128, N'мед с пергой', N'кг', NULL, NULL, N'Мед', N'315', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (129, N'мед с пыльцой', N'кг', NULL, NULL, N'Мед', N'315', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (130, N'КАКАО-ПОРОШОК ДЛЯ ПРОМЫШЛЕННОЙ ПЕРЕРАБОТКИ ВЕЛЛА М', NULL, NULL, NULL, N'Какао-порошок', NULL, NULL, N'МЕШОК 25кг ', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (131, N'КАКАО-ПОРОШОК НАТУРАЛЬНЫЙ, ЖИРНОСТЬ 11.4%, pH 5.8', NULL, NULL, NULL, N'Какао-порошок', NULL, NULL, N'МЕШОК 25кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (132, N'КАКАО-ПОРОШОК НАТУРАЛЬНЫЙ ГОСТ 108-76', NULL, NULL, NULL, N'Какао-порошок', NULL, NULL, N'МЕШОК 25кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (133, N'KVB 0850 КАКАО-ПОРОШОК НАТУРАЛЬНЫЙ KVB / Cargill', NULL, NULL, NULL, N'Какао-порошок', NULL, NULL, N'МЕШОК 25кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (134, N'KVB 8710 КАКАО-ПОРОШОК СЛАБО АЛКАЛИЗОВАННЫЙ KVB / ', NULL, NULL, NULL, N'Какао-порошок', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (135, N'KVB 8965 КАКАО-ПОРОШОК АЛКАЛИЗОВАННЫЙ KVB / Cargil', NULL, NULL, NULL, N'Какао-порошок', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (136, N'ESFIRA КАКАО-ПОРОШОК СИЛЬНО АЛКАЛИЗОВАННЫЙ pH 8,0 ', NULL, NULL, NULL, N'Какао-порошок', NULL, NULL, N'МЕШОК 25кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (137, N'JB 800 КАКАО-ПОРОШОК АЛКАЛИЗОВАННЫЙ "JB COCOA"', NULL, NULL, NULL, N'Какао-порошок', NULL, NULL, N'МЕШОК 25кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (138, N'Ароматизатор  Ананас 1001', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (139, N'Ароматизатор  Анис 1011', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (140, N'Ароматизатор Апельсин (Австрия)', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (141, N'Ароматизатор Апельсин (РФ)', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (142, N'Ароматизатор банан 1131', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (143, N'Ароматизатор Барбарис 1162', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (144, N'Ароматизатор Брусника 3902', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (145, N'Ароматизатор Ваниль 1141 (РФ)', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (146, N'Ароматизатор Ваниль (Австрия)', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (147, N'Ароматизатор Ванильно-сливочный 2401', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (148, N'Аароматизатор Виноград 9004', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (149, N'Ароматизатор Вишня 1152', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (150, N'Ароматизатор Горький миндаль (Австрия)', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (151, N'Ароматизатор Горький миндаль 1181', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (152, N'Ароматизатор Грецкий орех 1171', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (153, N'Ароматизатор Груша 1161', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (154, N'Ароматизатор Дыня 1103', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (155, N'Ароматизатор Дюшес 9015', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (156, N'Ароматизатор Зеленое яблоко 3403', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (157, N'Ароматизатор Земляника 1605', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (158, N'Ароматизатор Ирландский крем 7112', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (159, N'Ароматизатор Какао 1301', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (160, N'Ароматизатор Карамель 2403', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (161, N'Ароматизатор Клубника 1603', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (162, N'Ароматизатор Клюква 7500', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (163, N'Ароматизатор Кокос 1701', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (164, N'Ароматизатор Коньяк 9000', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (165, N'Ароматизатор Кофе 1401', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (166, N'Ароматизатор Креветка МА/1 333', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (167, N'Ароматизатор Крем-брюле 7115', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (168, N'Ароматизатор Лесной орех 1991', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (169, N'Ароматизатор Лимон (Австрия)', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (170, N'Ароматизатор Лимон (РФ) 1903', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (171, N'Ароматизатор Малина 2002', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (172, N'Ароматизатор Мандарин 2012', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (173, N'Ароматизатор Мед 2301', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (174, N'Ароматизатор Мята 7001', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (175, N'Ароматизатор Персик 7003', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (176, N'Ароматизатор Ром  (РФ) 2802', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (177, N'Ароматизатор Ром (Австрия)', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (178, N'Ароматизатор Сгущеное молоко 3301', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (179, N'Ароматизатор Слива 9090', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (180, N'Ароматизатор Смородина 3001', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (181, N'Ароматизатор Творог 3208', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (182, N'Ароматизатор Топленое молоко 3309', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (183, N'Ароматизатор Фруктовое ассорти 3703', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (184, N'Ароматизатор Шоколад 1202', N'кг.', NULL, NULL, N'Ароматизаторыэ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (185, N'Ванилин (Ваниллар) 1410055', N'кг.', NULL, NULL, N'Ванилин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (186, N'Ванилин Vanilave', N'кг.', NULL, NULL, N'Ванилин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (187, N'Ванилин VL-607 ГОСТ фольга 0,5', N'кг.', NULL, NULL, N'Ванилин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (188, N'Ванилин VN-007', N'кг.', NULL, NULL, N'Ванилин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (189, N'Ванилин VN-107 0,5', N'кг.', NULL, NULL, N'Ванилин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (190, N'Ванилин VN-307', N'кг.', NULL, NULL, N'Ванилин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (191, N'Глазурь шоколад. "Медовик" логотип', N'шт.', NULL, NULL, N'Глазурь', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (192, N'Глазурь шоколадная "Треугольник белый"', N'шт.', NULL, NULL, N'Глазурь', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (193, N'Глазурь шоколадная "Треугольник темный"', N'шт.', NULL, NULL, N'Глазурь', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (194, N'Напиток шок. "Голден Чок" 1л', N'л', NULL, NULL, N'Глазурь', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (195, N'Пралине фисташковое', N'кг.', NULL, NULL, N'Глазурь', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (196, N'Пралине хрустящее Крокант "Лимонное безе" (ведро)', N'кг.', NULL, NULL, N'Глазурь', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (197, N'Шоколад  Ariba Bianko Рani белый', N'кг.', NULL, NULL, N'Глазурь', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (198, N'Шоколад Ariba Fondante Pani 57(36/38) по1кг', N'кг.', NULL, NULL, N'Глазурь', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (199, N'Шоколад темный "Ariba Fondente Pani 36/38" (красны', N'кг.', NULL, NULL, N'Глазурь', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (200, N'Шоколад Ariba Fondente Pani72 (38/40) по1 кг', N'кг.', NULL, NULL, N'Глазурь', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (201, N'Шоколад молочный "Ariba Latte Pani 34/36" (синий)', N'кг.', NULL, NULL, N'Глазурь', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (202, N'Шоколад  "Белый Сargill белый 29% какао', N'кг.', NULL, NULL, N'Глазурь', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (203, N'Шоколад Сargill молочный 34% какао', N'кг.', NULL, NULL, N'Глазурь', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (204, N'Шоколад Сargill Темный 54% какао', N'кг.', NULL, NULL, N'Глазурь', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (205, N'Ганаш черный шоколад НАЧИНКА', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (206, N'Глазурь  "Caravella Cover Cocoa"темная', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (207, N'Глазурь белая "Caravella Cover White"', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (208, N'Глазурь Кавер молоч.(паста) 5 кг', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (209, N'Глазурь конд. белая ГК-2Б Блиссо', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (210, N'Глазурь кондитерская Блиссо дропсы  01-13', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (211, N'Глазурь кондитерская Блиссо дропсы  02-14', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (212, N'Глазурь кондитерская Блиссо дропсы  03-14', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (213, N'Глазурь конд.темная 04-14  Блиссо', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (214, N'Глазурь Мируар ваниль мягкая', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (215, N'Глазурь палитра (желтый) лимон', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (216, N'Глазурь палитра (зеленый) яблоко 4ZБС', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (217, N'Глазурь палитра (красный) клубника 4КБС', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (218, N'Глазурь палитра (синяя) голубика', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (219, N'Глазурь помадка белая White N Glossy', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (220, N'Глазурь помадная белая Fondant 7 кг 230000065', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (221, N'Глазурь-Помадка Фондант коробка', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (222, N'Глазурь проф Апельсиновая Аэлита', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (223, N'Глазурь проф. Белая  1бс  (Аэлита)', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (224, N'Глазурь помадно-шоколадная Реди Айс', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (225, N'Глазурь Соломка "апельсин"', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (226, N'Глазурь Соломка"белая"', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (227, N'Глазурь Соломка "вишня"', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (228, N'Глазурь Соломка "клубника"', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (229, N'Глазурь Соломка"лимон"', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (230, N'Глазурь Соломка"орех"', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (231, N'Глазурь Соломка"темная"', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (232, N'Глазурь Соломка"яблоко"', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (233, N'Глазурь шоколадная "Квадрат Белый" 1кг', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (234, N'Глазурь шоколадная "Кофейные зерна"', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (235, N'Глазурь шоколадная "Наполеон" логотип', N'шт.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (236, N'Глазурь шоколадная "Орех фундук"', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (237, N'Глазурь шоколад  "Палочки мраморные 1,5кг', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (238, N'Глазурь шоколадная "Сердечко красное" , 6*1,5кг', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (239, N'Глазурь шоколадная "Треугольник мраморный"', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (240, N'Глазурь шоколадная "Хлопья Малахит" 10 кг', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (241, N'Глазурь шоколадная "Хлопья Мраморные" 10 кг', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (242, N'Глазурь шоколадная "Хлопья Янтарь" 10 кг', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (243, N'Глазурь шоколадная "Хлопья Яшма" 1/10', N'кг.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (244, N'Глазурь шоколадная "Чизкейк" логотип', N'шт.', NULL, NULL, N'Шоколад', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (245, N'Дрожжи "Воронежские" 0,5 кг', N'кг.', NULL, NULL, N'Дрожжи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (246, N'Дрожжи "Глорипан"', N'кг.', NULL, NULL, N'Дрожжи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (247, N'Дрожжи "ДСЛ" Воронеж', N'кг.', NULL, NULL, N'Дрожжи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (248, N'Дрожжи "Пакмая" 500г', N'кг.', NULL, NULL, N'Дрожжи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (249, N'Дрожжи "Фермипан коричневые"', N'кг.', NULL, NULL, N'Дрожжи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (250, N'Дрожжи "Фермипан красные"', N'кг.', NULL, NULL, N'Дрожжи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (251, N'Дрожжи "Фермипан Софт" (2 в 1)', N'кг.', NULL, NULL, N'Дрожжи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (252, N'Дрожжи "Фермипан Супер" 2 в 1', N'кг.', NULL, NULL, N'Дрожжи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (253, N'Загуститель Медея', N'кг.', NULL, NULL, N'Загуститель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (254, N'Загуститель Микеланджело', N'кг.', NULL, NULL, N'Загуститель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (255, N'Загуститель Софт Биндерс', N'кг.', NULL, NULL, N'Загуститель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (256, N'Крахмал картофельный в/с. Россия', N'кг.', NULL, NULL, N'Загуститель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (257, N'Крахмал картофельный в/сДания', N'кг.', NULL, NULL, N'Загуститель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (258, N'Крахмал кукурузный', N'кг.', NULL, NULL, N'Загуститель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (259, N'Пектин цитрусовый', N'кг.', NULL, NULL, N'Загуститель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (260, N'Кокосовая стружка "Медиум"', N'кг.', NULL, NULL, N'Кокосовая стружка', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (261, N'Кокосовая стружка  "Файн"', N'кг.', NULL, NULL, N'Кокосовая стружка', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (262, N'Вишни красн. "Мараскино" с палочкой 1,9кг', N'бан', NULL, NULL, N'Консервированные фрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (263, N'Вишня  коктейльн с вет красная ст.б 0,76л', N'бан', NULL, NULL, N'Консервированные фрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (264, N'Вишня засахарен красные ведро', N'кг.', NULL, NULL, N'Консервированные фрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (265, N'Вишня засахаренная красная короб 5 кг', N'кг.', NULL, NULL, N'Консервированные фрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (266, N'Молд силиконовый АССОРТИ ЦВЕТОВ (11шт)11*9*1 34727', N'шт.', NULL, NULL, N'Консервированные фрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (267, N'Краситель  Luxomix  Аннато  желт/оранж 0021 натура', N'кг.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (268, N'Краситель Luxomix Антоцианин водораст0050красно-фи', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (269, N'Краситель Luxomix Бета-каротин водораст0004золот/ж', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (270, N'Краситель Luxomix Бета-каротин жирораст0002 золот/', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (271, N'Краситель  Luxomix Кармин жирораств 0033 красная я', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (272, N'Краситель Lexomir уголь', N'кг.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (273, N'Краситель  Luxomix Хлорофилл вод/жир рств0041зелен', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (274, N'Краситель Luxomiх  Куркумин вод/жир раств 0040 ярк', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (275, N'Краситель гелевый CHOCOLATE BROWN 21гр 0245', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (276, N'Краситель гелевый DEEP PINK 21гр 0209', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (277, N'Краситель гелевый ELECTRIK ORANGE  21гр 0246', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (278, N'Краситель гелевый GOLD 21гр 0203', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (279, N'Краситель гелевый  MAUVE 21гр 0368', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (280, N'Краситель гелевый SKY BLUE 21гр 0250', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (281, N'Краситель гелевый SOFT PINK 21гр 0213', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (282, N'Краситель пищ.гелевый Бирюзовый 100г', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (283, N'Краситель пищевой гелевый Голубой 100г', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (284, N'Краситель пищ.гелевый Золотой  100г', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (285, N'Краситель пищ. гелевый Оранжевый 100г', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (286, N'Краситель пищ.гелевый РОЗОВЫЙ (Малиновый) 100г', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (287, N'Краситель пищ.гелевый Серебряный 100г', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (288, N'Краситель пищевой "Желтый" 0,25', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (289, N'Краситель пищевой "Зеленый" 250мл (Е 131,Е132)', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (290, N'Краситель пищевой "Лимонный" 0,25кг.', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (291, N'Краситель гелевый  MAUVE 21гр 0368', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (292, N'Краситель пищевой "Оранжевый" 250мл (Е110, Е124)', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (293, N'Краситель пищевой "Пурпурно-красный" (роз.) 0,25кг', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (294, N'Краситель Б Кандурин Золотой  блеск 5г', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (295, N'Красители Кандурин разноцв. 5г', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (296, N'Краситель Серебряный блеск 5г', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (297, N'Краситель Б Коричневый янтарь 5г', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (298, N'Краситель Б Оранжевый янтарь 5г', N'шт.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (299, N'Краситель пищевой Зеленое яблоко', N'кг.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (300, N'Краситель Индиго кармин (гол)', N'кг.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (301, N'Краситель Кармуазин', N'кг.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (302, N'Краситель Понсо 4R  (клубнич) 0,5кг', N'кг.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (303, N'Краситель Сансет желтый (Солнечный закат) 1кг', N'кг.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (304, N'Краситель Солнечный закат', N'кг.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (305, N'Краситель Тартразин 1кг', N'кг.', NULL, NULL, N'Краситель', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (306, N'Йогурт ФРЭШ эконом смесь для конд крема', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (307, N'Крем  заварной Ваниль', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (308, N'Крем заварной ванильный "МагияКрем"', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (309, N'Крем заварной Дельфия Кальткрем', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (310, N'Крем заварной Кремина', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (311, N'Крем заварной Садко творог ФСД', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (312, N'Кремиголд', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (313, N'Смесь для десерта "Маскарпоне"', N'л', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (314, N'Крем "Caravella Ante-forno Hazelnut"', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (315, N'Крем "Какао анте-форно"', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (316, N'Крем Шок ореховый №61м Аэлита', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (317, N'Крем Шок Ромовый №67', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (318, N'Начинка Дольчемикс АбрикосТ', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (319, N'Начинка Дольчемикс БананТ', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (320, N'Начинка Дольчемикс Ваниль Т 6N10104', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (321, N'Начинка Дольчемикс Вишня Т  6N10107', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (322, N'Начинка Дольчемикс Йогурт Т  6N10110', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (323, N'Начинка Дольчемикс Карамель Т', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (324, N'Начинка Дольчемикс Клубника  Т  6N10113', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (325, N'Начинка Дольчемикс ЛимонТ 6N10119', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (326, N'Начинка Дольчемикс со вкус сливокТ', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (327, N'Начинка Дольчемикс со  вкус яичного ликера 6N10132', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (328, N'Начинка Дольчемикс со вкусом ореха', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (329, N'Начинка  Дольчемикс Творог Т  (крупинки)Л063', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (330, N'Начинка Дольчемикс Творог Т   6N101128', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (331, N'мед цветочно-акациевый', N'кг', NULL, NULL, N'Мед', N'261', NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (332, N'Начинка Дольчемикс Шоколад Т  6N10129', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (333, N'Начинка желейная Клубника Т', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (334, N'Начинка кремовая Банан', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (335, N'Начинка кремовая Ванильная', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (336, N'Начинка кремовая Нуга ореховая', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (337, N'Начинка кремовая Сливочная', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (338, N'Начинка кремовая Сырная со вкусом Эмменталер', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (339, N'Начинка кремовая Творожная особая зернистая', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (340, N'Начинка кремовая Творожная особая универсальная', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (341, N'Начинка "Мультифил Карамель"для конд.изд.(СиЭсЭм)', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (342, N'Начинка форт со вкус апельсина кремовая', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (343, N'Начинка форт со вкус яблока с корицей', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (344, N'Начинка форт со вкусом вишни Т', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (345, N'Начинка форт со вкусом малины Т', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (346, N'Начинка фруктовая Т "Фруффи"(СиЭсЭм) 3,3кг.', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (347, N'Начинка Дольчемикс Вишня Т  6N10107', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (348, N'Начинка Яблочная сухая Пеппи ФСД', N'кг.', NULL, NULL, N'кремы', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (349, N'Жир фритюрный (масло)5 л', N'л', NULL, NULL, N'Жир', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (350, N'Жир фритюрный масло 10 л', N'л', NULL, NULL, N'Жир', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (351, N'Маргарин "Домашний" 60% ЭФКО', N'кг.', NULL, NULL, N'Маргарин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (352, N'Маргарин "Домашний" МТ 60% (Дмитров)', N'кг.', NULL, NULL, N'Маргарин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (353, N'Маргарин  "Молочный"  (универсальный) МТ 82% (Дмит', N'кг.', NULL, NULL, N'Маргарин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (354, N'Маргарин "Столовый" ЭФКО  МТЭкоуниверсал 82%1003-3', N'кг.', NULL, NULL, N'Маргарин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (355, N'Маргарин для выпечки Маргарон CRUSTO Profi 30', N'кг.', NULL, NULL, N'Маргарин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (356, N'Маргарин для кремов ЭФКО ТМ Экокрем 82% 1103-32', N'кг.', NULL, NULL, N'Маргарин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (357, N'Маргарин для песочного теста ЭФКО ТМ Экопай 82%140', N'кг.', NULL, NULL, N'Маргарин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (358, N'Маргарин "Маргарон" для слоенного теста  82% STRAT', N'кг.', NULL, NULL, N'Маргарин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (359, N'Маргарин для слоенного теста ЭФКО МТС Экослайс 82%', N'кг.', NULL, NULL, N'Маргарин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (360, N'Маргарин "Платте круассан" для слойки', N'кг.', NULL, NULL, N'Маргарин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (361, N'Маргарин Универсальный 82% Маргарон UNI', N'кг.', NULL, NULL, N'Маргарин', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (362, N'Масло для кремов 82 % Маргарон 20 кг.FASTO profi 3', N'кг.', NULL, NULL, N'Масло', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (363, N'Майонез Hjlberg Провансаль 67% ВК 10 ГР ведро 10 л', N'Ведро', NULL, NULL, N'Майонез', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (364, N'Майонез Васаби мягкийй вкус 200мл дой-пак дозат', N'шт.', NULL, NULL, N'Майонез', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (365, N'Майонез Золот зернышко соус 15% Ол 900мл ведро', N'шт.', NULL, NULL, N'Майонез', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (366, N'Майонез Золот зернышко соус15% Ол 220мл дой-пак до', N'шт.', NULL, NULL, N'Майонез', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (367, N'Майонез Золотое зернышко Провансаль ведро 900 мл 6', N'шт.', NULL, NULL, N'Майонез', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (368, N'Масло горчичное', N'кг.', NULL, NULL, N'масло', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (369, N'Молд силиконовый баба яга и акссесуары 8 шт м0135', N'шт.', NULL, NULL, N'Майонез', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (370, N'Марципан 1:2 22%', N'кг.', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (371, N'Мастика бел 014485 ведро 7 кг Германия 01537', N'кг.', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (372, N'Мастика бел 01490 ведро 12,5 кг Дания', N'кг.', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (373, N'Мастика паста для моделирования ПРИНЦЕССА', N'кг.', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (374, N'Мастика сахарная ванильная', N'кг.', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (375, N'Мастика сахарная ванильная голубая 600г', N'шт', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (376, N'Мастика сахарная ванильная желтая 600г', N'шт', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (377, N'Мастика сахарная ванильная зеленая 600г', N'шт', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (378, N'Изюм Афганский', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 12,5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (379, N'Мастика сахарная ванильная коричневая  600г', N'шт', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (380, N'Мастика сахарная ванильная красная 600г', N'шт', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (381, N'Мастика сахарная ванильная оранжевая 600г', N'шт', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (382, N'Мастика сахарная ванильная розовая 600г', N'шт', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (383, N'Мастика сахарная ванильная синяя 600г', N'шт', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (384, N'Мастика сахарная ванильная фиолетовая 600гр', N'шт', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (385, N'Мастика сахарная ванильная черная 600г', N'шт.', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (386, N'Молд д/мастики "Малыш и медвежонок" силикон м2', N'шт.', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (387, N'Молд-узор для мастики "Орнамент" лм21', N'шт.', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (388, N'Молд-форма пластик.Игральные карты 4шт 13478', N'шт.', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (389, N'Молд-форма Узор 4вида 90*90*11мм см039', N'шт.', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (390, N'смесь для айсинга 500 гр россия 20250', N'шт.', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (391, N'Трафарет для айсинга 315*75мм 31672', N'шт.', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (392, N'Молд д/мастики "Клоун" силикон 3,5х8см м5', N'шт.', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (393, N'Молд д/мастики "Медвежья семья" силикон м4', N'шт.', NULL, NULL, N'Мастика марципаны', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (394, N'Молоко ВАРЕНОЕ сгущенка Особая', N'кг.', NULL, NULL, N'Сгущенное молоко', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (395, N'Молоко ВАРЕНОЕ сгущенка Особая белая', N'кг.', NULL, NULL, N'Сгущенное молоко', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (396, N'Молоко ВАРЕНОЕ сгущенка Премиум Т', N'кг.', NULL, NULL, N'Сгущенное молоко', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (397, N'Молоко сгущ. вареное Т короб ЭРКОН', N'кг.', NULL, NULL, N'Сгущенное молоко', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (398, N'Молоко сгущ. вареное (ведро) жир 11%', N'кг.', NULL, NULL, N'Сгущенное молоко', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (399, N'Молоко сгущ. вареное "Борская" (коробка-15кг)', N'кг.', NULL, NULL, N'Сгущенное молоко', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (400, N'Молоко сгущ. варёное Борская Термост 12%', N'кг.', NULL, NULL, N'Сгущенное молоко', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (401, N'Молоко сгущ. ЛЮКС Варенка 08-10 (ГОЛУБАЯ)', N'кг.', NULL, NULL, N'Сгущенное молоко', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (402, N'Молоко сгущ. Н. Кисляй 400г ГОСТ Сгущеные берега', N'шт.', NULL, NULL, N'Сгущенное молоко', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (403, N'Молоко сухое  (1,5%)', N'кг.', NULL, NULL, N'Молоко сухое', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (404, N'Мука гречневая ГОСТ', N'кг.', NULL, NULL, N'Мука', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (405, N'Мука кукурузная', N'кг.', NULL, NULL, N'Мука', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (406, N'Мука овсяная д/детского питания 30кг.', N'кг.', NULL, NULL, N'Мука', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (407, N'Мука пшеничная в/с (Воронеж)', N'кг.', NULL, NULL, N'Мука', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (408, N'Мука пшенная ТУ', N'кг.', NULL, NULL, N'Мука', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (409, N'Мука ржаная обдирная', N'кг.', NULL, NULL, N'Мука', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (410, N'Мука рисовая', N'кг.', NULL, NULL, N'Мука', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (411, N'Отруби овсяные', N'кг.', NULL, NULL, N'Мука', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (412, N'Джем Абрикос Термостабильный(14)', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (413, N'Начинка желейная Абрикос Т', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (414, N'Начинка желейная Вишня Т', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (415, N'Конфитюр Абрикосовый гомогенный Т 14кг.', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (416, N'Конфитюр Вишневый гомогенный  14кг.', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (417, N'Конфитюр Персиковый гомогенный Т 14кг.', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (418, N'Конфитюр Черная смородина ГОМОГЕННЫЙ Т 14 кг', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (419, N'Конфитюр Абрикосовый  измельченный с кусоч плод -я', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (420, N'Конфитюр Абрикосовый  с крупн  кусоч плод -ягодн 1', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (421, N'Конфитюр Ананасовый плодово-ягодный с кус.яг', N'кг', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (422, N'Конфитюр "Апельсин с кусоч плодово-ягодн', N'кг', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (423, N'Конфитюр  Апельсиновый с цедрой', N'кг', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (424, N'Конфитюр  Вишня скусоч плод-ягодн', N'кг', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (425, N'Конфитюр плод-ягодн Грушовый с кусоч', N'кг', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (426, N'Конфитюр плод-ягодн Ежевичный', N'кг', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (427, N'Конфитюр КИВИ Т  плодово-ягодный с кус.яг', N'кг', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (428, N'Конфитюр плод-ягодн Клубничный', N'кг', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (429, N'Конфитюр Клюквенный плод-ягодн с кус12,5 кг', N'кг', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (430, N'Конфитюр  Лимонный с цедрой', N'кг', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (431, N'Конфитюр Малиновый с кус.яг плод-ягод12,5', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (432, N'Конфитюр плод-ягодн Персик Т', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (433, N'Конфитюр плод-ягодн Черничный', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (434, N'Конфитюр Яблоко', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (435, N'Начинка Яблочная готовая кубики JABEX', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (436, N'Повидло абрикосовое (бочка)', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (437, N'Повидло вишневое (бочка) 30кг', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (438, N'Повидло клубничное (бочка) 30 кг', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (439, N'Повидло персиковое (бочка) 30кг', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (440, N'Повидло яблочное (бочка) Россошь 35 кг', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (441, N'Повидло яблочное (бочка) Садовое 35 кг', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (442, N'Повидло яблочное ГОСТ бочка (Обоянь) 30кг', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (443, N'Начинка "Anabell" со вкусом шоколада', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (444, N'Начинка Миндальная для конд. изделий Ла Гласса', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (445, N'Маковая начинка "Звёздная"', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (446, N'Маковая начинка "Монмак"', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (447, N'Маковая начинка 50% ( Пфанл) 10кг', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (448, N'Маковая начинка традиционная', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (449, N'Начинка Орех лесной 24%  10 кг(сухая)', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (450, N'Начинка Твороженная Кваркфюлинг', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (451, N'Смесь Сырная (Пфанл)', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (452, N'"Топфенфикс"творожная начинка', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (453, N'Арахис 40/50 неочищ.', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (454, N'Арахис Аргентина очищ.', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (455, N'Арахис дробл. жаренный 2/4мм', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (456, N'Арахис жареный дробл. 3-5мм 12', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (457, N'Арахис обжаренный (лепестки)   8 кг коробка', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (458, N'Арахис обжаренный (лепестки) 4,5 кг  ведро', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (459, N'Арахис Сплит очищенный', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (460, N'Грецкий орех', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (461, N'Грецкий орех Экстра', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (462, N'Кедровый орех в белой глазури', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (463, N'Кешью обжаренный', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (464, N'Кешью суш.', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (465, N'Миндаль сушеный.30/32', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (466, N'Миндаль/пластинки неочищен.', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (467, N'Миндаль/пластинки очищен', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (468, N'Миндальная мука', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (469, N'Фисташка жарен. соленая 28/30', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (470, N'Фундук сушен.', N'кг.', NULL, NULL, N'Орехи', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (471, N'Кунжут семена отбеленные', N'кг.', NULL, NULL, N'Семена', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (472, N'Семена подсолнеч очищенные ВП', N'кг.', NULL, NULL, N'Семена', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (473, N'Семена подсолнечника сушеные очищ', N'кг.', NULL, NULL, N'Семена', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (474, N'Семечки тыквен. суш очищен', N'кг.', NULL, NULL, N'Семена', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (475, N'Семя льна', N'кг.', NULL, NULL, N'Семена', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (476, N'Семя льна', N'кг.', NULL, NULL, N'Семена', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (477, N'Миндаль обжаренный 
целый', N'кг.', NULL, NULL, N'Орех', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (478, N'Патока 35 кг', N'кг.', NULL, NULL, N'Сахар', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (479, N'Сахар', N'кг.', NULL, NULL, N'Сахар', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (480, N'Сахарная пудра ароматизиров термостойкая деко-про', N'кг.', NULL, NULL, N'Сахар', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (481, N'Сахарная пудра нетающая бархатная  "Бархатная" ФСД', N'кг.', NULL, NULL, N'Сахар', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (482, N'Сахарная пудра коробка 20кг', N'кг.', NULL, NULL, N'Сахар', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (483, N'Сахарная пудра РОССИЯ', N'кг.', NULL, NULL, N'Сахар', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (484, N'Свити сахарная пудра нетающая', N'кг.', NULL, NULL, N'Сахар', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (485, N'Сахарная пудра Сладкий снег', N'кг.', NULL, NULL, N'Сахар', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (486, N'Сахарозам. Аспасвит', N'кг.', NULL, NULL, N'Сахар', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (487, N'Сода весовая', N'кг.', NULL, NULL, N'сода', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (488, N'Яичный порошок', N'кг.', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (489, N'Сливки "Прима Наткрем" с доб. животн.сливок', N'кг.', NULL, NULL, N'сливки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (490, N'Сливки ванильно-сливочные (коробка) 10кг', N'л', NULL, NULL, N'сливки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (491, N'Сливки "Декор Ап"', N'л', NULL, NULL, N'сливки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (492, N'Сливки "Декор Ап" белые', N'л', NULL, NULL, N'сливки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (493, N'Сливки Дукатто 20 л. оранж 302/301', N'л', NULL, NULL, N'сливки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (494, N'Сливки Дукатто 20 л. 102 желтые/зел', N'л', NULL, NULL, N'сливки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (495, N'Сливки Дэлли Крем Софи', N'л', NULL, NULL, N'сливки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (496, N'Сливки Завиток Т М', N'л', NULL, NULL, N'сливки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (497, N'Сливки СКИТ 1 кг Эклектика', N'л', NULL, NULL, N'сливки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (498, N'Маковая начинка "Монмак"', N'кг.', NULL, NULL, N'Начинки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (499, N'Смесь для бисквита свекольного с медовым вкус 4В31', N'кг', NULL, NULL, N'сливки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (500, N'Смесь для маффина вкус шоколада "Милк Кейк концент', N'кг', NULL, NULL, N'сливки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (501, N'Смесь для маффина и бискв "Пунш Кейк"', N'кг', NULL, NULL, N'сливки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (502, N'Смесь для песоч теста ND PRIME Bachnmix', N'кг', NULL, NULL, N'сливки', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (503, N'Вишня суш.б/к', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (504, N'Изюм б/к Афганистан в/с', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (505, N'Изюм Жумбо золотой', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (506, N'Изюм Жумбо чёрный', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (507, N'Изюм Малояр 10кг', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (508, N'Изюм Малояр Aqiq Raisins Иран', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (509, N'Изюм Малояр HATAMI 8000 Иран', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (510, N'Изюм Султана Голд Иран', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (511, N'Имбирь подсушенный', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (512, N'Инжир сушен.', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (513, N'Клюква сушеная', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (514, N'Курага в/с  №6 Таджикистан', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (515, N'Курага Экстра', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (516, N'Сухофрукты для компота (10)', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (517, N'Финики В/С Заррин', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (518, N'Цукаты (АНАНАС ) куб. 8-10мм микс', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (519, N'Цукаты (ананас) куб 10 мм Микс', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (520, N'Цукаты (АНАНАС) кубики 3-5мм микс  5 кг.', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (521, N'Цукаты (АНАНАС) цилиндры Микс', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (522, N'Цукаты (АНАНАС) язычки микс', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (523, N'Цукаты микс', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (524, N'Цукаты (папаи) палочки', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (525, N'ЧЕРНОСЛИВ  Б/К Узбекистан в/с', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (526, N'Чернослив б/к Чили', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (527, N'Шиповник суш.', N'кг', NULL, NULL, N'Сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (528, N'Топпинг 1 кг Апельсин (12шт.)', N'шт.', NULL, NULL, N'топпинги', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (529, N'Топпинг 1кг Ваниль', N'бут', NULL, NULL, N'топпинги', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (530, N'Топпинг Вишня 1кг', N'шт.', NULL, NULL, N'топпинги', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (531, N'Топпинг 1кг Голубое Небо ( Банан+Клубника) вселенн', N'кг.', NULL, NULL, N'топпинги', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (532, N'Топпинг Карамель 1кг', N'шт.', NULL, NULL, N'топпинги', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (533, N'Топпинг Киви 1кг', N'шт.', NULL, NULL, N'топпинги', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (534, N'Топпинг Клубника 1кг', N'шт.', NULL, NULL, N'топпинги', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (535, N'Топпинг 1кг Малина', N'шт.', NULL, NULL, N'топпинги', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (536, N'Топпинг 1кг  Персик', N'кг.', NULL, NULL, N'топпинги', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (537, N'Топпинг Шоколад 1кг', N'шт.', NULL, NULL, N'топпинги', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (538, N'Кунжут очищенный', N'кг', NULL, NULL, N'бобы', NULL, NULL, N'мешок 25 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (539, N'Мак пищевой', N'кг', NULL, NULL, N'бобы', NULL, NULL, N'мешок 25 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (540, N'Маш (Мош)', N'кг', NULL, NULL, N'бобы', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (541, N'Нут (Горох)', N'кг', NULL, NULL, N'бобы', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (542, N'Поп корн (кукуруза)', N'кг', NULL, NULL, N'бобы', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (543, N'Рис «Девзира» красный', N'кг', NULL, NULL, N'бобы', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (544, N'Рис «Девзира» белый', N'кг', NULL, NULL, N'бобы', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (545, N'Фасоль белая', N'кг', NULL, NULL, N'бобы', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (546, N'Фасоль красная', N'кг', NULL, NULL, N'бобы', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (547, N'Чечевица', N'кг', NULL, NULL, N'бобы', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (548, N'Изюм «Малояр»', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (549, N'Изюм «Шигани»', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (550, N'Изюм Афганский', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 12,5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (551, N'Изюм голден «Узбекистан»', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (552, N'Изюм голден «Иран»', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (553, N'Изюм Джамбо Голден', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб.10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (554, N'Изюм Джамбо Флейм', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (555, N'Изюм сояги «Терма»', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 12,5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (556, N'Изюм сояги «МО»', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 11 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (557, N'Курага Индустр. "Столовая"', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (558, N'Курага №7-8', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (559, N'Курага №6', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (560, N'Курага №3', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (561, N'Курага №2', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (562, N'Курага Джамбо', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (563, N'Курага Джамбо "Элитна"', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (564, N'Курага "Шоколадная"', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (565, N'Урюк №2', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (566, N'Урюк "Шоколадный"', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (567, N'Курага Индустриальная', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 12,5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (568, N'Курага №8', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 4,75 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (569, N'Курага №3', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 4,75 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (570, N'Курага №1', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 4,75 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (571, N'Смесь «Ореховая»', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'упак. 1 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (572, N'Смесь «Радуга»', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'упак. 1 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (573, N'Смесь «Спортивная» 0,5 кг', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'упак. 0,5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (574, N'Смесь «Спортивная» 1 кг', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'упак. 1 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (575, N'Смесь «Фруктово-ягодная»', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'упак. 1 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (576, N'Абрикосовые косточки', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (577, N'Арахис Аргентина', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (578, N'Арахис бланшированный', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (579, N'Арахис в кокосовом соке', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'короб. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (580, N'Арахис обжаренный', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (581, N'Арахис Китайский 28/32', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (582, N'Арахис в скорлупе', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 7 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (583, N'Арахис бланшированный соленый', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (584, N'Арахис узбекский', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (585, N'Бразильский орех', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (586, N'Грецкий орех «Бабочка»', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'кор. 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (587, N'Грецкий орех «Бабочка» экстра', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'кор. 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (588, N'Грецкий орех в скорлупе мытый', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (589, N'Грецкий орех очищенный', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'кор. 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (590, N'Кедровый орех в скорлупе', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (591, N'Кедровый орех очищенный', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (592, N'Кедровый орех «Натси» (очищ.)', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 2-12,5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (593, N'Кешью № 320', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (594, N'Кешью № 450', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (595, N'Кешью жареный', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (596, N'Миндаль 23/25 Nonparel Extra', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (597, N'Миндаль 27/30 Nonparel', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (598, N'Миндаль жареный', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (599, N'Семечки подсолнуха (неочищ.)', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 30 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (600, N'Семечки н/о пузанок', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 30 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (601, N'Семечки подсолнуха очищенные', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (602, N'Тыквенные семечки очищенные', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (603, N'Тыквенные семечки в скорлупе', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5-10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (604, N'Фисташки натуральные «Иран»', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (605, N'Фисташки натуральные «США»', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'короб. 11,34 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (606, N'Фундук очищенный обжареный', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (607, N'Фундук в скорлупе', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (608, N'Фундук очищенный Дагестан', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (609, N'Фундук очищенный крупный 15++', N'кг', NULL, NULL, N'Орехи', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (610, N'Айва сушеная', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (611, N'Боярышник', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (612, N'Вишня сушеная', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'мешок 40 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (613, N'Груша сушеная', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (614, N'Дыня сушеная', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'штук. 1, 2', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (615, N'Инжир Экстра', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'кор. 6 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (616, N'Инжир Туркел', N'шт', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (617, N'Инжир Sunmar 2,5 кг', N'шт', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 2,5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (618, N'Смесь Компотная 1 сорт', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'мешок 30 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (619, N'Молоко паст. "Краснодарское" 2,5 % жирн. в цистерн', N'л', NULL, NULL, N'Молоко', NULL, N'ТУ 9222-001-49464 828-04', NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (620, N'Смесь Компотная в/с', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'мешок 30 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (621, N'Смесь Компотная в/с Экстра', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'мешок 30 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (622, N'Шиповник Экстра №1', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 8 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (623, N'Шиповник в/с №2', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'мешок 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (624, N'Шиповник в/с', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (625, N'Яблоко сушеное', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'мешок 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (626, N'Чернослив Сафруко 30/40', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (627, N'Чернослив крупный 10/20', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (628, N'Чернослив крупный 10/20', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (629, N'Чернослив средний 30/40', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (630, N'Чернослив мелкий 70/80', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (631, N'Чернослив в банках', N'шт', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 12 шт', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (632, N'Чернослив с косточкой', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (633, N'Чернослив с косточкой 40/50', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'коробка 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (634, N'Ананас кольцо', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (635, N'Ананас Кубики Микс 8-10мм', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (636, N'Ананас листики Манго', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (637, N'Ананас листики микс', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (638, N'Ананас листики желтые', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (639, N'Ананас палочки желтые', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (640, N'Ананас палочки микс', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (641, N'Ананас таблетки микс', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (642, N'Ананас таблетки желтые', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (643, N'Ананс кубики желтые', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (644, N'Папайя со вкусом канталупа', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (645, N'Папайя палочки', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (646, N'Папайя кубики 8-10 мм', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (647, N'Банановые чипсы 6,8 кг', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 6,8 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (648, N'Вишня вяленая 12,5 кг', N'шт', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 2,5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (649, N'Грейпфрут полоски', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 7 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (650, N'Груша вяленая', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 2,5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (651, N'Имбирь в сахаре', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 2 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (652, N'Канталупа тайская дыня', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (653, N'Киви вяленый', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 1 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (654, N'Клубника сушеная', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (655, N'Кокос кубики', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (656, N'Кумкуат лайм зеленый', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (657, N'Кумкуат лайм красный', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (658, N'Кумкуат лимон желтый', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 2,5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (659, N'Манго язычки оранжевые', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (660, N'Кумкуат мандарин в сиропе', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 2,5-5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (661, N'Кумкуат мандарин сушеный', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 2,5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (662, N'Персик вяленый', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 2,5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (663, N'Помело', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 4 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (664, N'Райское яблоко', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (665, N'Физалис', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 2,5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (666, N'Черешня в сиропе', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 7 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (667, N'Томат черри сушеный', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'упак. 5 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (668, N'Яблоко кольцо вяленое', N'кг', NULL, NULL, N'сухофрукты', NULL, NULL, N'короб. 10 кг', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (669, N'Финики Иран', NULL, NULL, NULL, N'сухофрукты', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (670, N'Мука миндальная ПРЕМИУМ ', N'кг', NULL, NULL, N'Премиксы для выпечки', N'12''348.72', NULL, N'(пакет 12.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (671, N'Комп.пищ.добавка премикс САВОЯРДИ микс ', N'кг', NULL, NULL, N'Премиксы для выпечки', N'5''688.00', NULL, N'(мешок 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (672, N'Комп.пищ.добавка премикс ОВОСИЛ ', N'кг', NULL, NULL, N'Премиксы для выпечки', N'1''124.64', NULL, N'(мешок 0.6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (673, N'Комп.пищ.добавка премикс БИСКВИЗИТ ', N'кг', NULL, NULL, N'Премиксы для выпечки', N'3''888.00', NULL, N'(мешок 15 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (674, N'Смесь для мучных изделий КЕЙК ЗЛАКИ ', N'кг', NULL, NULL, N'Премиксы для выпечки', N'1''821.60', NULL, N'(мешок 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (675, N'Комп.пищ.добавка премикс МУРБЕЛЛА ', N'кг', NULL, NULL, N'Премиксы для выпечки', N'3''384.00', NULL, N'(мешок 15 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (676, N'Смесь для мучных изделий ФРОЛЛА ЗЛАКИ ', N'кг', NULL, NULL, N'Премиксы для выпечки', N'1''389.60', NULL, N'(мешок 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (677, N'Смесь сахаристая ГРИЛЬЯЖ ', N'кг', NULL, NULL, N'Премиксы для выпечки', N'288', NULL, N'(мешок 0.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (678, N'Комп.пищ.добавка премикс ФЛОМИКС ', N'кг', NULL, NULL, N'Премиксы для выпечки', N'309,6', NULL, N'(мешок 0.6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (679, N'Комп.пищ.добавка премикс ФЛОМИКС 10х0,6 кг. ', N'кг', NULL, NULL, N'Премиксы для выпечки', N'3''096.00', NULL, N'(короб 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (680, N'Комп.пищ.доб.премикс МАФФИН ', N'кг', NULL, NULL, N'Премиксы для выпечки', N'2''196.00', NULL, N'(мешок 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (681, N'Премикс БРАУНИ ШОК ', N'кг', NULL, NULL, N'Премиксы для выпечки', N'1''836.00', NULL, N'(мешок 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (682, N'Комп.пищ.добавка премикс ВАФЛИ/ОЛАДЬИ ', N'кг', NULL, NULL, N'Премиксы для выпечки', N'396', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (683, N'Комп.пищ.добавка премикс АВОЛЕТТА макарунс ', N'кг', NULL, NULL, N'Премиксы для выпечки', N'3''960.00', NULL, N'(мешок 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (684, N'Крем на растит.маслах КОНДИТЕРСКИЙ 26% ', N'л', NULL, NULL, N'Сливки', N'1''240.00', NULL, N'(короб 12 л.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (685, N'Сливки Бризе 30% ', N'л', NULL, NULL, N'Сливки', N'3''100.00', NULL, N'(короб 12 л.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (686, N'Сливки Бризе 36% ', N'л', NULL, NULL, N'Сливки', N'3''600.00', NULL, N'(короб 12 л.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (687, N'Сливки 33% ', N'л', NULL, NULL, N'Сливки', N'3''455.00', NULL, N'(короб 12 л.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (688, N'Сливки 35% ', N'л', NULL, NULL, N'Сливки', N'3''340.00', NULL, N'(короб 12 л.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (689, N'Крем на растит.маслах для взбивания 26% ', N'л', NULL, NULL, N'Сливки', N'985', NULL, N'(короб 12 л.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (690, N'Крем на растит.маслах для взбивания 26% ', N'л', NULL, NULL, N'Сливки', N'808,5', NULL, N'(короб 10 л.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (691, N'Комп.пищ.добавка крем холод.приготов.ПЕРФЕКТА ', N'кг', NULL, NULL, N'Сливки', N'3''024.00', NULL, N'(мешок 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (692, N'Комп.пищ.добавка крем горяч.приготовл.СОВРАНА ', N'кг', NULL, NULL, N'Сливки', N'2''160.00', NULL, N'(мешок 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (693, N'Комплексная пищевая добавка премикс ТИРАМИСУ ', N'кг', NULL, NULL, N'Сливки', N'1''008.00', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (694, N'Комплексная пищевая добавка премикс БАВАРЕЗЕ ', N'кг', NULL, NULL, N'Сливки', N'936', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (695, N'Комплексная пищ.доб.премикс ПАННА КОТТА ', N'кг', NULL, NULL, N'Сливки', N'972', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (696, N'Крем десертный МУСС КАКАО ', N'кг', NULL, NULL, N'Сливки', N'720', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (697, N'Комп.пищ.доб.крем десертный классич.ЧИЗКЕЙК ', N'кг', NULL, NULL, N'Сливки', N'588', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (698, N'Комп.пищ.доб.крем дес.АМЕРИК.ЧИЗКЕЙК ', N'кг', NULL, NULL, N'Сливки', N'1''260.00', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (699, N'Премикс горячий шоколад ШОКОЛАДНАЯ ЧАШКА ', N'кг', NULL, NULL, N'Сливки', N'612', NULL, N'(мешок 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (700, N'Пюре фруктовое МАНГО ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''368.00', NULL, N'(банка 3.1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (701, N'Паста ПРАЛИНЕ ФИСТАШКА ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''485.00', NULL, N'(ведро 0.9 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (702, N'Глазурь какаосодерж.кондит.ЗАХЕРКРЕМ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''275.20', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (703, N'Глазурь пастообразн.конд.ШОКОСМАРТ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''764.00', NULL, N'(ведро 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (704, N'Глазурь пастообразная жир.ШОКОСМАРТ белая ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''016.00', NULL, N'(ведро 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (705, N'Шоколадная начинка ВАНДЕРШОК белая ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''736.00', NULL, N'(ведро 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (706, N'Начинка КОБЕРШОК БЬЯНКО ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''736.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (707, N'Глазурь пастообразная ГАБРИЭЛА БЕЛАЯ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'4''104.00', NULL, N'(ведро 13 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (708, N'Глазурь пастообразная шок.ГАБРИЭЛА ТЕМНАЯ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'3''456.00', NULL, N'(ведро 13 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (709, N'Паста шок.орех.ФАРЧИТОЗА ТОП ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''980.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (710, N'Паста шок.орех.ФАРЧИТОЗА ТОП ', N'кг', NULL, NULL, N'Фруктовое пюре', N'3''852.00', NULL, N'(ведро 12 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (711, N'Паста шок.орех.ФАРЧИТОЗА ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''598.40', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (712, N'Паста шок.орех.НОЧЧОЛИТА СУПРЕМ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''160.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (713, N'Паста шок.орех.НОЧЧОЛИТА СУПРЕМ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'3''620.00', NULL, N'(ведро 12 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (714, N'Паста шок.орех.ФАРЧИТОЗА ', N'кг', NULL, NULL, N'Фруктовое пюре', N'3''240.00', NULL, N'(ведро 12 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (715, N'Паста шок.орех.ФАРЧИТОЗА ', N'кг', NULL, NULL, N'Фруктовое пюре', N'5''040.00', NULL, N'(ведро 20 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (716, N'Паста шок.орех.НОЧЧОЛИТА ТОП ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''980.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (717, N'Паста шок.орех.НОЧЧОЛИТА ТОП ', N'кг', NULL, NULL, N'Фруктовое пюре', N'3''852.00', NULL, N'(ведро 12 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (718, N'Паста ореховая НОЧЧИОБЬЯНКА КРУАССАН ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''412.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (719, N'Паста-наполнитель НОВЕЛЛА АВОРИО ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''700.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (720, N'Паста-наполнитель РОКСИКРЕМ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'3''150.00', NULL, N'(ведро 12 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (721, N'Паста шок.орех.ДЖАНДУЯ КРУАССАН термостойкая ', N'кг', NULL, NULL, N'Фруктовое пюре', N'3''240.00', NULL, N'(ведро 12 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (722, N'Паста ореховая ФИСТАШКА КРЕМ 10 ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''700.00', NULL, N'(ведро 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (723, N'Паста ореховая ФИСТАШКА КРЕМ ТОП 15 ', N'кг', NULL, NULL, N'Фруктовое пюре', N'3''204.00', NULL, N'(ведро 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (724, N'Паста ореховая ФИСТАШКА КРУАССАН ', N'кг', NULL, NULL, N'Фруктовое пюре', N'3''456.00', NULL, N'(ведро 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (725, N'Глазурь пастообразн.конд.ШОКОКРЕМ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'396', NULL, N'(ведро 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (726, N'Глазурь пастообразн.конд.ШОКОКРЕМ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'6''120.00', NULL, N'(ведро 25 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (727, N'Глазурь пастообр.шок.МОРЕТТА БИТТЕР термост. ', N'кг', NULL, NULL, N'Фруктовое пюре', N'540', NULL, N'(ведро 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (728, N'Паста шоколадная МОРЕТТА ЭКСТРИМ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'540', NULL, N'(ведро 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (729, N'Паста шоколадная МОРЕТТА ЭКСТРИМ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''160.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (730, N'Паста шоколадная КРАНФИЛ КАРАМЕЛЬ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''268.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (731, N'Паста шоколадная КРАНФИЛ ФИСТАШКА ', N'кг', NULL, NULL, N'Фруктовое пюре', N'3''204.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (732, N'Паста шоколадная КРАНФИЛ БЕЛЫЙ ШОКОЛАД ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''592.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (733, N'Паста шоколадная КРАНФИЛ ТЕМНЫЙ ШОКОЛАД ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''448.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (734, N'Паста шоколадная ДЕЛИКРИСП соленая карамель ', N'кг', NULL, NULL, N'Фруктовое пюре', N'3''492.00', NULL, N'(ведро 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (735, N'Паста шоколадная ДЕЛИКРИСП кокос ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''844.00', NULL, N'(ведро 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (736, N'Паста шоколадная ДЕЛИКРИСП красные ягоды ', N'кг', NULL, NULL, N'Фруктовое пюре', N'4''968.00', NULL, N'(ведро 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (737, N'Паста ПРАЛИНЕ ГРЕЦКИЙ ОРЕХ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''270.00', NULL, N'(ведро 0.9 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (738, N'Паста ПРАЛИНЕ ДЖАНДУЯ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'840', NULL, N'(ведро 0.9 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (739, N'Паста ПРАЛИНЕ АРАХИС-ШОКОЛАД ', N'кг', NULL, NULL, N'Фруктовое пюре', N'680', NULL, N'(ведро 0.9 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (740, N'Паста сахарно-ореховая ПРАЛИНЕ (НУГА) светлая ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''592.00', NULL, N'(пакет 2.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (741, N'Паста ПРАЛИНЕ МИНДАЛЬ-МЯТА ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''485.00', NULL, N'(ведро 0.9 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (742, N'Начинка ФРУТТИДОР ЯБЛОКО ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''440.00', NULL, N'(ведро 3.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (743, N'Начинка ФРУТТИДОР АБРИКОС ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''800.00', NULL, N'(ведро 3.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (744, N'Начинка ФРУТТИДОР ЧЕРНИКА ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''872.00', NULL, N'(ведро 3.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (745, N'Начинка ФРУТТИДОР АПЕЛЬСИН ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''728.00', NULL, N'(ведро 3.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (746, N'Начинка ФРУТТИДОР ПЕРСИК ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''368.00', NULL, N'(ведро 3.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (747, N'Начинка ФРУТТИДОР АМАРЕНА ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''893.60', NULL, N'(ведро 5.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (748, N'Начинка ФРУТТИДОР ЛЕСНЫЕ ЯГОДЫ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''764.00', NULL, N'(ведро 3.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (749, N'Начинка ФРУТТИДОР ГРУША ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''317.60', NULL, N'(ведро 3.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (750, N'Начинка ФРУТТИДОР МАНГО ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''548.00', NULL, N'(ведро 3.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (751, N'Начинка ФРУТТИДОР ТРОПИЧЕСКИЕ ФРУКТЫ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''620.00', NULL, N'(ведро 3.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (752, N'Начинка ФРУТТИДОР КЛУБНИКА ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''800.00', NULL, N'(ведро 3.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (753, N'Начинка ФРУТТИДОР МАЛИНА ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''908.00', NULL, N'(ведро 3.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (754, N'Начинка ФРУТТИДОР КРАСНАЯ ЧЕРЕШНЯ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''728.00', NULL, N'(ведро 3.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (755, N'Начинка КРЕМ ЛИМОН ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''692.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (756, N'Начинка КРЕМ АПЕЛЬСИН ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''692.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (757, N'Начинка КРЕМ ЛЕСНЫЕ ЯГОДЫ И ЙОГУРТ ', N'кг', NULL, NULL, N'Фруктовое пюре', N'1''980.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (758, N'Начинка фруктовая ЯБЛОКО ПИНК кубики 12х12 мм ', N'кг', NULL, NULL, N'Фруктовое пюре', N'576', NULL, N'(банка 4.6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (759, N'Начинка фруктовая ЯБЛОКО ПИНК дольки ', N'кг', NULL, NULL, N'Фруктовое пюре', N'612', NULL, N'(банка 4.6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (760, N'Начинка фруктовая ЯБЛОКО дольки ', N'кг', NULL, NULL, N'Фруктовое пюре', N'468', NULL, N'(банка 4.6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (761, N'Начинка фрукт.КОНФРУТТИ черника ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''736.00', NULL, N'(ведро 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (762, N'Начинка фрукт.КОНФРУТТИ абрикос ', N'кг', NULL, NULL, N'Фруктовое пюре', N'2''232.00', NULL, N'(ведро 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (763, N'Паста-пюре фрукт.КОНФРУТТИ НАТУР клубника ', N'кг', NULL, NULL, N'Фруктовое пюре', N'720', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (764, N'Паста-пюре фрукт.КОНФРУТТИ НАТУР малина ', N'кг', NULL, NULL, N'Фруктовое пюре', N'936', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (765, N'Паста-пюре фрукт.КОНФРУТТИ НАТУР садов.ягоды ', N'кг', NULL, NULL, N'Фруктовое пюре', N'828', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (766, N'Паста-пюре фрукт.КОНФРУТТИ НАТУР манго ', N'кг', NULL, NULL, N'Фруктовое пюре', N'756', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (767, N'Паста-пюре фрукт.КОНФРУТТИ НАТУР маракуйя ', N'кг', NULL, NULL, N'Фруктовое пюре', N'990', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (768, N'Паста-пюре фрукт.КОНФРУТТИ НАТУР банан ', N'кг', NULL, NULL, N'Фруктовое пюре', N'684', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (769, N'Паста-пюре фрукт.КОНФРУТТИ НАТУР ананас ', N'кг', NULL, NULL, N'Фруктовое пюре', N'864', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (770, N'Паста-пюре фрукт.КОНФРУТТИ НАТУР абрикос ', N'кг', NULL, NULL, N'Фруктовое пюре', N'698,4', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (771, N'Паста-пюре фрукт.КОНФРУТТИ НАТУР вишня Гриот ', N'кг', NULL, NULL, N'Фруктовое пюре', N'756', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (772, N'Паста-пюре фрукт.КОНФРУТТИ НАТУР мандарин ', N'кг', NULL, NULL, N'Фруктовое пюре', N'756', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (773, N'Паста-пюре фрукт.КОНФРУТТИ НАТУР груша Вильям ', N'кг', NULL, NULL, N'Фруктовое пюре', N'684', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (774, N'Паста кондитерская ДЕКОР СЕРЕБРО ', N'кг', NULL, NULL, N'Десертная паста', N'1''296.00', NULL, N'(банка 1.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (775, N'Паста кондитерская ДЕКОР ЗОЛОТО ', N'кг', NULL, NULL, N'Десертная паста', N'1''368.00', NULL, N'(банка 1.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (776, N'Паста кондитерская ДЕКОР БРОНЗА ', N'кг', NULL, NULL, N'Десертная паста', N'1''152.00', NULL, N'(банка 1.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (777, N'Паста РОМ КРЕОЛЬСКИЙ АРОМА ', N'кг', NULL, NULL, N'Десертная паста', N'1''080.00', NULL, N'(флакон 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (778, N'Паста ГОРЬКИЙ МИНДАЛЬ АРОМА ', N'кг', NULL, NULL, N'Десертная паста', N'1''008.00', NULL, N'(флакон 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (779, N'Паста ВАНИЛЬ АРОМА ', N'кг', NULL, NULL, N'Десертная паста', N'936', NULL, N'(флакон 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (780, N'Паста КОФЕ АРОМА ', N'кг', NULL, NULL, N'Десертная паста', N'1''044.00', NULL, N'(флакон 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (781, N'Паста ЛИМОН АРОМА ', N'кг', NULL, NULL, N'Десертная паста', N'1''008.00', NULL, N'(флакон 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (782, N'Паста АПЕЛЬСИН АРОМА ', N'кг', NULL, NULL, N'Десертная паста', N'871,2', NULL, N'(флакон 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (783, N'Паста КЛУБНИКА АРОМА ', N'кг', NULL, NULL, N'Десертная паста', N'900', NULL, N'(флакон 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (784, N'Паста ФИСТАШКА АРОМА ', N'кг', NULL, NULL, N'Десертная паста', N'864', NULL, N'(флакон 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (785, N'Комплексная пищ.добавка премикс ЙОГУРТ-100 ', N'кг', NULL, NULL, N'Десертная паста', N'1''152.00', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (786, N'Комплексная пищевая добавка премикс КОКОС-100 ', N'кг', NULL, NULL, N'Десертная паста', N'1''512.00', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (787, N'Паста десертная КОКОС ', N'кг', NULL, NULL, N'Десертная паста', N'2''556.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (788, N'Паста десертная ЛЕСНОЙ ОРЕХ ', N'кг', NULL, NULL, N'Десертная паста', N'7''200.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (789, N'Паста десертная МАСКАРПОНЕ ', N'кг', NULL, NULL, N'Десертная паста', N'1''440.00', NULL, N'(банка 1.2 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (790, N'Паста десертная ФИСТАШКА ', N'кг', NULL, NULL, N'Десертная паста', N'5''760.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (791, N'Паста десертная ФИСТАШКА ИТАЛИЯ НК ', N'кг', NULL, NULL, N'Десертная паста', N'5''904.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (792, N'Паста десертная ГРЕЦКИЙ ОРЕХ ', N'кг', NULL, NULL, N'Десертная паста', N'6''192.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (793, N'Паста десертная ПЕЧЕНЬЕ ', N'кг', NULL, NULL, N'Десертная паста', N'3''384.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (794, N'Паста десертная СЛИВОЧНАЯ КАРАМЕЛЬ ', N'кг', NULL, NULL, N'Десертная паста', N'2''736.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (795, N'Паста десертная ВАНИЛЬ КЛАССИК ', N'кг', NULL, NULL, N'Десертная паста', N'5''076.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (796, N'Паста десертная ЗАБАЙОНЕ ', N'кг', NULL, NULL, N'Десертная паста', N'1''332.00', NULL, N'(банка 1.2 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (797, N'Паста десертная МЯТА ', N'кг', NULL, NULL, N'Десертная паста', N'3''096.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (798, N'Паста десертная ШОКОЛАД ', N'кг', NULL, NULL, N'Десертная паста', N'2''520.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (799, N'Паста десертная КАРАМЕЛЬ ', N'кг', NULL, NULL, N'Десертная паста', N'2''520.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (800, N'Паста десертная ТИРАМИСУ ', N'кг', NULL, NULL, N'Десертная паста', N'1''512.00', NULL, N'(банка 1.2 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (801, N'Паста десертная ЖЕВАТЕЛЬНАЯ РЕЗИНКА ', N'кг', NULL, NULL, N'Десертная паста', N'2''664.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (802, N'Паста десертная ЛЕСНАЯ ЯГОДА ', N'кг', NULL, NULL, N'Десертная паста', N'3''528.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (803, N'Паста десертная МАЛИНА ', N'кг', NULL, NULL, N'Десертная паста', N'4''320.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (804, N'Паста десертная ПЕРСИК с кусочками ', N'кг', NULL, NULL, N'Десертная паста', N'2''880.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (805, N'Паста десертная МАРАКУЙЯ ', N'кг', NULL, NULL, N'Десертная паста', N'3''024.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (806, N'Паста десертная КЛУБНИКА ', N'кг', NULL, NULL, N'Десертная паста', N'1''512.00', NULL, N'(ведро 1.4 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (807, N'Паста десертная ДЫНЯ с кусочками ', N'кг', NULL, NULL, N'Десертная паста', N'2''700.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (808, N'Паста десертная ЗЕЛЕНОЕ ЯБЛОКО с кусочками ', N'кг', NULL, NULL, N'Десертная паста', N'3''168.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (809, N'Паста десертная АНАНАС с кусочками ', N'кг', NULL, NULL, N'Десертная паста', N'2''808.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (810, N'Паста десертная БАНАН ', N'кг', NULL, NULL, N'Десертная паста', N'2''484.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (811, N'Паста десертная МАНГО с кусочками ', N'кг', NULL, NULL, N'Десертная паста', N'3''096.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (812, N'Паста десертная ЛИМОННАЯ ЦЕДРА ', N'кг', NULL, NULL, N'Десертная паста', N'864', NULL, N'(банка 1.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (813, N'Паста десертная АПЕЛЬСИНОВАЯ ЦЕДРА ', N'кг', NULL, NULL, N'Десертная паста', N'936', NULL, N'(банка 1.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (814, N'Наполнитель МОЛОЧНЫЙ ШОКОЛАД и злаки ', N'кг', NULL, NULL, N'топпинг', N'2''426.40', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (815, N'Наполнитель ГРАНАТ ', N'кг', NULL, NULL, N'топпинг', N'2''167.20', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (816, N'Топпинг ВИШНЯ ', N'кг', NULL, NULL, N'топпинг', N'331,2', NULL, N'(бутылка 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (817, N'Топпинг АПЕЛЬСИН ', N'кг', NULL, NULL, N'топпинг', N'331,2', NULL, N'(бутылка 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (818, N'Топпинг МАРШМЕЛЛОУ ', N'кг', NULL, NULL, N'топпинг', N'331,2', NULL, N'(бутылка 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (819, N'Топпинг ПРЯНОЕ ПЕЧЕНЬЕ ', N'кг', NULL, NULL, N'топпинг', N'421,2', NULL, N'(бутылка 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (820, N'Топпинг МАЛИНА ', N'кг', NULL, NULL, N'топпинг', N'331,2', NULL, N'(бутылка 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (821, N'Топпинг ШОКОЛАД ', N'кг', NULL, NULL, N'топпинг', N'331,2', NULL, N'(бутылка 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (822, N'Топпинг КЛУБНИКА ', N'кг', NULL, NULL, N'топпинг', N'331,2', NULL, N'(бутылка 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (823, N'Топпинг КАРАМЕЛЬ ', N'кг', NULL, NULL, N'топпинг', N'331,2', NULL, N'(флакон 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (824, N'Топпинг МАНГО ', N'кг', NULL, NULL, N'топпинг', N'331,2', NULL, N'(флакон 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (825, N'Топпинг САДОВЫЕ ЯГОДЫ ', N'кг', NULL, NULL, N'топпинг', N'331,2', NULL, N'(флакон 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (826, N'Топпинг КИВИ ', N'кг', NULL, NULL, N'топпинг', N'324', NULL, N'(флакон 1.2 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (827, N'Наполнитель шоколадный МАКАО ', N'кг', NULL, NULL, N'топпинг', N'2''304.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (828, N'Наполнитель ВИШНЯ ', N'кг', NULL, NULL, N'топпинг', N'2''304.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (829, N'Наполнитель ШОКОЛАД С ПЕЧЕНЬЕМ ', N'кг', NULL, NULL, N'топпинг', N'2''376.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (830, N'Паста десертная АБРИКОС ', N'кг', NULL, NULL, N'Десертная паста', N'3''888.00', NULL, N'(банка 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (831, N'Паста десертная ЗЕМЛЯНИКА ', N'кг', NULL, NULL, N'Десертная паста', N'5''040.00', NULL, N'(банка 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (832, N'Паста десертная ВИШНЯ ', N'кг', NULL, NULL, N'Десертная паста', N'3''960.00', NULL, N'(банка 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (833, N'Паста десертная ГРУША ', N'кг', NULL, NULL, N'Десертная паста', N'4''163.76', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (834, N'Паста десертная ПРЯНОЕ ПЕЧЕНЬЕ ', N'кг', NULL, NULL, N'Десертная паста', N'7''200.00', NULL, N'(банка 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (835, N'Паста десертная БИТТЕР ЛИМОН ', N'кг', NULL, NULL, N'Десертная паста', N'4''212.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (836, N'Паста десертная МЯТА ', N'кг', NULL, NULL, N'Десертная паста', N'4''060.80', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (837, N'Паста десертная МАНДАРИН ', N'кг', NULL, NULL, N'Десертная паста', N'4''464.00', NULL, N'(банка 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (838, N'Паста десертная ВАНИЛЬ ', N'кг', NULL, NULL, N'Десертная паста', N'5''040.00', NULL, N'(ведро 4.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (839, N'Паста десертная ВАНИЛЬ БУРБОН ', N'кг', NULL, NULL, N'Десертная паста', N'9''000.00', NULL, N'(ведро 4.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (840, N'Паста десертная КАРАМЕЛЬ ', N'кг', NULL, NULL, N'Десертная паста', N'4''896.00', NULL, N'(банка 4.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (841, N'Паста десертная КАПУЧИНО ', N'кг', NULL, NULL, N'Десертная паста', N'4''716.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (842, N'Паста десертная КЛУБНИКА ', N'кг', NULL, NULL, N'Десертная паста', N'4''032.00', NULL, N'(банка 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (843, N'Паста десертная МАНГО ', N'кг', NULL, NULL, N'Десертная паста', N'3''996.00', NULL, N'(банка 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (844, N'Паста десертная АНАНАС ', N'кг', NULL, NULL, N'Десертная паста', N'3''744.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (845, N'Паста десертная ДЫНЯ ', N'кг', NULL, NULL, N'Десертная паста', N'3''758.40', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (846, N'Паста десертная КИВИ ', N'кг', NULL, NULL, N'Десертная паста', N'4''032.00', NULL, N'(банка 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (847, N'Паста десертная ЧЕРНАЯ СМОРОДИНА ', N'кг', NULL, NULL, N'Десертная паста', N'5''241.60', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (848, N'Паста десертная БАНАН ', N'кг', NULL, NULL, N'Десертная паста', N'3''564.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (849, N'Паста десертная АНАНАС ', N'кг', NULL, NULL, N'Десертная паста', N'3''715.20', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (850, N'Паста десертная МАЛИНА ', N'кг', NULL, NULL, N'Десертная паста', N'3''715.20', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (851, N'Паста десертная ЛЕСНЫЕ ЯГОДЫ ', N'кг', NULL, NULL, N'Десертная паста', N'4''140.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (852, N'Паста десертная ПЕРСИК ', N'кг', NULL, NULL, N'Десертная паста', N'3''715.20', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (853, N'Паста десертная МАРАКУЙЯ ', N'кг', NULL, NULL, N'Десертная паста', N'4''680.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (854, N'Паста десертная РОЗА ', N'кг', NULL, NULL, N'Десертная паста', N'3''628.80', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (855, N'Паста десертная АПЕЛЬСИН ', N'кг', NULL, NULL, N'Десертная паста', N'3''852.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (856, N'Паста десертная МАЛАГА ', N'кг', NULL, NULL, N'Десертная паста', N'6''264.00', NULL, N'(банка 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (857, N'Паста десертная ПИНА КОЛАДА ', N'кг', NULL, NULL, N'Десертная паста', N'5''904.00', NULL, N'(банка 4 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (858, N'Паста десертная ВИСКИКРЕМ ', N'кг', NULL, NULL, N'Десертная паста', N'9''360.00', NULL, N'(банка 4.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (859, N'Паста десертная БИСКОТТО ', N'кг', NULL, NULL, N'Десертная паста', N'6''840.00', NULL, N'(ведро 4.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (860, N'Паста десертная АМАЛЬФИ ', N'кг', NULL, NULL, N'Десертная паста', N'9''216.00', NULL, N'(банка 3.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (861, N'Паста десертная НЬЮ ЙО ', N'кг', NULL, NULL, N'Десертная паста', N'9''000.00', NULL, N'(ведро 4.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (862, N'Паста десертная ТИРАМИСУ ', N'кг', NULL, NULL, N'Десертная паста', N'5''760.00', NULL, N'(ведро 4 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (863, N'Паста десертная МЕКРАФ ', N'кг', NULL, NULL, N'Десертная паста', N'9''360.00', NULL, N'(банка 4 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (864, N'Паста десертная МИСТЕР НИКО ', N'кг', NULL, NULL, N'Десертная паста', N'6''480.00', NULL, N'(ведро 4 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (865, N'Паста десертная НОЧЧИОЛА-ЛА-ЛА ', N'кг', NULL, NULL, N'Десертная паста', N'19''080.00', NULL, N'(банка 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (866, N'Паста десертная ФИСТАШКА СИЦИЛИЙСКАЯ ', N'кг', NULL, NULL, N'Десертная паста', N'31''104.00', NULL, N'(банка 4 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (867, N'Паста десертная ФИСТАШКА ЧИСТАЯ ', N'кг', NULL, NULL, N'Десертная паста', N'23''832.00', NULL, N'(ведро 4 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (868, N'Паста десертная ЛАЗУРЬ ', N'кг', NULL, NULL, N'Десертная паста', N'6''552.00', NULL, N'(банка 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (869, N'Паста десертная БУБЛЬГУМ ', N'кг', NULL, NULL, N'Десертная паста', N'7''704.00', NULL, N'(банка 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (870, N'Паста десертная ПЕРСИК ', N'кг', NULL, NULL, N'Десертная паста', N'3''096.00', NULL, N'(ведро 2.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (871, N'Паста десертная ЗЕЛЕНЫЙ ЧАЙ ', N'кг', NULL, NULL, N'Десертная паста', N'4''334.40', NULL, N'(банка 2.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (872, N'Паста десертная ГРУША ', N'кг', NULL, NULL, N'Десертная паста', N'3''528.00', NULL, N'(ведро 2.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (873, N'Паста десертная МАНДАРИН ', N'кг', NULL, NULL, N'Десертная паста', N'3''600.00', NULL, N'(банка 2.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (874, N'Паста десертная ГУСТОКРЕМ ЛАЙМЕТТА ', N'кг', NULL, NULL, N'Десертная паста', N'2''880.00', NULL, N'(банка 1.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (875, N'Паста десертная ГУСТОКРЕМ АПЕЛЬСИН ', N'кг', NULL, NULL, N'Десертная паста', N'2''880.00', NULL, N'(банка 1.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (876, N'Паста десертная ЧЕРРИ МАНИЯ ', N'кг', NULL, NULL, N'Десертная паста', N'7''632.00', NULL, N'(банка 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (877, N'Паста десертная РОЗОВЫЙ ГРЕЙПФРУТ ', N'кг', NULL, NULL, N'Десертная паста', N'3''888.00', NULL, N'(банка 2.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (878, N'Паста десертная ТРОПИК ', N'кг', NULL, NULL, N'Десертная паста', N'3''672.00', NULL, N'(банка 2.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (879, N'Паста десертная ЗЕЛЕНОЕ ЯБЛОКО ', N'кг', NULL, NULL, N'Десертная паста', N'3''801.60', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (880, N'Черешня красная МИНИ 14/16 мм.НАППИ ', N'кг', NULL, NULL, N'Цукаты', N'2''628.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (881, N'Черешня засах.красная 20/22 мм.с веточкой ', N'кг', NULL, NULL, N'Цукаты', N'3''456.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (882, N'Черешня засах.красная 20/22 мм.с веточкой ', N'кг', NULL, NULL, N'Цукаты', N'720', NULL, N'(короб 0.9 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (883, N'Черешня засах.красная 18/20 мм ИТАЛКАНДИТИ ', N'кг', NULL, NULL, N'Цукаты', N'1''944.00', NULL, N'(короб 4 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (884, N'Черешня засах.красная 20/22 мм.НАППИ ', N'кг', NULL, NULL, N'Цукаты', N'2''088.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (885, N'Черешня засах.красная 20/22 мм.АМБРОЗИО ', N'кг', NULL, NULL, N'Цукаты', N'2''160.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (886, N'Черешня засах.черная 20/22 мм.АМБРОЗИО ', N'кг', NULL, NULL, N'Цукаты', N'2''376.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (887, N'Черешня засах.зеленая 20/22 мм.АМБРОЗИО ', N'кг', NULL, NULL, N'Цукаты', N'2''304.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (888, N'Черешня засах.желтая 20/22 мм.АМБРОЗИО ', N'кг', NULL, NULL, N'Цукаты', N'2''232.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (889, N'Апельсиновые засах. дольки ИТАЛКАНДИТИ ', N'кг', NULL, NULL, N'Цукаты', N'4''896.00', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (890, N'Апельсин.корочка засах.кубик.6х6 мм.АМБРОЗИО ', N'кг', NULL, NULL, N'Цукаты', N'1''008.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (891, N'Апельсиновая корочка засах.куб.6х6 мм.НАППИ ', N'кг', NULL, NULL, N'Цукаты', N'2''016.00', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (892, N'Апельсиновая корочка засах.куб.4х4 мм.НАППИ ', N'кг', NULL, NULL, N'Цукаты', N'1''044.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (893, N'Апельсин.корочка засах.кубик.4х4 мм.АМБРОЗИО ', N'кг', NULL, NULL, N'Цукаты', N'1''044.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (894, N'Лимонная.корочка засах.кубик.6х6 мм.АМБРОЗИО ', N'кг', NULL, NULL, N'Цукаты', N'1''224.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (895, N'Лимонная корочка засах.кубик 6х6 мм.НАППИ ', N'кг', NULL, NULL, N'Цукаты', N'1''260.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (896, N'Лимонная корочка засах.кубик 4х4 мм.НАППИ ', N'кг', NULL, NULL, N'Цукаты', N'1''260.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (897, N'Лимонная.корочка засах.кубик.4х4 мм.АМБРОЗИО ', N'кг', NULL, NULL, N'Цукаты', N'1''260.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (898, N'Апельсин.корочка засах.полоска.6х60 мм. ', N'кг', NULL, NULL, N'Цукаты', N'2''880.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (899, N'Лимонная корочка засах.полоска.6х60 мм. ', N'кг', NULL, NULL, N'Цукаты', N'3''528.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (900, N'Фрукты засах.ассорти кубик.6х6 мм ', N'кг', NULL, NULL, N'Цукаты', N'1''224.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (901, N'Фрукты засах.разноцвет.кубик.6х6 мм.АМБРОЗИО ', N'кг', NULL, NULL, N'Цукаты', N'1''224.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (902, N'Фрукты засах.разноцвет.кубик.4х4 мм.АМБРОЗИО ', N'кг', NULL, NULL, N'Цукаты', N'1''375.20', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (903, N'Мандарин засах.целый АМБРОЗИО ', N'кг', NULL, NULL, N'Цукаты', N'1''800.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (904, N'Груша засах.целая красная АМБРОЗИО ', N'кг', NULL, NULL, N'Цукаты', N'2''376.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (905, N'Груша засах.целая зеленая АМБРОЗИО ', N'кг', NULL, NULL, N'Цукаты', N'2''376.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (906, N'Фрукты засах.целые ассорти АМБРОЗИО ', N'кг', NULL, NULL, N'Цукаты', N'2''376.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (907, N'Черешня АМАРЕНА в сиропе с веточкой 20/22 мм. ', N'кг', NULL, NULL, N'Цукаты', N'2''304.00', NULL, N'(банка 3.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (908, N'Черешня АМАРЕНА в сиропе 18/20 мм. ', N'кг', NULL, NULL, N'Цукаты', N'518,4', NULL, N'(банка 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (909, N'Черешня АМАРЕНА в сиропе 20/22 мм. ', N'кг', NULL, NULL, N'Цукаты', N'2''376.00', NULL, N'(банка 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (910, N'Черешня засах.АМАРЕНА ЭКСТРА14/16 мм ', N'кг', NULL, NULL, N'Цукаты', N'828', NULL, N'(короб 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (911, N'Лимонная корочка засах.кубик.9х9 мм.ЭКСТРА ', N'кг', NULL, NULL, N'Цукаты', N'1''584.00', NULL, N'(короб 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (912, N'Апельсин.корочка засах.кубик.9х9 мм.ЭКСТРА ', N'кг', NULL, NULL, N'Цукаты', N'4''536.00', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (913, N'Черешня с вет.коктейльная красн.Мараскино ', N'кг', NULL, NULL, N'Цукаты', N'2''016.00', NULL, N'(банка 4.8 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (914, N'Черешня КОКТЕЙЛЬ с веточкой красн.20/22 мм. ', N'кг', NULL, NULL, N'Цукаты', N'2''052.00', NULL, N'(банка 4.8 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (915, N'Черешня КОКТЕЙЛЬ с веточкой красн.18/20 мм. ', N'кг', NULL, NULL, N'Цукаты', N'900', NULL, N'(банка 1.95 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (916, N'Черешня с вет.коктейльная красн.Мараскино ', N'кг', NULL, NULL, N'Цукаты', N'1''224.00', NULL, N'(банка 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (917, N'Черешня КОКТЕЙЛЬ с веточкой красн. ', N'кг', NULL, NULL, N'Цукаты', N'1''224.00', NULL, N'(банка 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (918, N'Черешня КОКТЕЙЛЬ с веточкой красн. ', N'кг', NULL, NULL, N'Цукаты', N'2''016.00', NULL, N'(банка 4.8 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (919, N'Черешня КОКТЕЙЛЬ с веточкой желтая ', N'кг', NULL, NULL, N'Цукаты', N'1''080.00', NULL, N'(банка 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (920, N'Черешня КОКТЕЙЛЬ с веточкой зеленая ', N'кг', NULL, NULL, N'Цукаты', N'1''080.00', NULL, N'(банка 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (921, N'Черешня КОКТЕЙЛЬ с веточкой красн. НК ', N'кг', NULL, NULL, N'Цукаты', N'1''224.00', NULL, N'(банка 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (922, N'Черешня КОКТЕЙЛЬ с веточкой красн. ', N'кг', NULL, NULL, N'Цукаты', N'432', NULL, N'(банка 0.95 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (923, N'Черешня КОКТЕЙЛЬ с веточкой красн. ', N'кг', NULL, NULL, N'Цукаты', N'432', NULL, N'(банка 0.75 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (924, N'Черешня КОКТЕЙЛЬ с веточкой зелен. ', N'кг', NULL, NULL, N'Цукаты', N'450', NULL, N'(банка 0.95 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (925, N'Черешня КОКТЕЙЛЬ с веточкой желтая ', N'кг', NULL, NULL, N'Цукаты', N'432', NULL, N'(банка 0.95 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (926, N'Глазурь БРИЛЛО КЛУБНИКА ', N'кг', NULL, NULL, N'Глазурь', N'1''949.04', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (927, N'Глазурь БРИЛЛО КАРАМЕЛЬ ', N'кг', NULL, NULL, N'Глазурь', N'1''656.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (928, N'Глазурь БРИЛЛО ШОКОЛАД ', N'кг', NULL, NULL, N'Глазурь', N'1''728.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (929, N'Глазурь БРИЛЛО БЕЛЫЙ ШОКОЛАД ', N'кг', NULL, NULL, N'Глазурь', N'2''016.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (930, N'Глазурь желейная БРИЛГЕЛЬ ', N'кг', NULL, NULL, N'Глазурь', N'1''620.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (931, N'Глазурь желейная БРИЛГЕЛЬ ', N'кг', NULL, NULL, N'Глазурь', N'396', NULL, N'(ведро 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (932, N'Глазурь желейная ФРИО ', N'кг', NULL, NULL, N'Глазурь', N'1''512.00', NULL, N'(ведро 7 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (933, N'Глазурь желейная КОЛДГЕЛЬ NEW ', N'кг', NULL, NULL, N'Глазурь', N'1''188.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (934, N'Глазурь желейная ДЕКОРГЕЛЬ нейтральная ', N'кг', NULL, NULL, N'Глазурь', N'432', NULL, N'(ведро 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (935, N'Глазурь желейная абрикосовая ', N'кг', NULL, NULL, N'Глазурь', N'4''248.00', NULL, N'(ведро 25 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (936, N'Глазурь желейная НОВОГЕЛЬ нейтральная ', N'кг', NULL, NULL, N'Глазурь', N'360', NULL, N'(ведро 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (937, N'Глазурь желейная НОВОГЕЛЬ нейтральная ', N'кг', NULL, NULL, N'Глазурь', N'1''332.00', NULL, N'(ведро 6 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (938, N'Глазурь желейная НОВОГЕЛЬ нейтральная ', N'кг', NULL, NULL, N'Глазурь', N'2''484.00', NULL, N'(ведро 12 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (939, N'Глазурь желейная РОЯЛГЕЛЬ ', N'кг', NULL, NULL, N'Глазурь', N'3''204.00', NULL, N'(ведро 14 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (940, N'Глазурь гляссажная КОВЕРГЛАС ШОКОЛАД ', N'кг', NULL, NULL, N'Глазурь', N'720', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (941, N'Глазурь гляссажная КОВЕРГЛАС БЕЛЫЙ ШОКОЛАД ', N'кг', NULL, NULL, N'Глазурь', N'770,4', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (942, N'Глазурь гляссажная КОВЕРГЛАС КЛУБНИКА ', N'кг', NULL, NULL, N'Глазурь', N'770,4', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (943, N'Глазурь гляссажная КОВЕРГЛАС ЛАЙМ ', N'кг', NULL, NULL, N'Глазурь', N'792', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (944, N'Глазурь гляссажная КОВЕРГЛАС КАРАМЕЛЬ ', N'кг', NULL, NULL, N'Глазурь', N'770,4', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (945, N'Глазурь гляссажная КОВЕРГЛАС КАРАМЕЛЬ МУ ', N'кг', NULL, NULL, N'Глазурь', N'828', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (946, N'Глазурь мягкая МИРУАР АПЕЛЬСИН ', N'кг', NULL, NULL, N'Глазурь', N'1''512.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (947, N'Глазурь мягкая МИРУАР ВАНИЛЬ ', N'кг', NULL, NULL, N'Глазурь', N'1''584.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (948, N'Глазурь мягкая МИРУАР КЛУБНИКА ', N'кг', NULL, NULL, N'Глазурь', N'1''584.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (949, N'Глазурь мягкая МИРУАР ФИСТАШКА ', N'кг', NULL, NULL, N'Глазурь', N'1''512.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (950, N'Глазурь желейная МИРУАР ШОКОЛАД ', N'кг', NULL, NULL, N'Глазурь', N'1''476.00', NULL, N'(ведро 3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (951, N'Шоколад темный 36/38 ', N'кг', NULL, NULL, N'шоколад', N'4''802.40', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (952, N'Шоколад молочный 30/32 ', N'кг', NULL, NULL, N'шоколад', N'4''464.00', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (953, N'Шоколад белый 32/34 ', N'кг', NULL, NULL, N'шоколад', N'4''939.20', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (954, N'Шоколад темный 36/38 ', N'кг', NULL, NULL, N'шоколад', N'1''375.20', NULL, N'(пакет 2.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (955, N'Шоколад молочный 30/32 ', N'кг', NULL, NULL, N'шоколад', N'1''296.00', NULL, N'(пакет 2.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (956, N'Шоколад белый 32/34 ', N'кг', NULL, NULL, N'шоколад', N'1''512.00', NULL, N'(пакет 2.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (957, N'Шоколад темный ШОКО НЕРО 72% ', N'кг', NULL, NULL, N'шоколад', N'5''328.00', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (958, N'Шоколад темный ШОКО НЕРО 52% ', N'кг', NULL, NULL, N'шоколад', N'4''248.00', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (959, N'Шоколад молочный ШОКО ЛАТТЕ 30% ', N'кг', NULL, NULL, N'шоколад', N'4''896.00', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (960, N'Шоколад белый ШОКО БЬЯНКО 34/36 ', N'кг', NULL, NULL, N'шоколад', N'5''256.00', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (961, N'Посыпка шоколадная КРОШКА ТЕМНАЯ ', N'кг', NULL, NULL, N'шоколад', N'432', NULL, N'(мешок 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (962, N'Посыпка шоколадная КРОШКА ТЕМНАЯ ', N'кг', NULL, NULL, N'шоколад', N'2''016.00', NULL, N'(мешок 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (963, N'Посыпка шоколадная КРОШКА МОЛОЧНАЯ ', N'кг', NULL, NULL, N'шоколад', N'432', NULL, N'(мешок 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (964, N'Посыпка шоколадная КРОШКА БЕЛАЯ ', N'кг', NULL, NULL, N'шоколад', N'540', NULL, N'(мешок 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (965, N'Посыпка шоколадная ВЕРМИШЕЛЬ БЕЛАЯ ', N'кг', NULL, NULL, N'шоколад', N'2''520.00', NULL, N'(мешок 5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (966, N'Посыпка шоколадная ВЕРМИШЕЛЬ ТЕМНАЯ ', N'кг', NULL, NULL, N'шоколад', N'432', NULL, N'(мешок 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (967, N'Посыпка шоколадная ВЕРМИШЕЛЬ МОЛОЧНАЯ ', N'кг', NULL, NULL, N'шоколад', N'432', NULL, N'(мешок 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (968, N'Посыпка шоколадная ВЕРМИШЕЛЬ БЕЛАЯ ', N'кг', NULL, NULL, N'шоколад', N'504', NULL, N'(мешок 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (969, N'Какао-масло ', N'кг', NULL, NULL, N'какао', N'4''176.00', NULL, N'(ведро 4 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (970, N'Какао-масло ', N'кг', NULL, NULL, N'какао', N'828', NULL, N'(ведро 0.75 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (971, N'Какао-масло ', N'кг', NULL, NULL, N'какао', N'4''032.00', NULL, N'(ведро 4 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (972, N'Какао-паста ', N'кг', NULL, NULL, N'какао', N'2''592.00', NULL, N'(короб 4 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (973, N'Какао-порошок 10/12 ', N'кг', NULL, NULL, N'какао', N'430,56', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (974, N'Какао-порошок 22/24 ', N'кг', NULL, NULL, N'какао', N'576', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (975, N'Какао-порошок 22/24 10х1 кг. ', N'кг', NULL, NULL, N'какао', N'5''760.00', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (976, N'Какао-порошок 22/24 ', N'кг', NULL, NULL, N'какао', N'547,2', NULL, N'(пакет 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (977, N'Какао-порошок 22/24 ', N'кг', NULL, NULL, N'какао', N'9''792.00', NULL, N'(мешок 20 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (978, N'Глазурь сахарная белая ', N'кг', NULL, NULL, N'глазурь', N'3''636.00', NULL, N'(ведро 25 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (979, N'Глазурь сахарная ', N'кг', NULL, NULL, N'глазурь', N'2''448.00', NULL, N'(короб 15 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (980, N'Глазурь сахарная ФОНДАНТ СОФТ ', N'кг', NULL, NULL, N'глазурь', N'2''592.00', NULL, N'(ведро 14 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (981, N'Глазурь сахарн.ореховая РЕАЛ ', N'кг', NULL, NULL, N'глазурь', N'432', NULL, N'(мешок 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (982, N'Глазурь кондит."Шок.термостаб.капли 1200" ', N'кг', NULL, NULL, N'глазурь', N'432', NULL, N'(мешок 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (983, N'Глазурь кондит."Шок.термостаб.капли 1600" ', N'кг', NULL, NULL, N'глазурь', N'432', NULL, N'(мешок 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (984, N'Глазурь белая КИРОН ', N'кг', NULL, NULL, N'глазурь', N'3''600.00', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (985, N'Глазурь какаосодержащая КИРОН ', N'кг', NULL, NULL, N'глазурь', N'3''312.00', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (986, N'Глазурь кондит."Шок.термостаб.капли 1200" ', N'кг', NULL, NULL, N'глазурь', N'7''200.00', NULL, N'(мешок 25 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (987, N'Глазурь кондит."Шок.термостаб.капли 1600" ', N'кг', NULL, NULL, N'глазурь', N'7''344.00', NULL, N'(мешок 25 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (988, N'Глазурь белая "Шок.термостаб.капли 1600" ', N'кг', NULL, NULL, N'глазурь', N'3''528.00', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (989, N'Глазурь кондит."Шок.диски ИТАЛИКА" ', N'кг', NULL, NULL, N'глазурь', N'446,4', NULL, N'(мешок 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (990, N'Глазурь кондит."Шок.диски ИТАЛИКА" ', N'кг', NULL, NULL, N'глазурь', N'6''768.00', NULL, N'(мешок 25 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (991, N'Глазурь какаосодерж.конд."Шок.диски ТОПКОВЕР" ', N'кг', NULL, NULL, N'глазурь', N'3''960.00', NULL, N'(короб 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (992, N'Глазурь белая "Шок.диски ТОПКОВЕР" ', N'кг', NULL, NULL, N'глазурь', N'3''672.00', NULL, N'(мешок 10 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (993, N'Глазурь белая "Шок.диски ИТАЛИКА" ', N'кг', NULL, NULL, N'глазурь', N'504', NULL, N'(мешок 1 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (994, N'Глазурь белая "Шок.диски ИТАЛИКА" ', N'кг', NULL, NULL, N'глазурь', N'7''920.00', NULL, N'(мешок 25 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (995, N'Глазурь "М" Молочный шоколад ', N'кг', NULL, NULL, N'глазурь', N'4''086.72', NULL, N'(ведро 2.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (996, N'Глазурь "М" Шоколад ', N'кг', NULL, NULL, N'глазурь', N'6''984.00', NULL, N'(банка 5.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (997, N'Глазурь "М" Белый шоколад ', N'кг', NULL, NULL, N'глазурь', N'2''736.00', NULL, N'(ведро 2.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (998, N'Глазурь "М" Фисташка ', N'кг', NULL, NULL, N'глазурь', N'6''480.00', NULL, N'(ведро 2.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (999, N'Глазурь "М" Лесной орех ', N'кг', NULL, NULL, N'глазурь', N'3''456.00', NULL, N'(ведро 2.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1000, N'Глазурь "М" Клубника ', N'кг', NULL, NULL, N'глазурь', N'3''600.00', NULL, N'(ведро 2.5 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1001, N'Глазурь "М" Лимон ', N'кг', NULL, NULL, N'глазурь', N'3''168.00', NULL, N'(ведро 2.3 кг.)', NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1002, N'Венская помадка', N'кг.', N'4', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1003, N'Венский пирог микс "Бакальдрин"', N'кг.', N'9', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1004, N'Духи сухие', N'кг.', N'5', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1005, N'ИЗИ Бисквит  смесь', N'кг.', N'3', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1006, N'Изи Бисквит Какао', N'кг.', N'8', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1007, N'ИЗИ  Старт (для бездрожжевых изделий)', N'кг.', N'9', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1008, N'Кейк Микс (бисквит,кекс,печенье) 25 кг', N'кг.', N'3', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1009, N'Концентрат для пончиков Бакальдрин', N'кг.', N'1', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1010, N'Макарони микс смесь миндально-белковая', N'кг.', N'6', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1011, N'Макарони  смесь шоколадная Баргус 4В90201', N'кг.', N'3', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1012, N'Микс Захер', N'кг.', N'8', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1013, N'Пурамаффин', N'кг.', N'5', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1014, N'Смесь для бисквита  Красный Бархат', N'кг.', N'10', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1015, N'Смесь для бисквита  основного  "Экстра" 4В40101', N'кг.', N'8', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1016, N'Смесь для бисквита Супер Бисквит новый', N'кг.', N'6', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1017, N'Смесь для заварного теста "Шу Микс"(СиЭсЭм)', N'кг.', N'7', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1018, N'Смесь для кекса и маф шоколад (мучная) Росмикс 041', N'кг.', N'5', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1019, N'Смесь для кекса и маффина (мучная) Росмикс 04102', N'кг.', N'1', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1020, N'Смесь для маффинов"Королевский ШокоМаффин 12-ти%"1', N'кг.', N'5', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1021, N'Смесь для маффина "Профи-Маффин"', N'кг.', N'6', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1022, N'Смесь для маффина (белая) 4В30504', N'кг.', N'2', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1023, N'Смесь  для маффина Ваниль20', N'кг.', N'8', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1024, N'Смесь для маффина ФА Маффин Ванильно-сливочный', N'кг.', N'3', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1025, N'Смесь для маффина ФА Маффин Шоколадный Экстра', N'кг.', N'2', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1026, N'Смесь Имбирный пряник', N'кг.', N'1', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1027, N'Смесь  Кондитер Микс', N'кг.', N'9', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1028, N'Смесь конц."Монтемикс" 45/01Ш', N'кг.', N'7', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1029, N'Смесь конц. для маффинов "Маффин С20"', N'кг.', N'8', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1030, N'Смесь Монабейк 60/03', N'кг.', N'5', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1031, N'Смесь Монабейк 60/05', N'кг.', N'10', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1032, N'Смесь Монтебисквит 12/05', N'кг.', N'7', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1033, N'Смесь Монтебисквит 12/05 Ш', N'кг.', N'4', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1034, N'Смесь Монтемикс 45/01', N'кг.', N'1', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1035, N'Смесь Монтемикс 45/01 Ш', N'кг.', N'2', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1036, N'Смесь Профимикс 25/01', N'кг.', N'4', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Ingredients] ([Vendor_code], [Name], [Units], [Amount], [Main_vendor], [Type], [Price], [GOST], [Packaging], [Characteristic]) VALUES (1037, N'Смесь Сдоба Микс', N'кг.', N'9', NULL, N'Кондитерские смеси', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гурьева ', N'Ангелина Матвеевна', N'loginDEaaf2018', N'SIBZnG', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лаврентьев ', N'Леонид Игнатьевич', N'loginDEaba2018', N'+gLxUB', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Денисов ', N'Дамир Филатович', N'loginDEabf2018', N'*Tasm+', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Игнатьев ', N'Владлен Дамирович', N'loginDEadl2018', N'F&IWf4', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кулаков ', N'Авдей Донатович', N'loginDEaea2018', N'OQ8Kfz', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Белозёрова ', N'Алевтина Лаврентьевна', N'loginDEaee2018', N'5&qONH', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Морозова ', N'Феврония Всеволодовна', N'loginDEaeu2018', N'ubmJ{u', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Суханова ', N'Ангелина Григорьевна', N'loginDEafi2018', N'hN8}Tj', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Цветкова ', N'Алина Улебовна', N'loginDEafs2018', N'Wiw0VR', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Исаков ', N'Филат Григорьевич', N'loginDEagt2018', N'HDZ&8{', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Владимиров ', N'Егор Пётрович', N'loginDEahk2018', N'|tP8kR', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ситников ', N'Серапион Фролович', N'loginDEaic2018', N'X2adoa', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лазарев ', N'Святослав Олегович', N'loginDEaim2018', N'HdgRJI', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Поляков ', N'Яков Юлианович', N'loginDEajj2018', N'hzO1*o', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Казаков ', N'Виктор Аркадьевич', N'loginDEajx2018', N'TaE4Dg', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Коновалов ', N'Игнатий Юлианович', N'loginDEakk2018', N'f5aZnV', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Силин ', N'Игнатий Яковович', N'loginDEako2018', N'tD8J5+', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Андреева ', N'Ульяна Евгеньевна', N'loginDEala2018', N'46+ORY', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Красильникова ', N'Лариса Ефимовна', N'loginDEanl2018', N'EcBP7N', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Борисова ', N'Анжелика Анатольевна', N'loginDEanv2018', N'Xiq}M3', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Игнатьев ', N'Игнатий Антонинович', N'loginDEaob2018', N'3fy+3I', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Федосеев ', N'Пётр Григорьевич', N'loginDEaoi2018', N'Dl58m|', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Колобова ', N'Иванна Геннадьевна', N'loginDEaon2018', N'&OmaNE', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дементьев ', N'Владлен Глебович', N'loginDEaou2018', N'1E6ONr', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Тихонов ', N'Валентин Авдеевич', N'loginDEapt2018', N'cwx{RH', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Калинин ', N'Бронислав Денисович', N'loginDEapw2018', N'NX6N*N', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зиновьев ', N'Дамир Ефимович', N'loginDEaqv2018', N'nl0D9i', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Крюков ', N'Даниил Онисимович', N'loginDEarc2018', N'AZin*Q', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Матвиенко ', N'Фаина Демьяновна', N'loginDEaro2018', N'LE}Woo', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Захаров ', N'Фёдор Викторович', N'loginDEart2018', N'hnNvJ6', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Власов ', N'Никита Мартынович', N'loginDEath2018', N'Ii{d2t', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кошелев ', N'Владислав Лукьянович', N'loginDEatn2018', N'h{QXsQ', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Беспалова ', N'Галина Дмитрьевна', N'loginDEatu2018', N'}nGbhZ', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Большаков ', N'Федот Владимирович', N'loginDEaua2018', N'OJgRk4', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Путин ', N'Станислав Протасьевич', N'loginDEaul2018', N'MTZb+A', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кондратьев ', N'Геннадий Дмитрьевич', N'loginDEave2018', N'|+aXyG', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Владимирова ', N'Полина Иринеевна', N'loginDEavf2018', N'oDTttg', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дмитриев ', N'Никита Пётрович', N'loginDEaxl2018', N'V2S+Ih', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фадеев ', N'Демьян Федосеевич', N'loginDEaxm2018', N'BEc3xq', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гурьев ', N'Евгений Витальевич', N'loginDEayj2018', N'+b6HrZ', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Семёнова ', N'Октябрина Христофоровна', N'loginDEayn2018', N'Ka2Fok', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мишин ', N'Донат Брониславович', N'loginDEayo2018', N'wHQKY5', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лыткина ', N'Ульяна Станиславовна', N'loginDEazg2018', N's3bb|V', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Авдеева ', N'Наталья Викторовна', N'loginDEazm2018', N'2seWAw', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Щербакова ', N'Агата Матвеевна', N'loginDEazz2018', N'uhLV9n', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Авдеева ', N'Елизавета Федотовна', N'loginDEbbl2018', N'BXfnEL', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Максимов ', N'Ириней Дамирович', N'loginDEbbm2018', N'l4tp}r', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Молчанова ', N'Эмилия Мэлсовна', N'loginDEbbt2018', N'IclO}d', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Алексеев ', N'Владислав Аркадьевич', N'loginDEbct2018', N'Qg3gff', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Исаев ', N'Антон Брониславович', N'loginDEbdb2018', N'nxULDN', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Харитонов ', N'Германн Ефимович', N'loginDEbdx2018', N'F|mMSS', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Соболева ', N'Валерия Всеволодовна', N'loginDEbed2018', N'282IYv', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лазарева ', N'Антонина Христофоровна', N'loginDEbes2018', N'NaVtyH', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кошелева ', N'Василиса Якововна', N'loginDEbfn2018', N'RCt1Sk', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Агафонов ', N'Пантелеймон Гордеевич', N'loginDEbgb2018', N'VtmP58', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Громов ', N'Куприян Святославович', N'loginDEbhd2018', N'a80d5I', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Морозова ', N'Клавдия Святославовна', N'loginDEbho2018', N'AFvMyh', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мартынова ', N'Дарья Васильевна', N'loginDEbid2018', N'DeyUEY', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Васильев ', N'Роман Матвеевич', N'loginDEbir2018', N'ww9{S1', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Панфилова ', N'Марина Борисовна', N'loginDEbjs2018', N'Xap2ct', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Баранов ', N'Алексей Авдеевич', N'loginDEbka2018', N'|AbflR', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кулакова ', N'Виктория Георгьевна', N'loginDEbnj2018', N'+SW2I3', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мишина ', N'Елизавета Романовна', N'loginDEbrr2018', N'Z7L|+i', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Моисеев ', N'Лукий Борисович', N'loginDEbsc2018', N'myJPKm', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ситников ', N'Николай Филатович', N'loginDEbto2018', N'b1iYMI', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лапина ', N'Иванна Аристарховна', N'loginDEbtr2018', N'FdZrI3', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Крюкова ', N'Октябрина Геннадьевна', N'loginDEbuk2018', N'gLK7UQ', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сорокина ', N'Прасковья Фёдоровна', N'loginDEbur2018', N'aZKGeI', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Галкин ', N'Авксентий Ильяович', N'loginDEbvt2018', N'dQdmQF', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кузьмина ', N'Лукия Авдеевна', N'loginDEbwn2018', N'rr&WdV', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Александрова ', N'Анжелика Евгеньевна', N'loginDEbye2018', N'sHjuzU', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Данилова ', N'Ангелина Аркадьевна', N'loginDEbzh2018', N'ysac1M', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Орехова ', N'Наина Кондратовна', N'loginDEcan2018', N'SZKNx{', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Корнилов ', N'Иван Игоревич', N'loginDEcay2018', N'ehtG*H', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Владимиров ', N'Геласий Пантелеймонович', N'loginDEcbd2018', N'GwG*p6', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Киселёв ', N'Анатолий Альвианович', N'loginDEcbi2018', N'UrluYp', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дорофеева ', N'Марина Никитевна', N'loginDEcbm2018', N'puJ4i1', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ефимова ', N'Ираида Митрофановна', N'loginDEcbu2018', N'zLj0GQ', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Матвиенко ', N'Валерия Вячеславовна', N'loginDEccy2018', N'4zb2ow', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Романова ', N'Оксана Мартыновна', N'loginDEcda2018', N'Ji63Jt', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Суворова ', N'Зинаида Александровна', N'loginDEcdg2018', N'UYNHsU', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Самсонова ', N'Феврония Арсеньевна', N'loginDEcdn2018', N'1MtIz}', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Капустин ', N'Фрол Пётрович', N'loginDEcdz2018', N'e1oDkm', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ларионова ', N'Агата Ефимовна', N'loginDEcfc2018', N'GxVX}g', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Виноградов ', N'Матвей Анатольевич', N'loginDEchx2018', N'S5c&fX', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Поляков ', N'Евсей Алексеевич', N'loginDEcjd2018', N'F4Qv}x', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Якушев ', N'Валерьян Викторович', N'loginDEckd2018', N'apfX0U', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Николаев ', N'Руслан Варламович', N'loginDEclw2018', N'h5Q{Nx', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Носова ', N'Наина Эдуардовна', N'loginDEcmk2018', N'3f+b0+', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Евсеев ', N'Денис Борисович', N'loginDEcna2018', N'c4RbaU', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Уваров ', N'Анатолий Парфеньевич', N'loginDEcnj2018', N'QCQd0Z', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Карпова ', N'Ольга Лукьевна', N'loginDEcor2018', N'2cIrC8', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лобанова ', N'Акулина Игоревна', N'loginDEcox2018', N'y+vRV{', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Моисеева ', N'Надежда Протасьевна', N'loginDEcpb2018', N'|Be{Wn', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Карпов ', N'Улеб Леонидович', N'loginDEcph2018', N'7YpE0p', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воробьёва ', N'Евпраксия Ильяовна', N'loginDEcpi2018', N'8lSh*o', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Матвеев ', N'Яков Христофорович', N'loginDEcpv2018', N'|titk+', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гришина ', N'Феврония Егоровна', N'loginDEcrj2018', N'FI&nQq', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дьячкова ', N'Ираида Якововна', N'loginDEcsm2018', N'*X3Tl8', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Нестеров ', N'Андрей Даниилович', N'loginDEcsu2018', N'HOFZa6', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Блинов ', N'Артём Ильяович', N'loginDEctc2018', N'B&dlx+', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Устинов ', N'Владимир Федосеевич', N'loginDEctf2018', N'sjt*3N', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сазонова ', N'Раиса Кондратовна', N'loginDEctg2018', N'dN+jod', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Маслова ', N'Мария Аристарховна', N'loginDEcuf2018', N'aOdzYf', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Анисимов ', N'Никита Гордеевич', N'loginDEcui2018', N'Zi1Tth', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мясникова ', N'Евфросиния Федотовна', N'loginDEcur2018', N'FuE312', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фокин ', N'Бронислав Иванович', N'loginDEcvs2018', N'H*OqOg', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Жданов ', N'Ярослав Варламович', N'loginDEcxd2018', N'+WMe2B', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Щукина ', N'Марфа Глебовна', N'loginDEcxk2018', N'sM*fqO', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Семёнова ', N'Алина Эдуардовна', N'loginDEcxl2018', N'2ToouN', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Суворова ', N'Алина Антоновна', N'loginDEcxr2018', N'HCt|N1', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Белоусов ', N'Евсей Николаевич', N'loginDEcyg2018', N'UQA1Uu', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кошелева ', N'Кира Владиславовна', N'loginDEdal2018', N'cJWXL0', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Щербаков ', N'Лукий Онисимович', N'loginDEdaq2018', N'dWsvBS', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лапин ', N'Вячеслав Геласьевич', N'loginDEdat2018', N'ussd8Q', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Костин ', N'Геласий Германнович', N'loginDEdba2018', N'D7xF6u', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ефремов ', N'Протасий Протасьевич', N'loginDEdby2018', N'rleZVk', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Меркушев ', N'Мартын Федотович', N'loginDEdcd2018', N'LxR6YI', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Якушев ', N'Евсей Лукьевич', N'loginDEdcx2018', N'TYlFkM', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Андреева ', N'Анна Вячеславовна', N'loginDEddg2018', N'gGGhvD', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Артемьев ', N'Даниил Дамирович', N'loginDEdfh2018', N't0CrUG', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Красильников ', N'Геннадий Романович', N'loginDEdfk2018', N'aqgkFV', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Суворов ', N'Илья Евсеевич', N'loginDEdgp2018', N'1WfJjo', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Галкин ', N'Владислав Филатович', N'loginDEdgv2018', N'kfmvXj', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лапина ', N'Фёкла Мстиславовна', N'loginDEdhh2018', N'WpZhYf', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зуев ', N'Николай Георгьевич', N'loginDEdif2018', N'Tpivcr', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Третьяков ', N'Юрий Станиславович', N'loginDEdis2018', N'|1+hrs', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Марков ', N'Александр Созонович', N'loginDEdjc2018', N'x*slLs', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Бобров ', N'Пётр Леонидович', N'loginDEdje2018', N'Ros+rl', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зиновьева ', N'Мария Лаврентьевна', N'loginDEdjm2018', N'KjI1JR', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Колобова ', N'Алина Парфеньевна', N'loginDEdld2018', N'6OKEWQ', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Рогов ', N'Ким Станиславович', N'loginDEdlu2018', N'JgY{Zo', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Трофимов ', N'Ярослав Валентинович', N'loginDEdlw2018', N'4tyo1M', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Федосеева ', N'Ольга Алексеевна', N'loginDEdmd2018', N'6xjzYR', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воробьёв ', N'Герман Романович', N'loginDEdmi2018', N'HOGFbU', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Степанова ', N'Маргарита Ильяовна', N'loginDEdmj2018', N'J+}Wvc', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Галкин ', N'Владислав Кимович', N'loginDEdno2018', N'PJ05BT', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кудрявцев ', N'Матвей Игоревич', N'loginDEdof2018', N'kD|LRU', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Беляев ', N'Якун Протасьевич', N'loginDEdoo2018', N'1jH&}l', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ситников ', N'Парфений Всеволодович', N'loginDEdpy2018', N'MJ0W|f', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ковалёва ', N'Феврония Всеволодовна', N'loginDEdqb2018', N'w+Sx*+', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сергеев ', N'Никита Валентинович', N'loginDEdqe2018', N'Gzy&A6', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Степанов ', N'Виталий Лукьевич', N'loginDEdrj2018', N'eD*hjv', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Романов ', N'Анатолий Юлианович', N'loginDEdrt2018', N'wg*xRp', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Некрасова ', N'Клавдия Денисовна', N'loginDEdrx2018', N'*SZ7TL', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Рыбаков ', N'Андрей Семёнович', N'loginDEdsm2018', N'dQPs1p', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Баранов ', N'Анатолий Митрофанович', N'loginDEdsu2018', N'aZZhZQ', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Котов ', N'Анатолий Арсеньевич', N'loginDEdts2018', N'lyy5BX', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Щербаков ', N'Владимир Матвеевич', N'loginDEdup2018', N'JM+2{s', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Галкина ', N'Тамара Авксентьевна', N'loginDEdvk2018', N'NKNkup', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Горбачёв ', N'Ириней Викторович', N'loginDEdwi2018', N'n*aog&', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дьячков ', N'Фрол Арсеньевич', N'loginDEdwq2018', N'WkTaBP', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мартынов ', N'Онисим Брониславович', N'loginDEdxi2018', N'ywLUbA', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пахомов ', N'Донат Евсеевич', N'loginDEdya2018', N'tS2NmR', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пахомов ', N'Гордей Борисович', N'loginDEdys2018', N'B}2V7t', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мухин ', N'Леонид Антонович', N'loginDEdzx2018', N'+iBUvT', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ларионова ', N'Василиса Владимировна', N'loginDEebl2018', N'+t&bky', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Тарасова ', N'Ксения Олеговна', N'loginDEebx2018', N'WTBC7e', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лапин ', N'Павел Макарович', N'loginDEecp2018', N'iOJ*u2', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Игнатьева ', N'Глафира Эдуардовна', N'loginDEecu2018', N's6FMJ|', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Волков ', N'Федосей Святославович', N'loginDEecw2018', N'V8}GOZ', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Егоров ', N'Евсей Константинович', N'loginDEeeg2018', N'fIqIdE', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Жуков ', N'Тихон Германович', N'loginDEefa2018', N'O6TkFS', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Богданов ', N'Егор Андреевич', N'loginDEefc2018', N'Zaj{+Y', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Иванова ', N'Ирина Мэлсовна', N'loginDEegj2018', N'52*BRY', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Макаров ', N'Егор Святославович', N'loginDEeib2018', N'DN0Zs&', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дроздова ', N'Александра Мартыновна', N'loginDEeiv2018', N'H*BxlS', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Корнилова ', N'Алина Игоревна', N'loginDEeiw2018', N'bLgTtm', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Филатов ', N'Константин Вадимович', N'loginDEejw2018', N'4}szdy', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фомичёв ', N'Денис Федосеевич', N'loginDEeka2018', N'mLZvLv', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Горшкова ', N'Полина Якововна', N'loginDEekp2018', N'wvC|+L', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зиновьев ', N'Иван Ильяович', N'loginDEelh2018', N'NNmfSo', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Терентьев ', N'Игорь Александрович', N'loginDEell2018', N'7wQfBj', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гусева ', N'Алина Васильевна', N'loginDEelw2018', N'8m|p+S', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Терентьева ', N'Анжела Михаиловна', N'loginDEemw2018', N'NxhF5I', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Доронин ', N'Митрофан Лаврентьевич', N'loginDEend2018', N'SX8Z4A', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пономарёв ', N'Дмитрий Гордеевич', N'loginDEeni2018', N'mpWg+d', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Орехова ', N'Ираида Николаевна', N'loginDEenm2018', N'2s1Lxh', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Петухов ', N'Гордей Серапионович', N'loginDEepk2018', N'VZ&Ak7', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Белова ', N'Марфа Матвеевна', N'loginDEepr2018', N'BG6tpN', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мишин ', N'Ростислав Пантелеймонович', N'loginDEeqk2018', N'I{iaU4', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Маслов ', N'Мстислав Антонинович', N'loginDEeqo2018', N'l5CBqA', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кабанов ', N'Виктор Парфеньевич', N'loginDEerm2018', N'XPr8zT', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Архипова ', N'Венера Демьяновна', N'loginDEery2018', N'*I0Rdi', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Герасимов ', N'Олег Авксентьевич', N'loginDEetv2018', N'lNi&rF', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Виноградов ', N'Созон Арсеньевич', N'loginDEeur2018', N'n4V{wP', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Быков ', N'Лаврентий Ярославович', N'loginDEevd2018', N'GMbcZN', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Никонова ', N'Венера Станиславовна', N'loginDEevr2018', N'zO5l}l', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воронцов ', N'Владимир Игнатьевич', N'loginDEewk2018', N'4baKX7', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Титов ', N'Семён Иринеевич', N'loginDEexu2018', N'Nt44pG', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Афанасьев ', N'Владлен Евгеньевич', N'loginDEeyg2018', N'TOcMjG', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Блохин ', N'Парфений Владленович', N'loginDEfae2018', N'pa&d4a', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фёдоров ', N'Донат Егорович', N'loginDEfbq2018', N'}G4XKd', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Белов ', N'Роман Иринеевич', N'loginDEfbs2018', N'v90Rep', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сафонова ', N'Нинель Якововна', N'loginDEfeo2018', N'8cI7vq', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зуев ', N'Ириней Вадимович', N'loginDEffj2018', N'cJP+HC', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Бирюков ', N'Вячеслав Агафонович', N'loginDEffq2018', N'Vs0tGb', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Горбачёва ', N'Зоя Куприяновна', N'loginDEfgs2018', N'+H9B17', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ширяев ', N'Иван Игоревич', N'loginDEfhd2018', N'{4wU7n', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ершова ', N'Василиса Ярославовна', N'loginDEfiy2018', N'nBm{qt', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зайцев ', N'Юрий Анатольевич', N'loginDEfjj2018', N'dyv&fw', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кириллова ', N'Эмилия Федосеевна', N'loginDEfku2018', N'a1m+8c', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зиновьев ', N'Лукий Владимирович', N'loginDEflj2018', N'alo84u', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кузнецов ', N'Фрол Варламович', N'loginDEfmn2018', N'cw3|03', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведев ', N'Владимир Онисимович', N'loginDEfnd2018', N'74D9|d', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пахомова ', N'Эмилия Геласьевна', N'loginDEfnf2018', N'6cftrw', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Селезнёв ', N'Егор Артёмович', N'loginDEfog2018', N'glICay', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Брагин ', N'Бронислав Георгьевич', N'loginDEfoj2018', N'nhGc+D', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Агафонов ', N'Владлен Станиславович', N'loginDEfou2018', N'O+S9hm', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Владимиров ', N'Геннадий Еремеевич', N'loginDEfpm2018', N'oJ7&bs', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Исаев ', N'Дмитрий Аристархович', N'loginDEfrp2018', N'6dcR|9', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведев ', N'Эдуард Антонович', N'loginDEfse2018', N'axoHxw', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Куликов ', N'Андрей Святославович', N'loginDEfsp2018', N'&dtlI+', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Герасимов ', N'Вячеслав Ростиславович', N'loginDEftn2018', N'gPq+a}', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дроздов ', N'Аркадий Геласьевич', N'loginDEfuc2018', N'VuM+QT', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Силин ', N'Вячеслав Валерьевич', N'loginDEfug2018', N'z|6cXV', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Прохорова ', N'Нина Улебовна', N'loginDEfuv2018', N'xSvieW', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Степанов ', N'Евсей Федотович', N'loginDEfuz2018', N'ILry03', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Уварова ', N'Наталья Евгеньевна', N'loginDEfvq2018', N'*uGVVE', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Маслов ', N'Леонид Николаевич', N'loginDEfwx2018', N't|*wCk', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Савельева ', N'Олимпиада Данииловна', N'loginDEfxd2018', N'uZm+f6', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Князев ', N'Дамир Валерьевич', N'loginDEfyh2018', N'04JQix', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Баранова ', N'Евдокия Игнатьевна', N'loginDEfzb2018', N'0Q6cQY', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сазонова ', N'Клавдия Евгеньевна', N'loginDEfzq2018', N'36H8f}', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Панова ', N'Ольга Олеговна', N'loginDEgbd2018', N'+86Nf*', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кудряшов ', N'Михаил Протасьевич', N'loginDEgbi2018', N'c29wfj', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сергеева ', N'Агата Юрьевна', N'loginDEgbr2018', N'}+Ex1*', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кузьмина ', N'Прасковья Онисимовна', N'loginDEgbx2018', N'qrB{e1', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Щукина ', N'Клавдия Куприяновна', N'loginDEgcb2018', N'St&dIw', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Логинова ', N'Элеонора Дмитрьевна', N'loginDEgcl2018', N'swu*ZT', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Королёв ', N'Матвей Вадимович', N'loginDEgco2018', N'nMr|ss', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лазарева ', N'Мария Сергеевна', N'loginDEgcs2018', N'hNDB+t', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Баранов ', N'Валерьян Игнатьевич', N'loginDEgdb2018', N'xLvXN{', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Антонов ', N'Германн Мартынович', N'loginDEgdn2018', N'rkaUu0', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Яковлев ', N'Яков Эдуардович', N'loginDEgeq2018', N'&&Eim0', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кононов ', N'Эдуард Валентинович', N'loginDEgfw2018', N'3c2Ic1', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Герасимова ', N'Феврония Валерьяновна', N'loginDEgfx2018', N'GFSZAB', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Родионова ', N'Венера Арсеньевна', N'loginDEggp2018', N'bBNxJb', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Меркушев ', N'Дамир Улебович', N'loginDEgho2018', N'kDKj}M', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кондратьев ', N'Аркадий Михаилович', N'loginDEght2018', N'E3k7zP', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Князев ', N'Геласий Евсеевич', N'loginDEghx2018', N'gue+iw', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Терентьева ', N'Вероника Протасьевна', N'loginDEgju2018', N'C7nYc{', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гаврилов ', N'Демьян Валентинович', N'loginDEgkj2018', N'yXC+SX', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Хохлова ', N'Виктория Глебовна', N'loginDEgmb2018', N'czGJP5', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шестаков ', N'Авдей Иванович', N'loginDEgnl2018', N'wdio{u', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лапин ', N'Алексей Витальевич', N'loginDEgno2018', N'4fqLiO', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сафонов ', N'Станислав Григорьевич', N'loginDEgpt2018', N'Gao1gX', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дроздов ', N'Дмитрий Юлианович', N'loginDEgsp2018', N'9ACW}r', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фомичёва ', N'Светлана Тихоновна', N'loginDEgtc2018', N'ysRjen', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Меркушева ', N'Раиса Владленовна', N'loginDEgtk2018', N'pNWXhi', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Логинов ', N'Федот Святославович', N'loginDEgtt2018', N'7YD|BR', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Носков ', N'Семён Васильевич', N'loginDEgtz2018', N'Tv&BVy', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Осипов ', N'Артём Мэлорович', N'loginDEgup2018', N'36|KhF', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сергеева ', N'Зоя Пётровна', N'loginDEguz2018', N'7wsWd4', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Боброва ', N'Дарья Федосеевна', N'loginDEgva2018', N'SXlY&e', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Попова ', N'Татьяна Артёмовна', N'loginDEgwc2018', N'zWQpyU', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кабанова ', N'Таисия Донатовна', N'loginDEgwd2018', N'AVPVNQ', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Давыдова ', N'Елена Георгьевна', N'loginDEgwm2018', N'S2JKft', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Орлов ', N'Юрий Андреевич', N'loginDEgwr2018', N'xhCEUR', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Котов ', N'Денис Мартынович', N'loginDEgyi2018', N'|7nYPc', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Суворова ', N'Валерия Борисовна', N'loginDEgyt2018', N'Pav+GP', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Нестеров ', N'Анатолий Павлович', N'loginDEgza2018', N'PXAA7c', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Попов ', N'Фрол Серапионович', N'loginDEgzq2018', N'FwZalk', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ларионова ', N'Фёкла Филатовна', N'loginDEgzu2018', N'AkAXti', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кулаков ', N'Мартын Михаилович', N'loginDEhbm2018', N'9aObu4', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Муравьёва ', N'Александра Ростиславовна', N'loginDEhcp2018', N'n2nfRl', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Денисова ', N'Ия Филатовна', N'loginDEhdc2018', N'iF+GK&', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Носков ', N'Альвиан Онисимович', N'loginDEhej2018', N'K9Z5Vp', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кулагин ', N'Матвей Якунович', N'loginDEheo2018', N'XiJmr9', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Евдокимов ', N'Ростислав Александрович', N'loginDEhep2018', N'SwRicr', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пономарёв ', N'Христофор Русланович', N'loginDEher2018', N'cTlCHC', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мясников ', N'Борис Лукьевич', N'loginDEhfv2018', N'QpAY63', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Назаров ', N'Евгений Юлианович', N'loginDEhhe2018', N'LKkrzY', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Полякова ', N'Антонина Андреевна', N'loginDEhhf2018', N'd+GS5y', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кудрявцева ', N'Таисия Игоревна', N'loginDEhhx2018', N'hmCHeQ', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дорофеева ', N'Валерия Павловна', N'loginDEhic2018', N'OPCVb1', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Жданова ', N'Анна Еремеевна', N'loginDEhio2018', N'3Aaqne', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Петров ', N'Вадим Мэлорович', N'loginDEhiq2018', N'IbJ}qw', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фёдорова ', N'Алла Брониславовна', N'loginDEhix2018', N'ZKnd*0', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Бобров ', N'Артём Валерьянович', N'loginDEhjr2018', N'4aeumW', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ефремов ', N'Дмитрий Мартынович', N'loginDEhjw2018', N'dFb{aw', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Андреева ', N'Александра Владиславовна', N'loginDEhks2018', N'XV|+W4', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Казакова ', N'Кира Вячеславовна', N'loginDEhkz2018', N'T6BAKi', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Яковлева ', N'Ксения Онисимовна', N'loginDEhlk2018', N'g0jSed', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Авдеева ', N'Жанна Куприяновна', N'loginDEhmn2018', N'a|Iz|7', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воронцова ', N'Наина Юрьевна', N'loginDEhmv2018', N'KE6+sS', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Рябова ', N'Лукия Руслановна', N'loginDEhne2018', N'Lidn5o', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Тимофеев ', N'Фёдор Валентинович', N'loginDEhnh2018', N'm0WYQH', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Герасимова ', N'Элеонора Вадимовна', N'loginDEhns2018', N'oX7tXV', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пономарёв ', N'Владлен Протасьевич', N'loginDEhnt2018', N'3X5|Jy', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воронцова ', N'Нонна Дмитрьевна', N'loginDEhqg2018', N'0Z4{o3', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ермакова ', N'Зинаида Данииловна', N'loginDEhqk2018', N'KBc4A+', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Андреев ', N'Руслан Федосеевич', N'loginDEhqm2018', N'BPvGYj', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Данилов ', N'Мстислав Олегович', N'loginDEhqt2018', N'EhWhoq', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кулагин ', N'Лукий Брониславович', N'loginDEhrc2018', N'sk1mgK', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Степанова ', N'Глафира Авксентьевна', N'loginDEhsb2018', N'n|I6A0', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фокин ', N'Ириней Ростиславович', N'loginDEhsj2018', N's+jrMW', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Брагина ', N'Алина Валерьевна', N'loginDEhuu2018', N'X31OEf', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Суворов ', N'Всеволод Богданович', N'loginDEhuv2018', N'EJFYzS', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шилов ', N'Матвей Альбертович', N'loginDEhvg2018', N'SaHv6w', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Комиссаров ', N'Тихон Варламович', N'loginDEhwk2018', N'TeoCY0', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Чернов ', N'Арсений Германнович', N'loginDEhya2018', N'+JQwYv', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гордеев ', N'Виктор Эдуардович', N'loginDEhyk2018', N'*gN}Tc', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Котова ', N'Элеонора Протасьевна', N'loginDEhyt2018', N'3E{ZDm', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Корнилов ', N'Филат Артёмович', N'loginDEhzm2018', N'D*pP0+', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мартынов ', N'Матвей Антонович', N'loginDEhzq2018', N'QhSJos', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Захарова ', N'Маргарита Авксентьевна', N'loginDEiai2018', N'OPjijt', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Субботина ', N'Оксана Геннадьевна', N'loginDEiam2018', N'b+*n+0', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Буров ', N'Егор Арсеньевич', N'loginDEibc2018', N'qb8|Mk', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Белоусова ', N'Любовь Георгьевна', N'loginDEicr2018', N'3+|Sn{', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Романова ', N'Евдокия Альбертовна', N'loginDEide2018', N'dFR{Aq', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Исаков ', N'Константин Яковович', N'loginDEidg2018', N'YjZW6A', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гаврилов ', N'Василий Германович', N'loginDEidx2018', N'R2j0mn', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лаврентьева ', N'Элеонора Агафоновна', N'loginDEidz2018', N'G5DP2D', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Орехова ', N'Агафья Пантелеймоновна', N'loginDEifv2018', N'V61gmp', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дроздов ', N'Борис Мэлорович', N'loginDEigl2018', N'L2J*KI', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Потапов ', N'Геннадий Созонович', N'loginDEigv2018', N'ZOYxOn', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Романов ', N'Германн Серапионович', N'loginDEiho2018', N'UIlg{8', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кириллов ', N'Константин Алексеевич', N'loginDEiik2018', N'gKt2zV', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Бурова ', N'Марфа Федотовна', N'loginDEiin2018', N'y9l*b}', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сидоров ', N'Роман Иринеевич', N'loginDEijg2018', N'4QlKJW', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Никифоров ', N'Владлен Васильевич', N'loginDEijp2018', N'*V969Y', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Панфилова ', N'Василиса Григорьевна', N'loginDEikb2018', N'*QkUxc', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Артемьев ', N'Даниил Филатович', N'loginDEikh2018', N'3yKW4y', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Юдин ', N'Антон Васильевич', N'loginDEiks2018', N'FXV&W*', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Максимов ', N'Донат Игнатьевич', N'loginDEiky2018', N'G&fF7n', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Виноградов ', N'Юрий Лукьевич', N'loginDEilb2018', N'IN2Ahc', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зуева ', N'Марина Ильяовна', N'loginDEilc2018', N'eyRufZ', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зыков ', N'Богдан Леонидович', N'loginDEill2018', N'5c|dSJ', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Савина ', N'Таисия Глебовна', N'loginDEima2018', N'XK3sOA', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Туров ', N'Денис Геласьевич', N'loginDEioe2018', N'yMPu&2', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кулаков ', N'Мэлор Вячеславович', N'loginDEipm2018', N'MAZl6|', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Агафонова ', N'Лариса Михаиловна', N'loginDEiry2018', N'5zu7+}', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Казаков ', N'Федот Кондратович', N'loginDEisg2018', N'Cp8ddU', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Коновалова ', N'Агафья Митрофановна', N'loginDEisp2018', N'dfz5Ii', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Рожков ', N'Протасий Альвианович', N'loginDEisy2018', N'5k5dHN', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гуляева ', N'Октябрина Кондратовна', N'loginDEitl2018', N'BECfk*', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сысоева ', N'Виктория Максимовна', N'loginDEitt2018', N'L+OKpQ', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Волков ', N'Владлен Николаевич', N'loginDEiui2018', N'ce4&gT', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сорокин ', N'Лаврентий Аркадьевич', N'loginDEivc2018', N'Ci52qh', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Русакова ', N'Марина Юлиановна', N'loginDEiwl2018', N'LhlmIl', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Матвеев ', N'Борис Мэлорович', N'loginDEiwx2018', N'9{rX8I', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Федосеев ', N'Иван Валентинович', N'loginDEiyy2018', N'Ip|*iS', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ершов ', N'Федосей Геласьевич', N'loginDEizo2018', N'0wQJ2L', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гусев ', N'Руслан Дамирович', N'loginDEjaw2018', N'h6z&Ky', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Беляева ', N'Анна Вячеславовна', N'loginDEjbz2018', N'xIAWNI', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Маркова ', N'Евдокия Артёмовна', N'loginDEjct2018', N'3WpoK9', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гордеев ', N'Аристарх Русланович', N'loginDEjcu2018', N'2+JLPl', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Самойлов ', N'Богдан Геласьевич', N'loginDEjdf2018', N'*jzOGy', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Третьяков ', N'Аристарх Геннадьевич', N'loginDEjef2018', N'J+F{R1', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сидоров ', N'Святослав Демьянович', N'loginDEjeh2018', N'IgW*|U', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ефремов ', N'Демьян Артёмович', N'loginDEjfb2018', N'TNT+}h', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Носков ', N'Александр Богданович', N'loginDEjfr2018', N'nxLt10', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Вишнякова ', N'Ирина Агафоновна', N'loginDEjgh2018', N'7w4c6u', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Комиссарова ', N'Мария Владимировна', N'loginDEjgl2018', N'++04Tb', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Петухова ', N'Элеонора Ильяовна', N'loginDEjgq2018', N'gJEYkn', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Комаров ', N'Всеволод Степанович', N'loginDEjgu2018', N'ELrDod', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Нестеров ', N'Виктор Юлианович', N'loginDEjhb2018', N'PNvt8N', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зуев ', N'Глеб Игнатьевич', N'loginDEjhx2018', N'cQlCrZ', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведев ', N'Ириней Геннадьевич', N'loginDEjis2018', N'A9K++2', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Авдеев ', N'Константин Станиславович', N'loginDEjjx2018', N'DP|ubQ', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Александрова ', N'Иванна Лаврентьевна', N'loginDEjkw2018', N'8I8Yk1', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зимина ', N'Лукия Дмитрьевна', N'loginDEjmx2018', N'i{OH{c', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Романов ', N'Аристарх Ильяович', N'loginDEjno2018', N'kuLGGL', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Яковлев ', N'Фёдор Мартынович', N'loginDEjoa2018', N'kChmEo', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сазонов ', N'Авксентий Брониславович', N'loginDEjoi2018', N'o}C4jv', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мамонтова ', N'Ия Лукьяновна', N'loginDEjov2018', N'zS&ClK', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Быкова ', N'Надежда Авксентьевна', N'loginDEjpa2018', N'cagBg7', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Антонова ', N'Ульяна Семёновна', N'loginDEjpp2018', N'oMOQq3', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Миронова ', N'Глафира Сергеевна', N'loginDEjqp2018', N'zTKmDa', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Никитин ', N'Борис Евгеньевич', N'loginDEjrd2018', N'8tl2a+', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Самойлова ', N'Клавдия Владленовна', N'loginDEjre2018', N'Ea5FeF', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Никифоров ', N'Всеволод Иванович', N'loginDEjrm2018', N'Cpb+Im', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Федосеева ', N'Тамара Михаиловна', N'loginDEjrs2018', N'MVg{yd', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шестаков ', N'Всеволод Лукьевич', N'loginDEjrt2018', N'x8St23', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лыткина ', N'Милица Вячеславовна', N'loginDEjtd2018', N'ODotUj', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дьячкова ', N'Екатерина Владленовна', N'loginDEjtt2018', N'eKlTzd', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шестаков ', N'Илья Антонинович', N'loginDEjtv2018', N'f2ZaN6', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Молчанов ', N'Юрий Лукьянович', N'loginDEjvp2018', N'etLGcB', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Копылов ', N'Куприян Пётрович', N'loginDEjvz2018', N'&|bGTy', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Виноградов ', N'Ростислав Еремеевич', N'loginDEjwb2018', N'IQ+a01', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Иван ', N'Семёновна', N'loginDEjwl2018', N'D4ZYHt', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Карпов ', N'Артём Кимович', N'loginDEjyb2018', N'om9BwD', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лебедев ', N'Парфений Якунович', N'loginDEjyc2018', N'cj9ECm', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Денисов ', N'Яков Даниилович', N'loginDEjyt2018', N'E&Ac|h', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Соболева ', N'Валентина Созоновна', N'loginDEjzb2018', N'lRjz+1', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведев ', N'Евгений Эдуардович', N'loginDEjzi2018', N'5cDW2|', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Андреева ', N'Нина Михаиловна', N'loginDEkbf2018', N'mBqfYS', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Филатова ', N'Пелагея Якуновна', N'loginDEkbx2018', N'T}4cTC', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Комаров ', N'Аркадий Иванович', N'loginDEkdg2018', N'R0tt07', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Тимофеева ', N'Елизавета Мэлсовна', N'loginDEkea2018', N'82af{y', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Волков ', N'Николай Ярославович', N'loginDEket2018', N'TN4H+S', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Маркова ', N'Ираида Сергеевна', N'loginDEkfg2018', N'r1060q', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воронцов ', N'Валерьян Даниилович', N'loginDEkfs2018', N'q}b+Tf', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лазарев ', N'Мэлор Дмитрьевич', N'loginDEkhc2018', N'+4+F+o', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воронов ', N'Мэлс Семёнович', N'loginDEkhj2018', N'Pbc0t{', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кабанов ', N'Гордей Геласьевич', N'loginDEkit2018', N'Zx89p+', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Орехова ', N'Людмила Владимировна', N'loginDEkiy2018', N'BQzsts', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шарапова ', N'Марина Павловна', N'loginDEkjs2018', N'A8K6dL', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Белозёров ', N'Андрей Николаевич', N'loginDEkkb2018', N'+zE&cU', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Стрелков ', N'Борис Альбертович', N'loginDEklg2018', N'l9|xfT', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кузьмин ', N'Максим Антонинович', N'loginDEklp2018', N'kecK{O', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Аксёнова ', N'Александра Лаврентьевна', N'loginDEklt2018', N'5QO|u4', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Доронина ', N'Фаина Якуновна', N'loginDEkma2018', N'jW{dgt', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Поляков ', N'Лукьян Викторович', N'loginDEknj2018', N'hKZfoC', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пахомова ', N'Элеонора Григорьевна', N'loginDEkny2018', N'v2+4Ro', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Копылова ', N'Ульяна Тихоновна', N'loginDEkro2018', N'N5|}vM', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Артемьева ', N'Фаина Христофоровна', N'loginDEksx2018', N'gLTUuE', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Капустина ', N'Ульяна Игоревна', N'loginDEkuv2018', N'Ade++|', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Данилов ', N'Егор Валентинович', N'loginDEkuy2018', N's4Vm64', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мельникова ', N'Оксана Валентиновна', N'loginDEkvs2018', N'0GeIOP', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Матвеев ', N'Павел Еремеевич', N'loginDEkws2018', N'fZj28G', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Козлова ', N'Мария Валерьяновна', N'loginDEkww2018', N'KzFIWJ', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Якушев ', N'Германн Мэлорович', N'loginDEkxq2018', N'8igB2p', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Панов ', N'Никита Евсеевич', N'loginDEkxx2018', N'GhlUU&', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Артемьев ', N'Варлам Альбертович', N'loginDEkzo2018', N'n3es*S', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Суханов ', N'Мартын Глебович', N'loginDEkzp2018', N'G*n9OB', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мишин ', N'Владлен Арсеньевич', N'loginDEkzy2018', N'DpvYbd', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Никитин ', N'Аркадий Дмитрьевич', N'loginDElag2018', N'NupBH|', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ковалёв ', N'Аристарх Егорович', N'loginDEldj2018', N'kZwuDV', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Трофимова ', N'Наталья Семёновна', N'loginDEldo2018', N'oWfgBB', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Чернова ', N'Агата Данииловна', N'loginDElhk2018', N'Okk0jY', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Вишнякова ', N'Ия Данииловна', N'loginDEliu2018', N'32FyTl', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Щербаков ', N'Кондрат Фёдорович', N'loginDEljg2018', N'CT44Gc', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Николаева ', N'Василиса Всеволодовна', N'loginDEljn2018', N'368eRp', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Громов ', N'Протасий Георгьевич', N'loginDEljv2018', N'utbJSk', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мартынов ', N'Онисим Ярославович', N'loginDElkc2018', N'BOvRGk', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Корнилова ', N'Кира Брониславовна', N'loginDElkp2018', N'TA6grZ', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Иван ', N'Протасьевна', N'loginDEllr2018', N'hXtdCD', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Макарова ', N'Пелагея Антониновна', N'loginDEllw2018', N'jNtNUr', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ларионов ', N'Макар Якунович', N'loginDElme2018', N'|wu0n4', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пахомова ', N'Тамара Владиславовна', N'loginDElmm2018', N'dbX7VE', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Бирюкова ', N'Пелагея Дмитрьевна', N'loginDElmy2018', N'X2LtuP', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Беспалов ', N'Еремей Мартынович', N'loginDElnh2018', N'D+83Ot', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кузнецов ', N'Фрол Георгьевич', N'loginDElno2018', N'le1vt2', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Савин ', N'Пётр Артёмович', N'loginDEloi2018', N'azEz+L', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зыков ', N'Геласий Лаврентьевич', N'loginDElom2018', N'Yg}k84', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Баранов ', N'Станислав Дмитрьевич', N'loginDEloq2018', N'NZV5WR', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Родионова ', N'Тамара Валентиновна', N'loginDElqb2018', N'RNynil', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шарапова ', N'Глафира Мстиславовна', N'loginDElqo2018', N'TiSXX{', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Носков ', N'Парфений Георгьевич', N'loginDElqv2018', N'Hqfw17', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дроздова ', N'Фёкла Митрофановна', N'loginDElrx2018', N'lbX+dF', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Николаев ', N'Ефим Константинович', N'loginDElsk2018', N'h0OP2P', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Нестерова ', N'Алина Ростиславовна', N'loginDEltt2018', N'vJCz+l', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Симонов ', N'Юрий Созонович', N'loginDEltw2018', N'zvjkwE', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зиновьева ', N'Варвара Антоновна', N'loginDEluw2018', N'S3wj{I', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сергеева ', N'Таисия Альвиановна', N'loginDElvm2018', N'elWeXR', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Коновалов ', N'Владлен Юрьевич', N'loginDElxp2018', N'vKdJGk', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведьев ', N'Руслан Богданович', N'loginDElyc2018', N'+SJEpd', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Агафонов ', N'Ириней Фёдорович', N'loginDElzj2018', N'Ph0lH+', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Некрасова ', N'Алла Альбертовна', N'loginDEmad2018', N'cRKuGW', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шаров ', N'Федосей Юрьевич', N'loginDEmbg2018', N'Fou{d3', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Исаева ', N'Любовь Мэлоровна', N'loginDEmbm2018', N'g90TWM', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Трофимов ', N'Иван Антонинович', N'loginDEmch2018', N'IC2+2a', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гущина ', N'Вера Ефимовна', N'loginDEmda2018', N'sG+NF0', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Виноградов ', N'Яков Онисимович', N'loginDEmeh2018', N'HQ+m4W', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Иван ', N'Вячеславовна', N'loginDEmel2018', N'8zmoSV', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Наумова ', N'Лидия Донатовна', N'loginDEmfu2018', N'{ZpDBn', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кузнецов ', N'Созон Викторович', N'loginDEmge2018', N'C947}j', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Котова ', N'Светлана Леонидовна', N'loginDEmgl2018', N'QJNgD&', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Беляев ', N'Валентин Артёмович', N'loginDEmgu2018', N'0gC3bk', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Игнатьева ', N'Элеонора Олеговна', N'loginDEmhc2018', N'mMYPim', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сафонова ', N'Дарья Брониславовна', N'loginDEmid2018', N'CVjLBK', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Щербаков ', N'Александр Федотович', N'loginDEmii2018', N'B84UwV', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Игнатьев ', N'Федосей Богданович', N'loginDEmin2018', N'pQ6jze', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Маслов ', N'Геннадий Куприянович', N'loginDEmiy2018', N'dK6+AE', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Евсеев ', N'Игорь Донатович', N'loginDEmjb2018', N'5mm{ch', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ковалёва ', N'Мария Максимовна', N'loginDEmjf2018', N'p+u{vH', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Григорьева ', N'Глафира Антоновна', N'loginDEmly2018', N'IZJ7O|', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Анисимова ', N'Таисия Улебовна', N'loginDEmmc2018', N'8a0pbC', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сорокин ', N'Агафон Семёнович', N'loginDEmmh2018', N'x1wAHo', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Поляков ', N'Георгий Авдеевич', N'loginDEmnq2018', N'laFpJG', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Суворов ', N'Егор Гордеевич', N'loginDEmom2018', N'0gSoaA', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Копылова ', N'Иванна Геласьевна', N'loginDEmoq2018', N'*bhJb4', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Исакова ', N'Прасковья Олеговна', N'loginDEmos2018', N'gC*38U', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Беляков ', N'Семён Германнович', N'loginDEmox2018', N'Je}9e7', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Панова ', N'Тамара Протасьевна', N'loginDEmqf2018', N'*eh|rQ', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фадеев ', N'Николай Денисович', N'loginDEmqg2018', N'4*M&VK', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Назаров ', N'Степан Макарович', N'loginDEmqs2018', N'KRp6IW', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мясникова ', N'Ия Евсеевна', N'loginDEmqt2018', N'SIasu5', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Михайлов ', N'Ростислав Вадимович', N'loginDEmrf2018', N'uEB&n4', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Беспалов ', N'Григорий Христофорович', N'loginDEmri2018', N's*YXSm', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Богданова ', N'Марфа Владимировна', N'loginDEmrj2018', N'blrD&8', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ефимов ', N'Альвиан Серапионович', N'loginDEmty2018', N'J20FCe', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведьев ', N'Василий Варламович', N'loginDEmub2018', N'RDXGd1', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пестов ', N'Роман Михаилович', N'loginDEmvd2018', N'wyLDa{', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Бобылёва ', N'Юлия Егоровна', N'loginDEmvn2018', N'Mrr9e0', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кондратьева ', N'Наталья Юлиановна', N'loginDEmvy2018', N'3Y}DMk', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кондратьев ', N'Бронислав Тихонович', N'loginDEmwq2018', N'YZ{snT', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Нестеров ', N'Альберт Мстиславович', N'loginDEmww2018', N'ukBtoC', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Орехова ', N'Клавдия Альбертовна', N'loginDEmxb2018', N'ZPXcRS', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Быков ', N'Даниил Антонинович', N'loginDEmxi2018', N'uEQkUn', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Наумова ', N'Вера Ивановна', N'loginDEmym2018', N'WhDPfl', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Панов ', N'Пётр Пётрович', N'loginDEmyz2018', N'gKQ4r+', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сергеев ', N'Георгий Кимович', N'loginDEmzj2018', N'crY1JZ', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Брагин ', N'Лукьян Мартынович', N'loginDEnaq2018', N'I8c5EB', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Павлов ', N'Максим Фёдорович', N'loginDEnbi2018', N'Ed*JQP', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Матвиенко ', N'Дамир Богданович', N'loginDEnbu2018', N'86uDLd', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Николаева ', N'Евдокия Пётровна', N'loginDEncq2018', N'GgG3m0', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Орехова ', N'Мария Станиславовна', N'loginDEndc2018', N'r3RSO9', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Поляков ', N'Мэлор Геннадьевич', N'loginDEndh2018', N'JUYAwS', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Евсеева ', N'Ксения Георгьевна', N'loginDEndq2018', N'cv7LdO', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пахомов ', N'Протасий Артёмович', N'loginDEnei2018', N'M2pIA8', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Меркушева ', N'Евдокия Кимовна', N'loginDEngr2018', N'+yxoNp', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Герасимов ', N'Демьян Никитевич', N'loginDEnhf2018', N'PlKjdc', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кудрявцев ', N'Гордей Авксентьевич', N'loginDEnif2018', N'Nhj*t+', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Нестеров ', N'Авдей Митрофанович', N'loginDEnig2018', N'Cm00D0', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Горбунов ', N'Матвей Сергеевич', N'loginDEnjd2018', N'0&3HHn', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лобанова ', N'Галина Демьяновна', N'loginDEnmc2018', N'X40l}h', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гущина ', N'Нонна Ефимовна', N'loginDEnnf2018', N'z|t5P{', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Беспалов ', N'Михаил Фёдорович', N'loginDEnng2018', N'E{1p}t', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Игнатов ', N'Демьян Матвеевич', N'loginDEnnv2018', N'rITdxe', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведева ', N'Ангелина Валентиновна', N'loginDEnoq2018', N'qyKzu6', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Громов ', N'Егор Антонович', N'loginDEnpa2018', N'M*QLjf', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Крылова ', N'Людмила Германовна', N'loginDEnpc2018', N'AozkWP', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Михеев ', N'Ярослав Антонович', N'loginDEnqq2018', N'XKrJOU', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Громова ', N'Фаина Лаврентьевна', N'loginDEnrq2018', N'pn{5RN', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фёдоров ', N'Святослав Григорьевич', N'loginDEnsa2018', N'LdqH+T', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лазарев ', N'Протасий Игоревич', N'loginDEnsr2018', N'VZKTog', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Рожкова ', N'Пелагея Геннадьевна', N'loginDEnsx2018', N'czRSi3', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Некрасова ', N'Ирина Ильяовна', N'loginDEnsz2018', N'WS}BK1', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Смирнова ', N'Мария Иринеевна', N'loginDEntg2018', N'pVmHC0', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кузнецова ', N'Элеонора Матвеевна', N'loginDEnux2018', N'{XMSKj', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Киселёв ', N'Бронислав Арсеньевич', N'loginDEnvw2018', N'blqZ85', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Антонов ', N'Андрей Георгьевич', N'loginDEnxj2018', N'Y+Yif+', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мишин ', N'Михаил Глебович', N'loginDEnxq2018', N'|yxsob', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Борисов ', N'Геннадий Вячеславович', N'loginDEobl2018', N'K+rV}b', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Иванов ', N'Игнатий Авксентьевич', N'loginDEobp2018', N'XNGjJy', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Игнатова ', N'Марфа Артёмовна', N'loginDEoby2018', N'*j704g', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кудрявцев ', N'Дамир Эдуардович', N'loginDEocb2018', N'6oLNd{', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воронов ', N'Олег Яковович', N'loginDEodd2018', N's2|Eb1', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кабанова ', N'Алла Фёдоровна', N'loginDEodw2018', N'AMSLmE', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Якушева ', N'Лукия Васильевна', N'loginDEoez2018', N'j7qgHy', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пономарёв ', N'Ким Семёнович', N'loginDEofx2018', N'dMTmGz', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Крюков ', N'Евсей Семёнович', N'loginDEoio2018', N'wHOAvL', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Игнатьев ', N'Алексей Вадимович', N'loginDEojz2018', N'N50|5T', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Нестеров ', N'Анатолий Донатович', N'loginDEokf2018', N'X3+RZ0', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фролов ', N'Юрий Варламович', N'loginDEole2018', N'p+kvb6', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Егорова ', N'Фёкла Кондратовна', N'loginDEome2018', N'hAOrBa', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Назаров ', N'Иван Мартынович', N'loginDEoni2018', N'phdlXA', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Меркушева ', N'Нинель Матвеевна', N'loginDEonq2018', N'mKIIRQ', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Буров ', N'Серапион Сергеевич', N'loginDEooj2018', N'GPf+Bw', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Блохина ', N'Александра Митрофановна', N'loginDEooq2018', N'pSp9XX', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Боброва ', N'Варвара Евсеевна', N'loginDEoot2018', N'usi{aT', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Веселов ', N'Вячеслав Аркадьевич', N'loginDEopr2018', N'Oklkhh', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сорокин ', N'Сергей Олегович', N'loginDEoqc2018', N'*Cm6gW', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведев ', N'Григорий Агафонович', N'loginDEosl2018', N'O3O}we', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Комиссарова ', N'Варвара Руслановна', N'loginDEota2018', N'xc&O3U', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Родионов ', N'Григорий Антонович', N'loginDEotu2018', N'o5BP5N', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Матвеев ', N'Кондрат Иванович', N'loginDEovk2018', N'JyJM{A', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Вишняков ', N'Сергей Иванович', N'loginDEoxa2018', N'mL+97r', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Игнатьев ', N'Авксентий Германович', N'loginDEoxo2018', N'f}*V{M', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Беспалова ', N'Надежда Владимировна', N'loginDEoyu2018', N'}*E9Se', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Панов ', N'Донат Александрович', N'loginDEoyy2018', N'4a0mnh', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Архипов ', N'Агафон Игоревич', N'loginDEozn2018', N'nndP3Q', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Волков ', N'Ириней Ефимович', N'loginDEpav2018', N'7eur3a', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пахомова ', N'Антонина Еремеевна', N'loginDEpba2018', N'&HmMXH', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сысоев ', N'Виктор Варламович', N'loginDEpbt2018', N'}}vuSH', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Маслов ', N'Дмитрий Иванович', N'loginDEpdp2018', N'8NvRfC', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Федосеева ', N'Иванна Михаиловна', N'loginDEpdu2018', N'+g13tn', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Крылов ', N'Авдей Анатольевич', N'loginDEpdv2018', N'r1HuS2', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кудрявцева ', N'Кира Ефимовна', N'loginDEpdz2018', N'+XZKSw', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Карпов ', N'Евгений Лукьевич', N'loginDEpfr2018', N'mW1Q36', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Борисова ', N'Синклитикия Григорьевна', N'loginDEpfw2018', N'3kY3&K', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шубина ', N'Маргарита Анатольевна', N'loginDEpgh2018', N'YV2lvh', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мишин ', N'Эдуард Фёдорович', N'loginDEpgp2018', N'q|Ov9c', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Бурова ', N'Екатерина Ефимовна', N'loginDEpgx2018', N'c**OJQ', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кошелев ', N'Ростислав Куприянович', N'loginDEphn2018', N'F}jGsJ', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Вишнякова ', N'Людмила Евгеньевна', N'loginDEpib2018', N'VeJY8o', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Брагин ', N'Куприян Митрофанович', N'loginDEpii2018', N'Ob}RZB', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Селиверстова ', N'Анжела Алексеевна', N'loginDEpiz2018', N'JTXLk6', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Никонов ', N'Виктор Русланович', N'loginDEpjw2018', N'T*wJeK', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Соловьёва ', N'Любовь Онисимовна', N'loginDEpjz2018', N'V8ArPO', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Волкова ', N'Алла Лукьевна', N'loginDEple2018', N'WlW+l8', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Блинова ', N'Марфа Николаевна', N'loginDEplk2018', N'xQxtYm', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Устинова ', N'Милица Георгьевна', N'loginDEpll2018', N'J9pnJW', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шилова ', N'Татьяна Георгьевна', N'loginDEpmj2018', N'0{6txi', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Исакова ', N'София Юрьевна', N'loginDEpmm2018', N'wRERed', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Беляков ', N'Владислав Богданович', N'loginDEpmv2018', N'kjE3El', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Савельев ', N'Арсений Авксентьевич', N'loginDEpnb2018', N'{ADBdc', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кулаков ', N'Федот Георгьевич', N'loginDEpnl2018', N'jinnCV', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Иванов ', N'Антон Степанович', N'loginDEpnq2018', N'D69F&h', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Буров ', N'Федот Егорович', N'loginDEpou2018', N'gX3f5Z', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ефремов ', N'Сергей Пантелеймонович', N'loginDEppn2018', N'6}i+FD', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Миронова ', N'Валерия Владиславовна', N'loginDEppq2018', N'Wgi6Ff', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Филиппов ', N'Борис Геннадьевич', N'loginDEppv2018', N'yg1DH+', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ситникова ', N'Ираида Андреевна', N'loginDEpqz2018', N'F0Bp7F', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шубин ', N'Тихон Лаврентьевич', N'loginDEpri2018', N'RI2*T9', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ларионова ', N'Антонина Игнатьевна', N'loginDEpsb2018', N'{O|F*N', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Горшкова ', N'Агафья Онисимовна', N'loginDEpst2018', N'0CyGnX', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Горбачёв ', N'Пантелеймон Германович', N'loginDEpsu2018', N'Vx9cQ{', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Иван ', N'Викторовна', N'loginDEptn2018', N'NXXNVO', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Вишнякова ', N'Прасковья Всеволодовна', N'loginDEpty2018', N'm{Li1+', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Капустин ', N'Федот Русланович', N'loginDEpul2018', N'1y2EaM', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мартынов ', N'Олег Олегович', N'loginDEpux2018', N'NrtA{k', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Молчанов ', N'Лукий Митрофанович', N'loginDEpvn2018', N'v18sXi', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дмитриев ', N'Григорий Мэлорович', N'loginDEpwa2018', N'yn5MLQ', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лаврентьева ', N'Валентина Васильевна', N'loginDEpwm2018', N'be7AT0', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Иванов ', N'Вячеслав Парфеньевич', N'loginDEpxb2018', N'wso}8C', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Стрелкова ', N'Фаина Федосеевна', N'loginDEpxc2018', N'G+nFsv', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Корнилова ', N'Марфа Макаровна', N'loginDEpxi2018', N'+5X&hy', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воронов ', N'Донат Никитевич', N'loginDEpxl2018', N'P6h4Jq', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Горбунов ', N'Григорий Денисович', N'loginDEpxx2018', N'Xv{vjN', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Яковлев ', N'Игнатий Даниилович', N'loginDEpyt2018', N'VAwNEk', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Уваров ', N'Макар Юрьевич', N'loginDEpzs2018', N'AVm+Oj', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Хохлов ', N'Семён Авдеевич', N'loginDEqbh2018', N'GZq4nd', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кононов ', N'Авдей Протасьевич', N'loginDEqca2018', N'hLEkgV', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Исаева ', N'Елена Валерьяновна', N'loginDEqcb2018', N'oMOLh+', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Селезнёв ', N'Александр Никитевич', N'loginDEqda2018', N'|h+r}I', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Баранов ', N'Андрей Евсеевич', N'loginDEqdb2018', N'&S*k|o', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лукин ', N'Пётр Кондратович', N'loginDEqga2018', N'P+4p4a', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Евдокимова ', N'Людмила Лаврентьевна', N'loginDEqhl2018', N'FQQRMz', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Большакова ', N'Нинель Протасьевна', N'loginDEqiv2018', N'h+N2uW', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Аксёнова ', N'Нинель Кондратовна', N'loginDEqjm2018', N'thu8kK', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фадеев ', N'Виталий Анатольевич', N'loginDEqkn2018', N'KdU6uK', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Орлов ', N'Виктор Павлович', N'loginDEqms2018', N'|uq7Lb', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Русаков ', N'Ярослав Агафонович', N'loginDEqoa2018', N'NUeFuT', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Большаков ', N'Яков Протасьевич', N'loginDEqoh2018', N'+xRJ|2', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сысоев ', N'Даниил Даниилович', N'loginDEqok2018', N'kZ6|yS', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Герасимов ', N'Мстислав Дамирович', N'loginDEqon2018', N'YeFbh6', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Стрелков ', N'Максим Гордеевич', N'loginDEqov2018', N'AIINBG', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ермаков ', N'Авдей Валентинович', N'loginDEqph2018', N'8OJ1yJ', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сафонов ', N'Семён Лаврентьевич', N'loginDEqpk2018', N'Tnh3DJ', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Князев ', N'Егор Донатович', N'loginDEqql2018', N'QHE5zz', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Костина ', N'Юлия Дмитрьевна', N'loginDEqqw2018', N'qlJ6vk', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Осипов ', N'Евгений Иванович', N'loginDEqrd2018', N'sApUbt', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Галкина ', N'Олимпиада Владленовна', N'loginDEqrf2018', N'mI8n58', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Степанова ', N'Любовь Мэлсовна', N'loginDEqrj2018', N'PC2nrX', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пестов ', N'Богдан Германнович', N'loginDEqsc2018', N'UU|FkZ', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дорофеева ', N'Кира Демьяновна', N'loginDEqte2018', N'dC8bDI', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Захаров ', N'Артём Вячеславович', N'loginDEqtm2018', N'fsKT+2', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ситников ', N'Игорь Борисович', N'loginDEqup2018', N'95AU|R', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Павлов ', N'Константин Гордеевич', N'loginDEquw2018', N'65j6kZ', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Савин ', N'Донат Ярославович', N'loginDEqwd2018', N'Ix4V{i', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Артемьева ', N'Вероника Улебовна', N'loginDEqwf2018', N'YD3ird', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Щербакова ', N'Октябрина Евгеньевна', N'loginDEqwh2018', N'yBJ1BR', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пестов ', N'Николай Константинович', N'loginDEqxo2018', N'8iqEG*', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Самсонов ', N'Альвиан Игнатьевич', N'loginDEqzo2018', N'Gy3lzx', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Моисеев ', N'Лукьян Вадимович', N'loginDErbm2018', N'D6SSd+', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мишина ', N'Глафира Вадимовна', N'loginDErbv2018', N'7NrYfL', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Горбунова ', N'Нинель Сергеевна', N'loginDErch2018', N'|&DFy+', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Семёнов ', N'Герман Дмитрьевич', N'loginDErdg2018', N'ni0ue0', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лихачёв ', N'Онисим Гордеевич', N'loginDErfg2018', N'5ovb1N', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Туров ', N'Лукий Альбертович', N'loginDErgc2018', N'Hr9YpQ', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Степанова ', N'Любовь Лукьевна', N'loginDErgi2018', N'ROPHET', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Степанов ', N'Григорий Матвеевич', N'loginDErhl2018', N'U}rb9j', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дроздов ', N'Владислав Эдуардович', N'loginDErhx2018', N'iCAe1v', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кулагин ', N'Мстислав Пётрович', N'loginDErhy2018', N'yQl65Q', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гришина ', N'Глафира Мэлсовна', N'loginDErid2018', N'vMG+ko', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кириллов ', N'Игнатий Ростиславович', N'loginDErip2018', N're53rs', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Тетерина ', N'Феврония Эдуардовна', N'loginDEriv2018', N'GJ2mHL', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шашков ', N'Филат Кимович', N'loginDEriw2018', N'W39VRH', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Русаков ', N'Всеволод Игнатьевич', N'loginDErjn2018', N'5FMXpr', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Архипов ', N'Варлам Мэлорович', N'loginDErks2018', N'LQNSjo', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Смирнов ', N'Мэлор Кондратович', N'loginDErmf2018', N'U4jeNa', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Поляков ', N'Николай Антонович', N'loginDErmk2018', N'D3GuIv', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ершов ', N'Виктор Яковович', N'loginDErns2018', N'tz2wx5', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Жданов ', N'Степан Аристархович', N'loginDErnv2018', N'gJ1NYR', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Соколова ', N'Марфа Всеволодовна', N'loginDErog2018', N'&W4Wtq', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Смирнов ', N'Евсей Сергеевич', N'loginDEron2018', N'ywlASa', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пестова ', N'Ия Святославовна', N'loginDErot2018', N'I+0E2j', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кулакова ', N'Оксана Ярославовна', N'loginDErqv2018', N'2LK9Pw', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кудрявцева ', N'Жанна Демьяновна', N'loginDErsy2018', N'{Aa6nS', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Соловьёва ', N'Полина Игоревна', N'loginDErtg2018', N'bg7NzS', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пахомов ', N'Дмитрий Юлианович', N'loginDEruq2018', N'mXdZTI', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Устинова ', N'Ираида Мэлоровна', N'loginDErvb2018', N'ceAf&R', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Колесников ', N'Пантелеймон Якунович', N'loginDErvi2018', N'|9LJNA', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Васильева ', N'Татьяна Пётровна', N'loginDErvn2018', N'6G+AZH', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Жданова ', N'Ангелина Якуновна', N'loginDErvp2018', N'iIOsgI', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Туров ', N'Христофор Филатович', N'loginDErvs2018', N'V7Rly7', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сысоев ', N'Демьян Антонинович', N'loginDErwb2018', N'v5RpBS', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Карпов ', N'Дмитрий Владимирович', N'loginDErwk2018', N'|nZOKu', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Нестерова ', N'Нина Юрьевна', N'loginDErxe2018', N'0egZd8', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Борисов ', N'Герман Дамирович', N'loginDErxm2018', N'8EavEy', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гурьев ', N'Матвей Артёмович', N'loginDEryt2018', N'XcFoH*', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Савельева ', N'Прасковья Георгьевна', N'loginDErzp2018', N'W6rx|w', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Королёв ', N'Якун Степанович', N'loginDEsan2018', N'q7Qx66', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Яковлев ', N'Ефим Ильяович', N'loginDEsar2018', N'2M2IQH', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воронова ', N'Антонина Всеволодовна', N'loginDEscf2018', N'O|o5A+', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Тетерин ', N'Ириней Викторович', N'loginDEsct2018', N'1j*J8T', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Жуков ', N'Максим Николаевич', N'loginDEsds2018', N'SxMndn', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Наумова ', N'Лариса Антоновна', N'loginDEsdu2018', N'}MbQZe', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ковалёв ', N'Павел Денисович', N'loginDEsep2018', N'sG40du', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Белозёрова ', N'Юлия Ростиславовна', N'loginDEset2018', N'CTN+IM', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Константинова ', N'Вероника Агафоновна', N'loginDEsgg2018', N'qhgYnW', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кузьмин ', N'Евсей Андреевич', N'loginDEshj2018', N'+XW3Bk', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведева ', N'Мария Антониновна', N'loginDEsib2018', N'pM3n0J', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Савельева ', N'Феврония Фёдоровна', N'loginDEsjj2018', N'wuVex4', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кондратьев ', N'Альвиан Протасьевич', N'loginDEskh2018', N'X{x9ae', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Петухова ', N'Василиса Еремеевна', N'loginDEsku2018', N'fUldqr', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Петрова ', N'Агафья Константиновна', N'loginDEsld2018', N's1Ndyp', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Никитина ', N'Татьяна Агафоновна', N'loginDEslj2018', N'YP*v6E', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Абрамов ', N'Игорь Семёнович', N'loginDEsmd2018', N'ZWSZHe', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Третьяков ', N'Фёдор Вадимович', N'loginDEsmf2018', N'{{O2QG', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Красильников ', N'Тихон Богданович', N'loginDEsmg2018', N'ApH1By', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Бобылёва ', N'Дарья Якуновна', N'loginDEsmq2018', N'ATVmM7', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Бобров ', N'Агафон Владимирович', N'loginDEsnd2018', N'lLHqZf', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зуев ', N'Эдуард Пантелеймонович', N'loginDEsnh2018', N'+axm5b', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Якушева ', N'Ольга Игнатьевна', N'loginDEsnk2018', N'lkR1ZZ', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Романова ', N'Марина Лаврентьевна', N'loginDEsnq2018', N'hrD}}g', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведева ', N'Валентина Никитевна', N'loginDEsrr2018', N'0fO0YH', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зимин ', N'Василий Русланович', N'loginDEssm2018', N'oBrTGr', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Владимирова ', N'Иванна Павловна', N'loginDEsso2018', N'+LHGST', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Турова ', N'Василиса Алексеевна', N'loginDEsty2018', N'Caam+a', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Одинцов ', N'Даниил Мстиславович', N'loginDEsvp2018', N'4kES&p', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лыткина ', N'Алевтина Романовна', N'loginDEsvs2018', N'tLgPnC', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Рогов ', N'Никита Вячеславович', N'loginDEswq2018', N'Rm&++t', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Герасимов ', N'Донат Ефимович', N'loginDEsyc2018', N'IX+1o1', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Жуков ', N'Юлиан Валерьянович', N'loginDEsyh2018', N'&4jYGs', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Логинов ', N'Егор Лаврентьевич', N'loginDEsyo2018', N'F743ca', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Соловьёв ', N'Андрей Александрович', N'loginDEsyq2018', N'2QbpBN', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гуляева ', N'Лидия Ростиславовна', N'loginDEsze2018', N'S*{8Ml', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Горбачёв ', N'Арсений Григорьевич', N'loginDEszg2018', N'NWkAVP', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Журавлёва ', N'Пелагея Витальевна', N'loginDEszj2018', N'B6&cJf', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Давыдов ', N'Яков Антонович', N'loginDEszw2018', N'EGU{YE', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зайцев ', N'Аристарх Егорович', N'loginDEszy2018', N'nq+dxM', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Панфилов ', N'Кондрат Антонинович', N'loginDEtaa2018', N'R8oTaQ', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Аксёнова ', N'Маргарита Артёмовна', N'loginDEtad2018', N'cp1gN+', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кулаков ', N'Протасий Глебович', N'loginDEtbf2018', N'}g|DE+', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Игнатьев ', N'Борис Владиславович', N'loginDEtbx2018', N'CQplH|', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Блохин ', N'Богдан Улебович', N'loginDEtby2018', N'36YniT', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Семёнова ', N'Жанна Онисимовна', N'loginDEtch2018', N'TsU4a5', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кулаков ', N'Юрий Владленович', N'loginDEtco2018', N'tTKDJB', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лапина ', N'Синклитикия Аристарховна', N'loginDEteq2018', N'YI+ss5', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Власов ', N'Вадим Васильевич', N'loginDEtfj2018', N'{{ksPn', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Поляков ', N'Анатолий Игоревич', N'loginDEtfz2018', N'uQY0ZQ', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сазонов ', N'Протасий Игоревич', N'loginDEthb2018', N'Lt7|ok', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Самсонов ', N'Агафон Максимович', N'loginDEthu2018', N'|0xWzV', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гришин ', N'Донат Константинович', N'loginDEthx2018', N'+t}zCu', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Суворов ', N'Дамир Яковович', N'loginDEtic2018', N'gIXztH', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Костин ', N'Константин Арсеньевич', N'loginDEtik2018', N'a&+vrv', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Тетерин ', N'Варлам Кимович', N'loginDEtix2018', N'Y5zv9+', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Журавлёва ', N'Вера Арсеньевна', N'loginDEtld2018', N'c+CECK', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Андреев ', N'Ростислав Федосеевич', N'loginDEtlo2018', N'58Jxrg', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Марков ', N'Вячеслав Владимирович', N'loginDEtmh2018', N'ZQ2*|q', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Цветкова ', N'Элеонора Аристарховна', N'loginDEtmn2018', N'UObB}N', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мамонтова ', N'Ия Христофоровна', N'loginDEtms2018', N'70Z&Zy', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Прохоров ', N'Олег Брониславович', N'loginDEtmt2018', N'}FOh*}', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Иванова ', N'Жанна Матвеевна', N'loginDEtog2018', N'TE757+', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Николаева ', N'Ирина Федотовна', N'loginDEtol2018', N'&ksGM5', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Соколов ', N'Василий Михаилович', N'loginDEtps2018', N'G&lq7J', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Носов ', N'Альберт Ярославович', N'loginDEtqb2018', N'Y+Dq4P', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фадеев ', N'Христофор Вячеславович', N'loginDEtqn2018', N'IdjLc2', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Филиппова ', N'Фаина Фёдоровна', N'loginDEtqw2018', N'UJW+*N', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Моисеев ', N'Фёдор Мэлсович', N'loginDEtri2018', N'0VC{f|', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Горбунов ', N'Вячеслав Станиславович', N'loginDEtto2018', N'qXYDuu', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Большаков ', N'Владимир Филатович', N'loginDEttt2018', N'1YOnW3', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Казаков ', N'Онисим Анатольевич', N'loginDEtug2018', N'b{7&Zf', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Трофимов ', N'Кондрат Игоревич', N'loginDEtuk2018', N'6aDAzV', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Селиверстова ', N'Дарья Георгьевна', N'loginDEtun2018', N'}TKwPx', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ефимов ', N'Руслан Улебович', N'loginDEtur2018', N'+yv5+x', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зыков ', N'Иван Варламович', N'loginDEtuz2018', N'Yln7JW', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Назаров ', N'Ким Кимович', N'loginDEtwc2018', N'oqx3Pv', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пономарёва ', N'Вера Руслановна', N'loginDEtww2018', N'4icZTg', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Русаков ', N'Василий Куприянович', N'loginDEtye2018', N'MEJjQt', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Горшкова ', N'Людмила Филатовна', N'loginDEtyl2018', N'C4f}5e', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Стрелкова ', N'Лариса Варламовна', N'loginDEtyn2018', N'8qte+l', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Иван ', N'Мэлоровна', N'loginDEtza2018', N'A7Qldh', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шестакова ', N'Евдокия Авксентьевна', N'loginDEtzs2018', N'D9G6j1', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Голубев ', N'Семён Олегович', N'loginDEuau2018', N'FNnhJ1', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Андреев ', N'Лаврентий Созонович', N'loginDEubl2018', N'R&o+7+', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведева ', N'Пелагея Мартыновна', N'loginDEubq2018', N'{jzW2v', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Баранова ', N'Галина Еремеевна', N'loginDEudz2018', N'Xcjvmi', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Константинов ', N'Всеволод Мэлсович', N'loginDEueq2018', N'GqAUZ6', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Абрамова ', N'Милица Аристарховна', N'loginDEufs2018', N'7CLi&1', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лукин ', N'Георгий Альбертович', N'loginDEulo2018', N'+d0+iV', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мельникова ', N'Таисия Лукьяновна', N'loginDEunc2018', N'M*DY73', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Капустина ', N'Любовь Викторовна', N'loginDEunh2018', N'nhp6F0', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Тимофеев ', N'Мартын Еремеевич', N'loginDEupi2018', N'WNX1|z', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Наумов ', N'Ефим Онисимович', N'loginDEupl2018', N'KE6*k|', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Иван ', N'Фёдоровна', N'loginDEupo2018', N'Az*YxR', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Жуков ', N'Игнатий Семёнович', N'loginDEuqk2018', N'3vE*Fb', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Киселёв ', N'Валерьян Евгеньевич', N'loginDEurj2018', N'9ImBsL', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Никонов ', N'Мэлс Лукьевич', N'loginDEuro2018', N'a1MIcO', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ефимова ', N'Александра Парфеньевна', N'loginDEusz2018', N'0||9by', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Макаров ', N'Максим Ильяович', N'loginDEutd2018', N'GbcJvC', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Семёнова ', N'Марина Юрьевна', N'loginDEuug2018', N'aHl3qb', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Александров ', N'Владимир Дамирович', N'loginDEuuo2018', N'42XmH1', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мамонтова ', N'Элеонора Максимовна', N'loginDEuup2018', N'yJ}w5s', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Агафонов ', N'Егор Еремеевич', N'loginDEuvg2018', N'}rhenI', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ефимова ', N'Дарья Всеволодовна', N'loginDEuvi2018', N'U0W&Z&', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Вишняков ', N'Никита Семёнович', N'loginDEuvr2018', N'wu8lYK', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Калашников ', N'Бронислав Арсеньевич', N'loginDEuwn2018', N'wPbrBV', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Копылова ', N'Антонина Макаровна', N'loginDEuwy2018', N'm0S8Hy', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Васильева ', N'Маргарита Валерьяновна', N'loginDEuxd2018', N'*PI3KN', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Полякова ', N'Анна Денисовна', N'loginDEuxg2018', N'K8jui7', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Белоусова ', N'Лариса Валерьяновна', N'loginDEuxs2018', N'5FVwny', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Никонов ', N'Игорь Мстиславович', N'loginDEuyn2018', N'kSOtL9', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Носов ', N'Валерьян Дмитрьевич', N'loginDEuyv2018', N'8hhrZ}', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Белов ', N'Геласий Серапионович', N'loginDEuzv2018', N'|6J|mm', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Суханов ', N'Лукий Ростиславович', N'loginDEvai2018', N'7dX5WR', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Громова ', N'Ульяна Егоровна', N'loginDEvbv2018', N'4X6wL5', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Никонов ', N'Богдан Юлианович', N'loginDEvdj2018', N'5Eq6d|', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Михеева ', N'Евдокия Якововна', N'loginDEvdy2018', N'|9AaAE', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Журавлёва ', N'Елизавета Артёмовна', N'loginDEvdz2018', N'OhnHez', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Калинина ', N'Феврония Брониславовна', N'loginDEvel2018', N'dA5Kk+', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Блинов ', N'Мэлор Ильяович', N'loginDEvem2018', N'HiD*0c', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кудрявцев ', N'Евгений Александрович', N'loginDEvgu2018', N'm8VeJw', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведьев ', N'Николай Мстиславович', N'loginDEvhm2018', N'DT}WrU', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воронов ', N'Митрофан Антонович', N'loginDEvht2018', N'zMyS8Z', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Меркушев ', N'Альберт Яковович', N'loginDEvij2018', N'7hn2va', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Савельев ', N'Егор Сергеевич', N'loginDEvje2018', N'gCU1fd', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гордеев ', N'Владлен Ефимович', N'loginDEvke2018', N'WQLXSl', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сысоев ', N'Анатолий Арсеньевич', N'loginDEvkg2018', N'tzCLIX', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Козлов ', N'Геласий Христофорович', N'loginDEvlf2018', N'O5mXc2', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пономарёв ', N'Ярослав Лаврентьевич', N'loginDEvln2018', N'keXJ3o', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Евдокимов ', N'Геннадий Макарович', N'loginDEvmb2018', N'TY5Gd5', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ермакова ', N'Лидия Григорьевна', N'loginDEvmr2018', N't6aouh', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ситникова ', N'София Лукьевна', N'loginDEvni2018', N'e4pVIv', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Александрова ', N'Марфа Протасьевна', N'loginDEvoa2018', N'RdGikC', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Иванова ', N'Зинаида Валерьевна', N'loginDEvod2018', N'0EW93v', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дорофеев ', N'Александр Авдеевич', N'loginDEvoe2018', N'zC6|UG', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Блинова ', N'Ангелина Владленовна', N'loginDEvop2018', N'pBP8rO', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Матвиенко ', N'Яков Брониславович', N'loginDEvpz2018', N'mS0UxK', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Журавлёв ', N'Агафон Мэлсович', N'loginDEvqe2018', N'wJzfcY', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Соболев ', N'Фрол Германович', N'loginDEvqh2018', N'oQmpma', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Беспалов ', N'Демьян Витальевич', N'loginDEvqn2018', N'LPa|e3', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Калашникова ', N'Венера Якуновна', N'loginDEvrd2018', N'S7N9hz', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Тарасова ', N'Людмила Макаровна', N'loginDEvrn2018', N'AfSRZI', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Савельева ', N'Евфросиния Арсеньевна', N'loginDEvtg2018', N'ETMNzL', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гурьев ', N'Ириней Игнатьевич', N'loginDEvug2018', N'lEa{Cn', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведьев ', N'Федосей Агафонович', N'loginDEvut2018', N'Y7Mm*Y', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ермакова ', N'Александра Куприяновна', N'loginDEvva2018', N'G{q*LD', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дроздов ', N'Куприян Александрович', N'loginDEvvs2018', N'oBv+5G', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Наумов ', N'Мстислав Павлович', N'loginDEvxf2018', N'yS2WHF', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведева ', N'Ирина Валентиновна', N'loginDEvys2018', N'CxXb+r', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воронцов ', N'Никита Лаврентьевич', N'loginDEvzo2018', N'VO7mOE', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Щукин ', N'Федосей Павлович', N'loginDEvzy2018', N'T5Qaaa', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Бурова ', N'Наина Брониславовна', N'loginDEwap2018', N'4hny7k', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Комаров ', N'Альвиан Юлианович', N'loginDEwbe2018', N'C&n1bj', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гущина ', N'Анжела Аркадьевна', N'loginDEwbk2018', N'iJMh5B', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Белоусов ', N'Лукьян Геласьевич', N'loginDEwbn2018', N'96TfQ|', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Тетерин ', N'Христофор Степанович', N'loginDEwcj2018', N'AMXhqA', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Рогов ', N'Лукьян Онисимович', N'loginDEwdj2018', N'xj+&hg', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Никонов ', N'Роман Геласьевич', N'loginDEwdm2018', N'&PynqU', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шаров ', N'Григорий Созонович', N'loginDEwel2018', N'UU5FTi', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Агафонов ', N'Агафон Максимович', N'loginDEwfv2018', N'ZSUiGT', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Игнатьева ', N'Евгения Валентиновна', N'loginDEwgk2018', N'&mfI9l', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лыткин ', N'Сергей Агафонович', N'loginDEwia2018', N'qVG5zl', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Костин ', N'Андрей Иринеевич', N'loginDEwik2018', N'DS{WpL', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сергеев ', N'Еремей Серапионович', N'loginDEwim2018', N'Sbe&j}', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Юдин ', N'Герман Кондратович', N'loginDEwjg2018', N'9UfqWQ', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ершов ', N'Максим Геласьевич', N'loginDEwjm2018', N'k}DJKo', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воробьёв ', N'Владлен Фролович', N'loginDEwjo2018', N'EQaD|d', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Новикова ', N'Лукия Ярославовна', N'loginDEwjv2018', N'ZfseKA', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ларионов ', N'Мартын Геласьевич', N'loginDEwka2018', N'y}vBjg', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Игнатова ', N'Нинель Лаврентьевна', N'loginDEwkl2018', N'415qNv', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ширяева ', N'Наина Васильевна', N'loginDEwkn2018', N'2*lKn+', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Смирнов ', N'Сергей Яковович', N'loginDEwld2018', N'y9HStF', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Тетерин ', N'Всеволод Ростиславович', N'loginDEwlw2018', N'9gIoYv', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Тимофеев ', N'Федот Германнович', N'loginDEwmh2018', N'YTtWqJ', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мухин ', N'Донат Ростиславович', N'loginDEwmq2018', N'ds4KAb', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Калашникова ', N'Александра Владимировна', N'loginDEwoe2018', N'yOtw2F', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Большаков ', N'Лаврентий Валерьевич', N'loginDEwom2018', N'fU+Q0O', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Уваров ', N'Федосей Донатович', N'loginDEwoq2018', N'0RQ1nZ', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гурьев ', N'Пётр Федотович', N'loginDEwoz2018', N'vAuXEx', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Юдин ', N'Валентин Геласьевич', N'loginDEwpm2018', N'zqnoi|', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Анисимова ', N'Алина Протасьевна', N'loginDEwpn2018', N'9BBkXP', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Игнатьев ', N'Федосей Парфеньевич', N'loginDEwpz2018', N'eMn{Kl', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лыткин ', N'Ким Алексеевич', N'loginDEwqc2018', N'vRtAP*', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Брагина ', N'Анастасия Кимовна', N'loginDEwqd2018', N'MF2TkC', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гаврилова ', N'Нинель Денисовна', N'loginDEwrc2018', N'SktJa|', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мельникова ', N'Нонна Альвиановна', N'loginDEwrl2018', N'CeSxSp', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зайцев ', N'Мэлс Русланович', N'loginDEwsi2018', N'8|JAAt', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Суворов ', N'Владислав Иринеевич', N'loginDEwtu2018', N'kVUA|*', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Новиков ', N'Николай Мэлсович', N'loginDEwtx2018', N'Ig3rQJ', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пахомова ', N'Зинаида Витальевна', N'loginDEwtz2018', N'&GxSST', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Макарова ', N'Маргарита Всеволодовна', N'loginDEwua2018', N'*tyvel', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Третьяков ', N'Валерьян Иринеевич', N'loginDEwul2018', N'uK&3Zr', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Иван ', N'Васильевна', N'loginDEwun2018', N'yy+Qhe', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зайцева ', N'Октябрина Станиславовна', N'loginDEwvg2018', N'XcZ4xF', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Якушева ', N'Анастасия Якуновна', N'loginDEwvl2018', N'&9Vpqk', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Евдокимов ', N'Алексей Антонович', N'loginDEwxd2018', N'Smjq0v', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Рожков ', N'Глеб Гордеевич', N'loginDEwxv2018', N'qK6y{W', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведьев ', N'Фёдор Мэлсович', N'loginDEwyi2018', N'9eskgK', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Блинова ', N'Прасковья Агафоновна', N'loginDExbf2018', N'Vl9R|I', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дорофеева ', N'Светлана Брониславовна', N'loginDExbs2018', N'I6DDeV', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Субботин ', N'Максим Георгьевич', N'loginDExbv2018', N'71t|e{', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Нестеров ', N'Агафон Георгьевич', N'loginDExcd2018', N'SZXZNL', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Носкова ', N'Нинель Иринеевна', N'loginDExdd2018', N'rp22fO', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Самойлов ', N'Агафон Юлианович', N'loginDExdk2018', N'qZhYRF', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Силин ', N'Игорь Авдеевич', N'loginDExdm2018', N'DH68L9', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Терентьева ', N'Анна Дамировна', N'loginDExeb2018', N'Oa}fkk', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Селезнёва ', N'Татьяна Антониновна', N'loginDExet2018', N'S*onWu', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воробьёв ', N'Мартын Игоревич', N'loginDExeu2018', N'dObOMp', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Пономарёв ', N'Максим Альвианович', N'loginDExex2018', N'rnh36{', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Алексеев ', N'Виктор Васильевич', N'loginDExfm2018', N'mh6|JS', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Козлова ', N'Вера Георгьевна', N'loginDExhd2018', N'8sE1Q5', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ефремов ', N'Дамир Яковович', N'loginDExhi2018', N'l6eiog', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Устинова ', N'Зоя Созоновна', N'loginDExhs2018', N'g+wDAX', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Соболев ', N'Геннадий Якунович', N'loginDExic2018', N'bp&g7f', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фомин ', N'Владимир Игнатьевич', N'loginDExid2018', N'FywuoL', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Русаков ', N'Борис Христофорович', N'loginDExil2018', N'w+++Ht', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Васильев ', N'Серапион Макарович', N'loginDExix2018', N'hzxtnn', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Смирнова ', N'Елена Якововна', N'loginDExjm2018', N'0PYqey', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Александров ', N'Евсей Тихонович', N'loginDExkt2018', N'2EyCBy', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гурьева ', N'Кира Варламовна', N'loginDExkx2018', N'8uXYWo', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Комиссаров ', N'Семён Павлович', N'loginDExky2018', N'Kt9EAS', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Жданов ', N'Сергей Гордеевич', N'loginDExld2018', N'a8Vjkx', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Денисов ', N'Митрофан Егорович', N'loginDExnj2018', N'IJDdP0', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Щербаков ', N'Георгий Богданович', N'loginDExrf2018', N'mhpRIT', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кириллов ', N'Серапион Всеволодович', N'loginDExrj2018', N'WJrQlq', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Галкин ', N'Георгий Фёдорович', N'loginDExrk2018', N'8&vYwK', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Абрамова ', N'Оксана Ростиславовна', N'loginDExrn2018', N'eaI8ng', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Одинцов ', N'Никита Игоревич', N'loginDExsn2018', N'lY3vnH', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ершов ', N'Сергей Геласьевич', N'loginDExss2018', N'AiQQ|q', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Рыбакова ', N'Евдокия Анатольевна', N'loginDExsu2018', N'*2RMsp', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Евсеева ', N'Тамара Эдуардовна', N'loginDExvb2018', N'QC7KQ0', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сазонова ', N'Оксана Лаврентьевна', N'loginDExvq2018', N'hX0wJz', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Суханова ', N'Евгения Улебовна', N'loginDExvv2018', N'R1zh}|', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фёдоров ', N'Аркадий Николаевич', N'loginDExxh2018', N'UgbzHK', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Колобова ', N'Елена Евгеньевна', N'loginDExxv2018', N'+daE|T', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Горбунов ', N'Павел Леонидович', N'loginDExyh2018', N'CRk03h', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зыков ', N'Варлам Протасьевич', N'loginDExyn2018', N'IFFTHr', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведьева ', N'Таисия Тихоновна', N'loginDExyu2018', N'7Fg}9p', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Хохлова ', N'Мария Тихоновна', N'loginDExyv2018', N'wSMsO2', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Блохина ', N'Акулина Якуновна', N'loginDExzf2018', N'6cmjFd', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Белоусов ', N'Антонин Яковович', N'loginDExzi2018', N'{+1T1M', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Блинов ', N'Мэлор Дамирович', N'loginDExzu2018', N'Sch+GG', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Уваров ', N'Руслан Иринеевич', N'loginDEyaa2018', N'8}w*yf', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Тарасова ', N'Зоя Якуновна', N'loginDEyan2018', N'uf6Krf', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шестаков ', N'Антон Константинович', N'loginDEyat2018', N'ELSTyH', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Григорьев ', N'Митрофан Парфеньевич', N'loginDEybt2018', N'e7uyxU', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Наумова ', N'Пелагея Лукьяновна', N'loginDEybw2018', N'd+t136', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Громова ', N'Маргарита Митрофановна', N'loginDEycc2018', N'YeTO&L', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Беляев ', N'Донат Агафонович', N'loginDEyct2018', N'uD+|Ud', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Миронова ', N'Галина Улебовна', N'loginDEydn2018', N'34I}X9', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Харитонов ', N'Ириней Авксентьевич', N'loginDEyeg2018', N'CFEe+Z', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Носкова ', N'Пелагея Валерьевна', N'loginDEyek2018', N'KY2BL4', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Тимофеева ', N'Ксения Валерьевна', N'loginDEyfd2018', N'8aKdb0', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Иванов ', N'Яков Мэлорович', N'loginDEyfe2018', N'4Bbzpa', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дорофеева ', N'Надежда Богдановна', N'loginDEyff2018', N'LB&hR+', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зыков ', N'Вячеслав Антонович', N'loginDEygj2018', N'7b6PUb', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сазонов ', N'Мэлор Созонович', N'loginDEygt2018', N'zDTc9&', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кузьмин ', N'Василий Валерьевич', N'loginDEyhv2018', N'zNZYk{', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ефремова ', N'Варвара Иринеевна', N'loginDEyin2018', N'eikez3', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Бобылёв ', N'Якун Альбертович', N'loginDEyis2018', N'qcBZOv', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шилова ', N'Кира Егоровна', N'loginDEyiw2018', N'cnj3QR', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Артемьева ', N'Лариса Макаровна', N'loginDEyix2018', N'6zbXg*', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шаров ', N'Герман Митрофанович', N'loginDEyje2018', N'zxEUoz', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мартынова ', N'Клавдия Лукьяновна', N'loginDEyjy2018', N'20uyVz', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Александрова ', N'Нинель Мстиславовна', N'loginDEykk2018', N'EttWT{', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Казакова ', N'Фаина Антониновна', N'loginDEykq2018', N'Veq1N7', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Щукина ', N'Надежда Германновна', N'loginDEykt2018', N'XQlo|S', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Рожков ', N'Тихон Владиславович', N'loginDEymi2018', N'nR0+pI', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зимина ', N'Ольга Аркадьевна', N'loginDEyoo2018', N'UG1BjP', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Медведева ', N'Лариса Ростиславовна', N'loginDEypc2018', N'vtxvjy', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Горшкова ', N'Евгения Васильевна', N'loginDEypj2018', N'2*3jan', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Зайцев ', N'Макар Владленович', N'loginDEyqb2018', N'xLmuQq', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Матвеев ', N'Илья Федосеевич', N'loginDEysy2018', N'*M+eyt', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Яковлева ', N'Валерия Михаиловна', N'loginDEytk2018', N'7D9re0', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Громов ', N'Богдан Максимович', N'loginDEytr2018', N'|vfIq2', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Денисов ', N'Святослав Онисимович', N'loginDEyua2018', N'rW71Ck', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Константинов ', N'Пётр Кондратович', N'loginDEyvi2018', N'22beR}', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Родионов ', N'Святослав Олегович', N'loginDEyxm2018', N'*DB|&d', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лебедев ', N'Валерьян Кимович', N'loginDEyyj2018', N'z+U0XU', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Попов ', N'Илья Филатович', N'loginDEyza2018', N'CsA9|P', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Воронова ', N'Алла Юлиановна', N'loginDEyzh2018', N'8m6+}r', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Козлов ', N'Эдуард Протасьевич', N'loginDEyzm2018', N'*Nx7JS', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ефремов ', N'Христофор Владиславович', N'loginDEyzn2018', N'P1v24R', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гурьева ', N'Ольга Аркадьевна', N'loginDEyzp2018', N'wFCnHN', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Горбунов ', N'Валентин Григорьевич', N'loginDEzal2018', N'zbU8R5', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Галкин ', N'Ярослав Фролович', N'loginDEzbd2018', N'hWTIZR', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Селезнёв ', N'Федот Валентинович', N'loginDEzbl2018', N'ih4xKJ', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Рожков ', N'Дамир Ростиславович', N'loginDEzbo2018', N'8km&kZ', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ефимова ', N'Анжелика Николаевна', N'loginDEzby2018', N'n|MYCO', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Беспалов ', N'Демьян Алексеевич', N'loginDEzdc2018', N'Zf8mx0', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Суханов ', N'Станислав Фролович', N'loginDEzde2018', N'tlO3x&', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Туров ', N'Юлиан Парфеньевич', N'loginDEzeq2018', N'WlZOJ3', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ефимов ', N'Руслан Якунович', N'loginDEzer2018', N'5&R+zs', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мельникова ', N'Прасковья Мстиславовна', N'loginDEzfi2018', N'VbhJh*', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лебедев ', N'Герман Евгеньевич', N'loginDEzfz2018', N'GzUp*R', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Шестакова ', N'Иванна Ярославовна', N'loginDEzgc2018', N'UHIU&T', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Лебедева ', N'Евдокия Ивановна', N'loginDEzhf2018', N'xws6L9', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Дмитриев ', N'Владислав Аркадьевич', N'loginDEzhp2018', N'16+8Jh', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Афанасьева ', N'Марфа Куприяновна', N'loginDEzjn2018', N'E8c864', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Быков ', N'Дмитрий Валерьянович', N'loginDEzjs2018', N'|x{s+X', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Суханова ', N'Фаина Юрьевна', N'loginDEzmk2018', N'ZrgBk6', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гаврилова ', N'Алина Эдуардовна', N'loginDEzna2018', N'yz1iMB', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Евсеев ', N'Эдуард Протасьевич', N'loginDEzpr2018', N'++NP+J', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фомичёв ', N'Богдан Федотович', N'loginDEzpz2018', N'PRI8h7', N'Директор')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Михайлов ', N'Парфений Мэлорович', N'loginDEzqk2018', N'TOOuow', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Петрова ', N'Иванна Андреевна', N'loginDEzqn2018', N'Lgd57H', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Елисеев ', N'Евсей Борисович', N'loginDEzqo2018', N'HHG+eY', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ершова ', N'Иванна Максимовна', N'loginDEzqs2018', N'qM9p7i', N'Менеджер по продажам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Мишин ', N'Христофор Леонидович', N'loginDEzre2018', N'N*VX+G', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кононов ', N'Геннадий Созонович', N'loginDEzrg2018', N'WXIgGi', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Никонова ', N'Евгения Павловна', N'loginDEzro2018', N'B24s6o', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Владимиров ', N'Протасий Витальевич', N'loginDEzsy2018', N'a6}lPi', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Соболев ', N'Даниил Николаевич', N'loginDEzta2018', N'cMVEpF', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Маслов ', N'Геннадий Фролович', N'loginDEztn2018', N'nJBZpU', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Кудряшов ', N'Борис Иринеевич', N'loginDEztr2018', N'MYCgB7', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Гущина ', N'Ксения Романовна', N'loginDEzva2018', N'0vLvlW', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Комиссарова ', N'Дарья Парфеньевна', N'loginDEzvg2018', N'NEACzR', N'Заказчик')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Карпова ', N'Дарья Валерьевна', N'loginDEzwo2018', N'zkc0S}', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Муравьёва ', N'Синклитикия Геннадьевна', N'loginDEzwx2018', N'3tICV1', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Соколова ', N'Екатерина Руслановна', N'loginDEzxk2018', N'}+j40i', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Фадеева ', N'Регина Онисимовна', N'loginDEzxw2018', N'pX&AsH', N'Мастер')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Сергеев ', N'Антонин Вадимович', N'loginDEzyb2018', N'ZG73**', N'Менеджер по закупкам')
GO
INSERT [dbo].[Users] ([Last_name], [First_name], [Login], [Password], [Role]) VALUES (N'Ершова ', N'Элеонора Ивановна', N'loginDEzyn2018', N'TSGsPV', N'Заказчик')
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[CakeDecoration]  WITH CHECK ADD FOREIGN KEY([Main_vendor])
REFERENCES [dbo].[Vendor] ([Name])
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK__Equipment__Equip__07C12930] FOREIGN KEY([Equipment_type])
REFERENCES [dbo].[EquipmentType] ([Name])
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK__Equipment__Equip__07C12930]
GO
ALTER TABLE [dbo].[Ingredients]  WITH CHECK ADD FOREIGN KEY([Main_vendor])
REFERENCES [dbo].[Vendor] ([Name])
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD  CONSTRAINT [FK__operation__Equii__0F624AF8] FOREIGN KEY([Equiipment_type])
REFERENCES [dbo].[EquipmentType] ([Name])
GO
ALTER TABLE [dbo].[Operations] CHECK CONSTRAINT [FK__operation__Equii__0F624AF8]
GO
ALTER TABLE [dbo].[Operations]  WITH CHECK ADD FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([Name])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([Manager])
REFERENCES [dbo].[Users] ([Login])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([Name])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([User])
REFERENCES [dbo].[Users] ([Login])
GO
ALTER TABLE [dbo].[SpecCakeDecoration]  WITH CHECK ADD FOREIGN KEY([Cake_decoration])
REFERENCES [dbo].[CakeDecoration] ([Vendor_name])
GO
ALTER TABLE [dbo].[SpecCakeDecoration]  WITH CHECK ADD FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([Name])
GO
ALTER TABLE [dbo].[SpecIngredients]  WITH CHECK ADD FOREIGN KEY([Ingredient])
REFERENCES [dbo].[Ingredients] ([Vendor_code])
GO
ALTER TABLE [dbo].[SpecIngredients]  WITH CHECK ADD FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([Name])
GO
ALTER TABLE [dbo].[SpecSFProducts]  WITH CHECK ADD FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([Name])
GO
ALTER TABLE [dbo].[SpecSFProducts]  WITH CHECK ADD FOREIGN KEY([SFProduct])
REFERENCES [dbo].[Product] ([Name])
GO
