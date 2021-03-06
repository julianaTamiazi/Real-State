USE [master]
GO
/****** Object:  Database [finalProject]    Script Date: 2020-04-27 5:09:44 PM ******/
CREATE DATABASE [finalProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'finalProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2017\MSSQL\DATA\finalProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'finalProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2017\MSSQL\DATA\finalProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [finalProject] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [finalProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [finalProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [finalProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [finalProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [finalProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [finalProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [finalProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [finalProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [finalProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [finalProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [finalProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [finalProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [finalProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [finalProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [finalProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [finalProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [finalProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [finalProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [finalProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [finalProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [finalProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [finalProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [finalProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [finalProject] SET RECOVERY FULL 
GO
ALTER DATABASE [finalProject] SET  MULTI_USER 
GO
ALTER DATABASE [finalProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [finalProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [finalProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [finalProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [finalProject] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'finalProject', N'ON'
GO
ALTER DATABASE [finalProject] SET QUERY_STORE = OFF
GO
USE [finalProject]
GO
/****** Object:  Table [dbo].[cities]    Script Date: 2020-04-27 5:09:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cities](
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[region_id] [int] NULL,
 CONSTRAINT [PK_cities] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[properties]    Script Date: 2020-04-27 5:09:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[properties](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[city_name] [nvarchar](50) NULL,
	[price] [float] NULL,
	[room] [int] NULL,
	[bathroom] [int] NULL,
	[garage] [nchar](10) NULL,
	[fireplace] [nchar](10) NULL,
	[pool] [nchar](10) NULL,
	[image] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_properties] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[regions]    Script Date: 2020-04-27 5:09:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[regions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_regions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2020-04-27 5:09:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[cities] ([id], [name], [region_id]) VALUES (N'1', N'Lachine
', 1)
INSERT [dbo].[cities] ([id], [name], [region_id]) VALUES (N'10', N'Fabreville', 3)
INSERT [dbo].[cities] ([id], [name], [region_id]) VALUES (N'11', N'Mirabel', 3)
INSERT [dbo].[cities] ([id], [name], [region_id]) VALUES (N'12', N'Oka', 3)
INSERT [dbo].[cities] ([id], [name], [region_id]) VALUES (N'2', N'Lasalle', 1)
INSERT [dbo].[cities] ([id], [name], [region_id]) VALUES (N'3', N'Plateu', 1)
INSERT [dbo].[cities] ([id], [name], [region_id]) VALUES (N'4', N'Verdun', 1)
INSERT [dbo].[cities] ([id], [name], [region_id]) VALUES (N'5', N'Beaupré', 2)
INSERT [dbo].[cities] ([id], [name], [region_id]) VALUES (N'6', N'Cap Santé', 2)
INSERT [dbo].[cities] ([id], [name], [region_id]) VALUES (N'7', N'Donnacona', 2)
INSERT [dbo].[cities] ([id], [name], [region_id]) VALUES (N'8', N'Grondines', 2)
INSERT [dbo].[cities] ([id], [name], [region_id]) VALUES (N'9', N'Blanvile', 3)
SET IDENTITY_INSERT [dbo].[properties] ON 

INSERT [dbo].[properties] ([id], [city_name], [price], [room], [bathroom], [garage], [fireplace], [pool], [image]) VALUES (1, N'Verdun', 100000, 1, 1, N'No        ', N'No        ', N'No        ', N'~\img\1.jpg')
INSERT [dbo].[properties] ([id], [city_name], [price], [room], [bathroom], [garage], [fireplace], [pool], [image]) VALUES (2, N'Lasalle', 150000, 1, 1, N'No        ', N'No        ', N'No        ', N'~\img\2.jpg')
INSERT [dbo].[properties] ([id], [city_name], [price], [room], [bathroom], [garage], [fireplace], [pool], [image]) VALUES (9, N'Plateu', 125000, 1, 1, N'No        ', N'No        ', N'No        ', N'~\img\3.jpg')
INSERT [dbo].[properties] ([id], [city_name], [price], [room], [bathroom], [garage], [fireplace], [pool], [image]) VALUES (10, N'Cap Santé', 200000, 2, 1, N'Yes       ', N'No        ', N'No        ', N'~\img\4.jpg')
INSERT [dbo].[properties] ([id], [city_name], [price], [room], [bathroom], [garage], [fireplace], [pool], [image]) VALUES (11, N'Donnacona', 350000, 3, 2, N'Yes       ', N'No        ', N'Yes       ', N'~\img\5.jpg')
INSERT [dbo].[properties] ([id], [city_name], [price], [room], [bathroom], [garage], [fireplace], [pool], [image]) VALUES (12, N'Grondines', 250000, 2, 1, N'Yes       ', N'Yes       ', N'Yes       ', N'~\img\6.jpg')
INSERT [dbo].[properties] ([id], [city_name], [price], [room], [bathroom], [garage], [fireplace], [pool], [image]) VALUES (13, N'Fabreville', 275000, 2, 2, N'No        ', N'Yes       ', N'Yes       ', N'~\img\7.jpg')
INSERT [dbo].[properties] ([id], [city_name], [price], [room], [bathroom], [garage], [fireplace], [pool], [image]) VALUES (16, N'Fabreville', 375000, 2, 2, N'No        ', N'Yes       ', N'Yes       ', N'~\img\4.jpg')
INSERT [dbo].[properties] ([id], [city_name], [price], [room], [bathroom], [garage], [fireplace], [pool], [image]) VALUES (17, N'Donnacona', 350000, 1, 1, N'Yes       ', N'Yes       ', N'Yes       ', N'~\img\5.jpg')
INSERT [dbo].[properties] ([id], [city_name], [price], [room], [bathroom], [garage], [fireplace], [pool], [image]) VALUES (18, N'Beaupré', 325000, 2, 2, N'Yes       ', N'Yes       ', N'Yes       ', N'~\img\1.jpg')
INSERT [dbo].[properties] ([id], [city_name], [price], [room], [bathroom], [garage], [fireplace], [pool], [image]) VALUES (19, N'Oka', 325000, 2, 2, N'No        ', N'No        ', N'No        ', N'~\img\7.jpg')
SET IDENTITY_INSERT [dbo].[properties] OFF
SET IDENTITY_INSERT [dbo].[regions] ON 

INSERT [dbo].[regions] ([id], [name]) VALUES (1, N'Montreal')
INSERT [dbo].[regions] ([id], [name]) VALUES (2, N'Quebec')
INSERT [dbo].[regions] ([id], [name]) VALUES (3, N'Laval')
SET IDENTITY_INSERT [dbo].[regions] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [userName], [password], [type]) VALUES (1, N'admin', N'123456', N'admin')
INSERT [dbo].[users] ([id], [userName], [password], [type]) VALUES (2, N'client', N'123457', N'client')
SET IDENTITY_INSERT [dbo].[users] OFF
ALTER TABLE [dbo].[cities]  WITH CHECK ADD  CONSTRAINT [FK_cities_regions] FOREIGN KEY([region_id])
REFERENCES [dbo].[regions] ([id])
GO
ALTER TABLE [dbo].[cities] CHECK CONSTRAINT [FK_cities_regions]
GO
USE [master]
GO
ALTER DATABASE [finalProject] SET  READ_WRITE 
GO
