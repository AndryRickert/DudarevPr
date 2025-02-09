USE [master]
GO
/****** Object:  Database [ПриемнаяКампания]    Script Date: 21.07.2024 0:27:05 ******/
CREATE DATABASE [ПриемнаяКампания]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ПриемнаяКампания', FILENAME = N'I:\SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ПриемнаяКампания.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ПриемнаяКампания_log', FILENAME = N'I:\SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ПриемнаяКампания_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ПриемнаяКампания] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ПриемнаяКампания].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ПриемнаяКампания] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET ARITHABORT OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ПриемнаяКампания] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ПриемнаяКампания] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ПриемнаяКампания] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ПриемнаяКампания] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET RECOVERY FULL 
GO
ALTER DATABASE [ПриемнаяКампания] SET  MULTI_USER 
GO
ALTER DATABASE [ПриемнаяКампания] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ПриемнаяКампания] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ПриемнаяКампания] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ПриемнаяКампания] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ПриемнаяКампания] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ПриемнаяКампания] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ПриемнаяКампания', N'ON'
GO
ALTER DATABASE [ПриемнаяКампания] SET QUERY_STORE = ON
GO
ALTER DATABASE [ПриемнаяКампания] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ПриемнаяКампания]
GO
/****** Object:  Table [dbo].[Абитуриенты]    Script Date: 21.07.2024 0:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Абитуриенты](
	[Код_абитуриента] [int] NOT NULL,
	[ФИО] [varchar](50) NULL,
	[Год_рождения] [int] NULL,
	[Адрес] [varchar](50) NULL,
	[Телефон] [varchar](15) NULL,
	[Код_категории] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Код_абитуриента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заявления]    Script Date: 21.07.2024 0:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заявления](
	[Номер] [int] NOT NULL,
	[Дата] [date] NULL,
	[Код_направления] [int] NULL,
	[Код_абитуриента] [int] NULL,
	[Код_статуса] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Испытания]    Script Date: 21.07.2024 0:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Испытания](
	[Код_испытания] [int] NOT NULL,
	[Название] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Код_испытания] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Категории_абитуриента]    Script Date: 21.07.2024 0:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Категории_абитуриента](
	[Код_категории] [int] NOT NULL,
	[Название] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Код_категории] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Направления]    Script Date: 21.07.2024 0:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Направления](
	[Код_направления] [int] NOT NULL,
	[Название] [varchar](50) NULL,
	[Срок_обучения] [int] NULL,
	[Стоимость] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Код_направления] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Перечень_испытаний]    Script Date: 21.07.2024 0:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Перечень_испытаний](
	[Номер] [int] NOT NULL,
	[Код_испытания] [int] NULL,
	[Оценка] [int] NULL,
	[Номер_результата] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Результаты_испытаний]    Script Date: 21.07.2024 0:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Результаты_испытаний](
	[Номер] [int] NOT NULL,
	[Код_абитуриента] [int] NULL,
	[Дата] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Номер] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статусы_заявлений]    Script Date: 21.07.2024 0:27:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статусы_заявлений](
	[Код_статуса] [int] NOT NULL,
	[Название] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Код_статуса] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Абитуриенты] ([Код_абитуриента], [ФИО], [Год_рождения], [Адрес], [Телефон], [Код_категории]) VALUES (1, N'Иванов Иван Иванович', 1995, N'Москва, ул. Ленина, 10', N'1234567890', 1)
INSERT [dbo].[Абитуриенты] ([Код_абитуриента], [ФИО], [Год_рождения], [Адрес], [Телефон], [Код_категории]) VALUES (2, N'Петров Петр Петрович', 1996, N'Санкт-Петербург, ул. Пушкина, 20', N'2345678901', 2)
INSERT [dbo].[Абитуриенты] ([Код_абитуриента], [ФИО], [Год_рождения], [Адрес], [Телефон], [Код_категории]) VALUES (3, N'Сидоров Сидор Сидорович', 1997, N'Екатеринбург, ул. Кирова, 30', N'3456789012', 3)
GO
INSERT [dbo].[Заявления] ([Номер], [Дата], [Код_направления], [Код_абитуриента], [Код_статуса]) VALUES (1, CAST(N'2024-07-20' AS Date), 1, 1, 1)
INSERT [dbo].[Заявления] ([Номер], [Дата], [Код_направления], [Код_абитуриента], [Код_статуса]) VALUES (2, CAST(N'2024-07-21' AS Date), 2, 1, 1)
INSERT [dbo].[Заявления] ([Номер], [Дата], [Код_направления], [Код_абитуриента], [Код_статуса]) VALUES (3, CAST(N'2024-07-22' AS Date), 3, 1, 1)
GO
INSERT [dbo].[Испытания] ([Код_испытания], [Название]) VALUES (1, N'Математика')
INSERT [dbo].[Испытания] ([Код_испытания], [Название]) VALUES (2, N'Физика')
INSERT [dbo].[Испытания] ([Код_испытания], [Название]) VALUES (3, N'Химия')
GO
INSERT [dbo].[Категории_абитуриента] ([Код_категории], [Название]) VALUES (1, N'Внутренний')
INSERT [dbo].[Категории_абитуриента] ([Код_категории], [Название]) VALUES (2, N'Внешний')
INSERT [dbo].[Категории_абитуриента] ([Код_категории], [Название]) VALUES (3, N'Международный')
GO
INSERT [dbo].[Направления] ([Код_направления], [Название], [Срок_обучения], [Стоимость]) VALUES (1, N'Информатика', 4, 100000)
INSERT [dbo].[Направления] ([Код_направления], [Название], [Срок_обучения], [Стоимость]) VALUES (2, N'Биология', 5, 120000)
INSERT [dbo].[Направления] ([Код_направления], [Название], [Срок_обучения], [Стоимость]) VALUES (3, N'Химия', 4, 110000)
GO
INSERT [dbo].[Перечень_испытаний] ([Номер], [Код_испытания], [Оценка], [Номер_результата]) VALUES (1, 1, 85, 1)
INSERT [dbo].[Перечень_испытаний] ([Номер], [Код_испытания], [Оценка], [Номер_результата]) VALUES (2, 2, 90, 2)
INSERT [dbo].[Перечень_испытаний] ([Номер], [Код_испытания], [Оценка], [Номер_результата]) VALUES (3, 3, 75, 3)
INSERT [dbo].[Перечень_испытаний] ([Номер], [Код_испытания], [Оценка], [Номер_результата]) VALUES (4, 1, 88, 1)
INSERT [dbo].[Перечень_испытаний] ([Номер], [Код_испытания], [Оценка], [Номер_результата]) VALUES (5, 2, 92, 2)
INSERT [dbo].[Перечень_испытаний] ([Номер], [Код_испытания], [Оценка], [Номер_результата]) VALUES (6, 3, 78, 3)
INSERT [dbo].[Перечень_испытаний] ([Номер], [Код_испытания], [Оценка], [Номер_результата]) VALUES (7, 1, 83, 1)
INSERT [dbo].[Перечень_испытаний] ([Номер], [Код_испытания], [Оценка], [Номер_результата]) VALUES (8, 2, 87, 2)
INSERT [dbo].[Перечень_испытаний] ([Номер], [Код_испытания], [Оценка], [Номер_результата]) VALUES (9, 3, 80, 3)
GO
INSERT [dbo].[Результаты_испытаний] ([Номер], [Код_абитуриента], [Дата]) VALUES (1, 1, CAST(N'2024-07-15' AS Date))
INSERT [dbo].[Результаты_испытаний] ([Номер], [Код_абитуриента], [Дата]) VALUES (2, 1, CAST(N'2024-07-16' AS Date))
INSERT [dbo].[Результаты_испытаний] ([Номер], [Код_абитуриента], [Дата]) VALUES (3, 1, CAST(N'2024-07-17' AS Date))
GO
INSERT [dbo].[Статусы_заявлений] ([Код_статуса], [Название]) VALUES (1, N'На рассмотрении')
INSERT [dbo].[Статусы_заявлений] ([Код_статуса], [Название]) VALUES (2, N'Удалено')
INSERT [dbo].[Статусы_заявлений] ([Код_статуса], [Название]) VALUES (3, N'Заявление принято')
GO
/****** Object:  Index [Код_испытания]    Script Date: 21.07.2024 0:27:05 ******/
CREATE NONCLUSTERED INDEX [Код_испытания] ON [dbo].[Испытания]
(
	[Код_испытания] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Код_категории]    Script Date: 21.07.2024 0:27:05 ******/
CREATE NONCLUSTERED INDEX [Код_категории] ON [dbo].[Категории_абитуриента]
(
	[Код_категории] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Код_направления]    Script Date: 21.07.2024 0:27:05 ******/
CREATE NONCLUSTERED INDEX [Код_направления] ON [dbo].[Направления]
(
	[Код_направления] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Код_абитуриента]    Script Date: 21.07.2024 0:27:05 ******/
CREATE NONCLUSTERED INDEX [Код_абитуриента] ON [dbo].[Результаты_испытаний]
(
	[Код_абитуриента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Абитуриенты]  WITH CHECK ADD FOREIGN KEY([Код_категории])
REFERENCES [dbo].[Категории_абитуриента] ([Код_категории])
GO
ALTER TABLE [dbo].[Заявления]  WITH CHECK ADD FOREIGN KEY([Код_абитуриента])
REFERENCES [dbo].[Абитуриенты] ([Код_абитуриента])
GO
ALTER TABLE [dbo].[Заявления]  WITH CHECK ADD FOREIGN KEY([Код_направления])
REFERENCES [dbo].[Направления] ([Код_направления])
GO
ALTER TABLE [dbo].[Заявления]  WITH CHECK ADD FOREIGN KEY([Код_статуса])
REFERENCES [dbo].[Статусы_заявлений] ([Код_статуса])
GO
ALTER TABLE [dbo].[Перечень_испытаний]  WITH CHECK ADD FOREIGN KEY([Код_испытания])
REFERENCES [dbo].[Испытания] ([Код_испытания])
GO
ALTER TABLE [dbo].[Перечень_испытаний]  WITH CHECK ADD FOREIGN KEY([Номер_результата])
REFERENCES [dbo].[Результаты_испытаний] ([Номер])
GO
ALTER TABLE [dbo].[Результаты_испытаний]  WITH CHECK ADD FOREIGN KEY([Код_абитуриента])
REFERENCES [dbo].[Абитуриенты] ([Код_абитуриента])
GO
USE [master]
GO
ALTER DATABASE [ПриемнаяКампания] SET  READ_WRITE 
GO
