USE [master]
GO
/****** Object:  Database [Pawnshop]    Script Date: 02/07/2022 12:56:01 pm ******/
CREATE DATABASE [Pawnshop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pawnshop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Pawnshop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pawnshop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Pawnshop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Pawnshop] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pawnshop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pawnshop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pawnshop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pawnshop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pawnshop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pawnshop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pawnshop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pawnshop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pawnshop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pawnshop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pawnshop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pawnshop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pawnshop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pawnshop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pawnshop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pawnshop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pawnshop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pawnshop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pawnshop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pawnshop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pawnshop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pawnshop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pawnshop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pawnshop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Pawnshop] SET  MULTI_USER 
GO
ALTER DATABASE [Pawnshop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pawnshop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pawnshop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pawnshop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pawnshop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Pawnshop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Pawnshop] SET QUERY_STORE = OFF
GO
USE [Pawnshop]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 02/07/2022 12:56:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[Midle_Name] [varchar](50) NULL,
	[Number_Phone] [varchar](20) NULL,
	[Passport_Data] [varchar](20) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 02/07/2022 12:56:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[Midle_Name] [varchar](50) NULL,
	[Login] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 02/07/2022 12:56:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Delivery_Date] [date] NULL,
	[Price] [int] NULL,
	[Employee] [int] NULL,
	[Depozit] [int] NULL,
	[Ransom] [int] NULL,
	[Client] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 02/07/2022 12:56:01 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Product] [int] NULL,
	[Sum] [int] NULL,
	[Date_Pay] [date] NULL,
	[Actual_Date_Pay] [date] NULL,
	[Employee] [int] NULL,
	[Pay_Status] [varchar](20) NULL,
 CONSTRAINT [PK_Grafic] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([ID], [Name], [Surname], [Midle_Name], [Number_Phone], [Passport_Data]) VALUES (1, N'Иван', N'Иванов', N'Иванов', N'86541234566', N'416548841')
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [Name], [Surname], [Midle_Name], [Login], [Password]) VALUES (1, N'Петр', N'Петров', N'Петрович', N'1234', N'1234')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Title], [Type], [Delivery_Date], [Price], [Employee], [Depozit], [Ransom], [Client]) VALUES (1, N'Часы', N'Аксесуары', CAST(N'2022-02-02' AS Date), 15458, 1, 1555, 14789, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Schedule] ON 

INSERT [dbo].[Schedule] ([ID], [ID_Product], [Sum], [Date_Pay], [Actual_Date_Pay], [Employee], [Pay_Status]) VALUES (2, 1, 12332, CAST(N'2002-02-02' AS Date), CAST(N'2002-02-02' AS Date), 1, N'Принят')
SET IDENTITY_INSERT [dbo].[Schedule] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Clients] FOREIGN KEY([Client])
REFERENCES [dbo].[Clients] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Clients]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Employee] FOREIGN KEY([Employee])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Employee]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Employee] FOREIGN KEY([Employee])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Employee]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Product] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Product]
GO
USE [master]
GO
ALTER DATABASE [Pawnshop] SET  READ_WRITE 
GO
