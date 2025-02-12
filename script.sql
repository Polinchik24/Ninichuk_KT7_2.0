USE [master]
GO
/****** Object:  Database [masterfloor]    Script Date: 21.11.2024 10:04:14 ******/
CREATE DATABASE [masterfloor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'masterfloor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\masterfloor.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'masterfloor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\masterfloor_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [masterfloor] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [masterfloor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [masterfloor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [masterfloor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [masterfloor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [masterfloor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [masterfloor] SET ARITHABORT OFF 
GO
ALTER DATABASE [masterfloor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [masterfloor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [masterfloor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [masterfloor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [masterfloor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [masterfloor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [masterfloor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [masterfloor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [masterfloor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [masterfloor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [masterfloor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [masterfloor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [masterfloor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [masterfloor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [masterfloor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [masterfloor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [masterfloor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [masterfloor] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [masterfloor] SET  MULTI_USER 
GO
ALTER DATABASE [masterfloor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [masterfloor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [masterfloor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [masterfloor] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [masterfloor] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [masterfloor] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [masterfloor] SET QUERY_STORE = OFF
GO
USE [masterfloor]
GO
/****** Object:  Table [dbo].[City]    Script Date: 21.11.2024 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameCity] [nvarchar](52) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House]    Script Date: 21.11.2024 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameHouse] [int] NOT NULL,
 CONSTRAINT [PK_House] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndexA]    Script Date: 21.11.2024 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexA](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameIndex] [nvarchar](52) NOT NULL,
 CONSTRAINT [PK_IndexA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatType]    Script Date: 21.11.2024 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProB] [nvarchar](52) NOT NULL,
 CONSTRAINT [PK_MatType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Obl]    Script Date: 21.11.2024 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Obl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameObl] [nvarchar](52) NOT NULL,
 CONSTRAINT [PK_Obl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner]    Script Date: 21.11.2024 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NamePartner] [nvarchar](52) NOT NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProducts]    Script Date: 21.11.2024 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [int] NOT NULL,
	[NamePartner] [int] NOT NULL,
	[kolvoProduct] [int] NOT NULL,
	[SaleDate] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 21.11.2024 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameTypePartners] [int] NOT NULL,
	[NamePartner] [int] NOT NULL,
	[SurName] [nvarchar](52) NOT NULL,
	[Name] [nvarchar](52) NOT NULL,
	[Patronymic] [nvarchar](52) NOT NULL,
	[Email] [nvarchar](52) NOT NULL,
	[Number] [nvarchar](52) NOT NULL,
	[IndexA] [int] NOT NULL,
	[Obl] [nvarchar](52) NOT NULL,
	[City] [nvarchar](52) NOT NULL,
	[House] [int] NOT NULL,
	[INN] [decimal](18, 0) NOT NULL,
	[Reit] [int] NOT NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product1]    Script Date: 21.11.2024 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [nvarchar](70) NOT NULL,
 CONSTRAINT [PK_Product1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 21.11.2024 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameTypeProduct] [int] NOT NULL,
	[NameProduct] [int] NOT NULL,
	[Article] [int] NOT NULL,
	[MinS] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 21.11.2024 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameProduct] [int] NOT NULL,
	[KType] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 21.11.2024 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[Id] [nvarchar](100) NOT NULL,
	[NameStreet] [nvarchar](52) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypePartners]    Script Date: 21.11.2024 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypePartners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameTypePartner] [nvarchar](52) NOT NULL,
 CONSTRAINT [PK_TypePartners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProduct]    Script Date: 21.11.2024 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NameTypeProduct] [nvarchar](52) NOT NULL,
 CONSTRAINT [PK_TypeProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([Id], [NameCity]) VALUES (1, N'город Приморск')
INSERT [dbo].[City] ([Id], [NameCity]) VALUES (2, N'город Реутов')
INSERT [dbo].[City] ([Id], [NameCity]) VALUES (3, N'город Северодвинск')
INSERT [dbo].[City] ([Id], [NameCity]) VALUES (4, N'город Старый Оскол')
INSERT [dbo].[City] ([Id], [NameCity]) VALUES (5, N'город Юрга')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[House] ON 

INSERT [dbo].[House] ([Id], [NameHouse]) VALUES (1, 15)
INSERT [dbo].[House] ([Id], [NameHouse]) VALUES (2, 18)
INSERT [dbo].[House] ([Id], [NameHouse]) VALUES (3, 21)
INSERT [dbo].[House] ([Id], [NameHouse]) VALUES (4, 51)
INSERT [dbo].[House] ([Id], [NameHouse]) VALUES (5, 122)
SET IDENTITY_INSERT [dbo].[House] OFF
GO
SET IDENTITY_INSERT [dbo].[IndexA] ON 

INSERT [dbo].[IndexA] ([Id], [NameIndex]) VALUES (1, N'652050')
INSERT [dbo].[IndexA] ([Id], [NameIndex]) VALUES (2, N'164500')
INSERT [dbo].[IndexA] ([Id], [NameIndex]) VALUES (3, N'188910')
INSERT [dbo].[IndexA] ([Id], [NameIndex]) VALUES (4, N'143960')
INSERT [dbo].[IndexA] ([Id], [NameIndex]) VALUES (5, N'309500')
SET IDENTITY_INSERT [dbo].[IndexA] OFF
GO
SET IDENTITY_INSERT [dbo].[MatType] ON 

INSERT [dbo].[MatType] ([Id], [ProB]) VALUES (1, N'0,10%')
INSERT [dbo].[MatType] ([Id], [ProB]) VALUES (2, N'0,95%')
INSERT [dbo].[MatType] ([Id], [ProB]) VALUES (3, N'0,28%')
INSERT [dbo].[MatType] ([Id], [ProB]) VALUES (4, N'0,55%')
INSERT [dbo].[MatType] ([Id], [ProB]) VALUES (5, N'0,34%')
SET IDENTITY_INSERT [dbo].[MatType] OFF
GO
SET IDENTITY_INSERT [dbo].[Obl] ON 

INSERT [dbo].[Obl] ([Id], [NameObl]) VALUES (1, N' Архангельская область')
INSERT [dbo].[Obl] ([Id], [NameObl]) VALUES (2, N' Белгородская область')
INSERT [dbo].[Obl] ([Id], [NameObl]) VALUES (3, N' Кемеровская область')
INSERT [dbo].[Obl] ([Id], [NameObl]) VALUES (4, N' Ленинградская область')
INSERT [dbo].[Obl] ([Id], [NameObl]) VALUES (5, N' Московская область')
SET IDENTITY_INSERT [dbo].[Obl] OFF
GO
SET IDENTITY_INSERT [dbo].[Partner] ON 

INSERT [dbo].[Partner] ([Id], [NamePartner]) VALUES (1, N'База Строитель')
INSERT [dbo].[Partner] ([Id], [NamePartner]) VALUES (2, N'МонтажПро')
INSERT [dbo].[Partner] ([Id], [NamePartner]) VALUES (3, N'Паркет 29')
INSERT [dbo].[Partner] ([Id], [NamePartner]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[Partner] ([Id], [NamePartner]) VALUES (5, N'Стройсервис')
SET IDENTITY_INSERT [dbo].[Partner] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerProducts] ON 

INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [NameProduct], [NamePartner], [kolvoProduct], [SaleDate]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
SET IDENTITY_INSERT [dbo].[PartnerProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Partners] ON 

INSERT [dbo].[Partners] ([Id], [NameTypePartners], [NamePartner], [SurName], [Name], [Patronymic], [Email], [Number], [IndexA], [Obl], [City], [House], [INN], [Reit]) VALUES (11, 1, 1, N'Иванова', N'Александра', N'Ивановна', N'aleksandraivanova@ml.ru', N'+7(493)- 123-45-67', 652050, N' Кемеровская область', N'город Юрга', 15, CAST(2222455179 AS Decimal(18, 0)), 7)
INSERT [dbo].[Partners] ([Id], [NameTypePartners], [NamePartner], [SurName], [Name], [Patronymic], [Email], [Number], [IndexA], [Obl], [City], [House], [INN], [Reit]) VALUES (12, 3, 3, N'Петров', N'Василий', N'Петрович', N'vppetrov@vl.ru', N'+7(987)- 123-56-78', 164500, N' Архангельская область', N'город Северодвинск', 18, CAST(3333888520 AS Decimal(18, 0)), 7)
INSERT [dbo].[Partners] ([Id], [NameTypePartners], [NamePartner], [SurName], [Name], [Patronymic], [Email], [Number], [IndexA], [Obl], [City], [House], [INN], [Reit]) VALUES (13, 4, 5, N'Соловьев', N'Андрей', N'Николаевич', N'ansolovev@st.ru', N'+7(812)- 223-32-00', 188910, N' Ленинградская область', N'город Приморск', 21, CAST(4440391035 AS Decimal(18, 0)), 7)
INSERT [dbo].[Partners] ([Id], [NameTypePartners], [NamePartner], [SurName], [Name], [Patronymic], [Email], [Number], [IndexA], [Obl], [City], [House], [INN], [Reit]) VALUES (14, 2, 4, N'Воробьева', N'Екатерина', N'Валерьевна', N'ekaterina.vorobeva@ml.ru', N'+7(444)- 222-33-11', 143960, N' Московская область', N'город Реутов', 51, CAST(1111520857 AS Decimal(18, 0)), 5)
INSERT [dbo].[Partners] ([Id], [NameTypePartners], [NamePartner], [SurName], [Name], [Patronymic], [Email], [Number], [IndexA], [Obl], [City], [House], [INN], [Reit]) VALUES (15, 1, 2, N'Степанов', N'Степан', N'Сергеевич', N'stepanov@stepan.ru', N'+7(912)- 888-33-33', 309500, N' Белгородская область', N'город Старый Оскол', 122, CAST(5552431140 AS Decimal(18, 0)), 10)
SET IDENTITY_INSERT [dbo].[Partners] OFF
GO
SET IDENTITY_INSERT [dbo].[Product1] ON 

INSERT [dbo].[Product1] ([Id], [NameProduct]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[Product1] ([Id], [NameProduct]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[Product1] ([Id], [NameProduct]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[Product1] ([Id], [NameProduct]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[Product1] ([Id], [NameProduct]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
SET IDENTITY_INSERT [dbo].[Product1] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [NameTypeProduct], [NameProduct], [Article], [MinS]) VALUES (1, 2, 4, 8758385, CAST(4456.90 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([Id], [NameTypeProduct], [NameProduct], [Article], [MinS]) VALUES (2, 2, 1, 8858958, CAST(7330.99 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([Id], [NameTypeProduct], [NameProduct], [Article], [MinS]) VALUES (3, 1, 2, 7750282, CAST(1799.33 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([Id], [NameTypeProduct], [NameProduct], [Article], [MinS]) VALUES (4, 1, 3, 7028748, CAST(3890.41 AS Decimal(18, 2)))
INSERT [dbo].[Products] ([Id], [NameTypeProduct], [NameProduct], [Article], [MinS]) VALUES (5, 3, 5, 5012543, CAST(5450.59 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([Id], [NameProduct], [KType]) VALUES (1, 1, CAST(2.35 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([Id], [NameProduct], [KType]) VALUES (2, 3, CAST(5.15 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([Id], [NameProduct], [KType]) VALUES (3, 3, CAST(4.34 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([Id], [NameProduct], [KType]) VALUES (4, 5, CAST(1.50 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
INSERT [dbo].[Street] ([Id], [NameStreet]) VALUES (N'1', N'ул. Лесная')
INSERT [dbo].[Street] ([Id], [NameStreet]) VALUES (N'2', N'ул. Парковая')
INSERT [dbo].[Street] ([Id], [NameStreet]) VALUES (N'3', N'ул. Рабочая')
INSERT [dbo].[Street] ([Id], [NameStreet]) VALUES (N'4', N'ул. Свободы')
INSERT [dbo].[Street] ([Id], [NameStreet]) VALUES (N'5', N'ул. Строителей')
GO
SET IDENTITY_INSERT [dbo].[TypePartners] ON 

INSERT [dbo].[TypePartners] ([Id], [NameTypePartner]) VALUES (1, N'ЗАО')
INSERT [dbo].[TypePartners] ([Id], [NameTypePartner]) VALUES (2, N'ОАО')
INSERT [dbo].[TypePartners] ([Id], [NameTypePartner]) VALUES (3, N'ООО')
INSERT [dbo].[TypePartners] ([Id], [NameTypePartner]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[TypePartners] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeProduct] ON 

INSERT [dbo].[TypeProduct] ([Id], [NameTypeProduct]) VALUES (1, N'Ламинат')
INSERT [dbo].[TypeProduct] ([Id], [NameTypeProduct]) VALUES (2, N'Паркетная доска')
INSERT [dbo].[TypeProduct] ([Id], [NameTypeProduct]) VALUES (3, N'Пробковое покрытие')
SET IDENTITY_INSERT [dbo].[TypeProduct] OFF
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_Partner] FOREIGN KEY([NamePartner])
REFERENCES [dbo].[Partner] ([Id])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_Partner]
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_Products] FOREIGN KEY([NameProduct])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_Products]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_PartnerProducts] FOREIGN KEY([NamePartner])
REFERENCES [dbo].[PartnerProducts] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_PartnerProducts]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_TypePartners] FOREIGN KEY([NameTypePartners])
REFERENCES [dbo].[TypePartners] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_TypePartners]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Product1] FOREIGN KEY([NameProduct])
REFERENCES [dbo].[Product1] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Product1]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_TypeProduct] FOREIGN KEY([NameTypeProduct])
REFERENCES [dbo].[TypeProduct] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_TypeProduct]
GO
ALTER TABLE [dbo].[ProductType]  WITH CHECK ADD  CONSTRAINT [FK_ProductType_Product1] FOREIGN KEY([NameProduct])
REFERENCES [dbo].[Product1] ([Id])
GO
ALTER TABLE [dbo].[ProductType] CHECK CONSTRAINT [FK_ProductType_Product1]
GO
USE [master]
GO
ALTER DATABASE [masterfloor] SET  READ_WRITE 
GO
