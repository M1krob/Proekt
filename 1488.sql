USE [master]
GO
/****** Object:  Database [ketoubaza]    Script Date: 06.05.2023 9:07:23 ******/
CREATE DATABASE [ketoubaza]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ketoubaza', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ketoubaza.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ketoubaza_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ketoubaza_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ketoubaza] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ketoubaza].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ketoubaza] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ketoubaza] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ketoubaza] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ketoubaza] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ketoubaza] SET ARITHABORT OFF 
GO
ALTER DATABASE [ketoubaza] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ketoubaza] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ketoubaza] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ketoubaza] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ketoubaza] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ketoubaza] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ketoubaza] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ketoubaza] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ketoubaza] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ketoubaza] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ketoubaza] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ketoubaza] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ketoubaza] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ketoubaza] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ketoubaza] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ketoubaza] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ketoubaza] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ketoubaza] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ketoubaza] SET  MULTI_USER 
GO
ALTER DATABASE [ketoubaza] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ketoubaza] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ketoubaza] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ketoubaza] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ketoubaza] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ketoubaza] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ketoubaza] SET QUERY_STORE = OFF
GO
USE [ketoubaza]
GO
/****** Object:  Table [dbo].[Группа]    Script Date: 06.05.2023 9:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Группа](
	[ИД_Группа] [int] IDENTITY(1,1) NOT NULL,
	[ИД_Специальность] [int] NOT NULL,
	[Количество_студентов] [int] NOT NULL,
	[Количество_свободных_мест] [int] NULL,
	[Префикс_группы] [nvarchar](1) NULL,
	[Курс] [nchar](1) NULL,
	[Дата_формирования] [date] NULL,
	[Дата_окончания] [date] NULL,
	[Классный_руководитель] [nvarchar](50) NULL,
 CONSTRAINT [PK_Группа] PRIMARY KEY CLUSTERED 
(
	[ИД_Группа] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Заявки]    Script Date: 06.05.2023 9:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Заявки](
	[ИД_Заявка] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NULL,
	[Имя] [nvarchar](50) NULL,
	[Отчество] [nvarchar](50) NULL,
	[Дата_рождения] [date] NULL,
	[Место_обучения] [nvarchar](50) NULL,
	[Аттестат] [nvarchar](max) NULL,
	[Номер_телефона] [nchar](11) NULL,
	[Электронная_почта] [nvarchar](50) NULL,
	[ИД_Статус_заявления] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Заявки] PRIMARY KEY CLUSTERED 
(
	[ИД_Заявка] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ИД_Специальность]    Script Date: 06.05.2023 9:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ИД_Специальность](
	[ИД_Специальность] [int] IDENTITY(1,1) NOT NULL,
	[Название] [nvarchar](50) NULL,
	[Код] [nvarchar](50) NULL,
 CONSTRAINT [PK_ИД_Специальность] PRIMARY KEY CLUSTERED 
(
	[ИД_Специальность] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ИД_Статус_заявления]    Script Date: 06.05.2023 9:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ИД_Статус_заявления](
	[ИД_Статус_заявления] [int] IDENTITY(1,1) NOT NULL,
	[Статус] [nvarchar](50) NULL,
 CONSTRAINT [PK_ИД_Статус_заявления] PRIMARY KEY CLUSTERED 
(
	[ИД_Статус_заявления] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Преподаватель]    Script Date: 06.05.2023 9:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Преподаватель](
	[ИД_Преподаватели] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](50) NULL,
	[Имя] [nvarchar](50) NULL,
	[Отчество] [nvarchar](50) NULL,
	[Дата_рождения] [date] NULL,
	[Электронная_почта] [nvarchar](50) NULL,
	[Номер_телефона] [nchar](11) NULL,
	[Педагогический_стаж] [nchar](100) NULL,
	[Изображение] [nvarchar](max) NULL,
 CONSTRAINT [PK_Преподаватель] PRIMARY KEY CLUSTERED 
(
	[ИД_Преподаватели] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудники]    Script Date: 06.05.2023 9:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудники](
	[ИД_Сотрудники] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NULL,
	[Имя] [nvarchar](50) NULL,
	[Отчество] [nvarchar](50) NULL,
	[Логин] [nvarchar](50) NULL,
	[Пароль] [nchar](10) NULL,
	[ИД_Тип_сотрудника] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Сотрудники] PRIMARY KEY CLUSTERED 
(
	[ИД_Сотрудники] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Статус_студента]    Script Date: 06.05.2023 9:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Статус_студента](
	[ИД_Статус_студента] [int] IDENTITY(1,1) NOT NULL,
	[Статус] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Статус_студента] PRIMARY KEY CLUSTERED 
(
	[ИД_Статус_студента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Студент]    Script Date: 06.05.2023 9:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Студент](
	[ИД_Студент] [int] IDENTITY(1,1) NOT NULL,
	[Фамилия] [nvarchar](50) NULL,
	[Имя] [nvarchar](50) NULL,
	[Отчество] [nvarchar](50) NULL,
	[Дата_рождения] [date] NULL,
	[ИД_Группа] [int] NOT NULL,
	[ИД_Статус_студента] [int] NOT NULL,
	[ИД_Форма_обучения] [int] NOT NULL,
	[Дата_зачисления] [date] NULL,
	[Дата_выбытия] [date] NULL,
	[Номер_телефона] [nchar](11) NULL,
	[Изображение] [nvarchar](max) NULL,
	[ИД_Специальность] [int] NOT NULL,
	[ИД_Преподаватель] [int] NOT NULL,
 CONSTRAINT [PK_Студент] PRIMARY KEY CLUSTERED 
(
	[ИД_Студент] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Тип_сотрудники]    Script Date: 06.05.2023 9:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Тип_сотрудники](
	[ИД_Тип_сотрудники] [int] IDENTITY(1,1) NOT NULL,
	[Название] [nchar](10) NULL,
 CONSTRAINT [PK_Тип_сотрудники] PRIMARY KEY CLUSTERED 
(
	[ИД_Тип_сотрудники] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Форма_обучения]    Script Date: 06.05.2023 9:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Форма_обучения](
	[ИД_Форма_обучения] [int] IDENTITY(1,1) NOT NULL,
	[Название] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Форма_обучения] PRIMARY KEY CLUSTERED 
(
	[ИД_Форма_обучения] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Группа]  WITH CHECK ADD  CONSTRAINT [FK_Группа_ИД_Специальность] FOREIGN KEY([ИД_Специальность])
REFERENCES [dbo].[ИД_Специальность] ([ИД_Специальность])
GO
ALTER TABLE [dbo].[Группа] CHECK CONSTRAINT [FK_Группа_ИД_Специальность]
GO
ALTER TABLE [dbo].[Заявки]  WITH CHECK ADD  CONSTRAINT [FK_Заявки_ИД_Статус_заявления] FOREIGN KEY([ИД_Статус_заявления])
REFERENCES [dbo].[ИД_Статус_заявления] ([ИД_Статус_заявления])
GO
ALTER TABLE [dbo].[Заявки] CHECK CONSTRAINT [FK_Заявки_ИД_Статус_заявления]
GO
ALTER TABLE [dbo].[Сотрудники]  WITH CHECK ADD  CONSTRAINT [FK_Сотрудники_Тип_сотрудники] FOREIGN KEY([ИД_Тип_сотрудника])
REFERENCES [dbo].[Тип_сотрудники] ([ИД_Тип_сотрудники])
GO
ALTER TABLE [dbo].[Сотрудники] CHECK CONSTRAINT [FK_Сотрудники_Тип_сотрудники]
GO
ALTER TABLE [dbo].[Студент]  WITH CHECK ADD  CONSTRAINT [FK_Студент_Группа] FOREIGN KEY([ИД_Группа])
REFERENCES [dbo].[Группа] ([ИД_Группа])
GO
ALTER TABLE [dbo].[Студент] CHECK CONSTRAINT [FK_Студент_Группа]
GO
ALTER TABLE [dbo].[Студент]  WITH CHECK ADD  CONSTRAINT [FK_Студент_ИД_Специальность] FOREIGN KEY([ИД_Специальность])
REFERENCES [dbo].[ИД_Специальность] ([ИД_Специальность])
GO
ALTER TABLE [dbo].[Студент] CHECK CONSTRAINT [FK_Студент_ИД_Специальность]
GO
ALTER TABLE [dbo].[Студент]  WITH CHECK ADD  CONSTRAINT [FK_Студент_Преподаватель] FOREIGN KEY([ИД_Преподаватель])
REFERENCES [dbo].[Преподаватель] ([ИД_Преподаватели])
GO
ALTER TABLE [dbo].[Студент] CHECK CONSTRAINT [FK_Студент_Преподаватель]
GO
ALTER TABLE [dbo].[Студент]  WITH CHECK ADD  CONSTRAINT [FK_Студент_Статус_студента] FOREIGN KEY([ИД_Статус_студента])
REFERENCES [dbo].[Статус_студента] ([ИД_Статус_студента])
GO
ALTER TABLE [dbo].[Студент] CHECK CONSTRAINT [FK_Студент_Статус_студента]
GO
ALTER TABLE [dbo].[Студент]  WITH CHECK ADD  CONSTRAINT [FK_Студент_Форма_обучения] FOREIGN KEY([ИД_Форма_обучения])
REFERENCES [dbo].[Форма_обучения] ([ИД_Форма_обучения])
GO
ALTER TABLE [dbo].[Студент] CHECK CONSTRAINT [FK_Студент_Форма_обучения]
GO
USE [master]
GO
ALTER DATABASE [ketoubaza] SET  READ_WRITE 
GO
