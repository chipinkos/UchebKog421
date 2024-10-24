USE [master]
GO
/****** Object:  Database [Uchebka123k4s1SQL]    Script Date: 18.10.2024 14:17:21 ******/
CREATE DATABASE [Uchebka123k4s1SQL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Uchebka123k4s1SQL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Uchebka123k4s1SQL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Uchebka123k4s1SQL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Uchebka123k4s1SQL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Uchebka123k4s1SQL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET ARITHABORT OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET  MULTI_USER 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET QUERY_STORE = ON
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Uchebka123k4s1SQL]
GO
/****** Object:  Table [dbo].[City]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Description]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Description](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subtitle] [nvarchar](200) NULL,
	[MaterialId] [nvarchar](50) NULL,
 CONSTRAINT [PK_Description] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[TypeId] [int] NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentDesc]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentDesc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subtitle] [nvarchar](50) NULL,
	[EquipmentId] [int] NULL,
 CONSTRAINT [PK_EquipmentDesc] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentType]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_EquipmentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gost]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gost](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[MaterialId] [nvarchar](50) NULL,
 CONSTRAINT [PK_Gost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hardware]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hardware](
	[Id] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[UnitId] [int] NULL,
	[Amount] [int] NULL,
	[SupplierId] [int] NULL,
	[TypeId] [int] NULL,
	[Cost] [int] NULL,
	[Weight] [int] NULL,
 CONSTRAINT [PK_Hardware] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HardwareImage]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HardwareImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImagePath] [nvarchar](200) NULL,
	[ImageBin] [varbinary](max) NULL,
	[Timestamp] [datetime] NULL,
	[HardwareId] [nvarchar](50) NULL,
 CONSTRAINT [PK_HardwareImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HardwareType]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HardwareType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_HardwareType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HardwareUnit]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HardwareUnit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_HardwareUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Id] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[UnitId] [int] NULL,
	[Amount] [int] NULL,
	[SupplierId] [int] NULL,
	[TypeId] [int] NULL,
	[Cost] [int] NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialImage]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImagePath] [nvarchar](200) NULL,
	[ImageBin] [varbinary](max) NULL,
	[Timestamp] [datetime] NULL,
	[MaterialId] [nvarchar](50) NULL,
 CONSTRAINT [PK_MaterialImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialLength]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialLength](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Value] [decimal](3, 3) NULL,
	[MaterialId] [nvarchar](50) NULL,
 CONSTRAINT [PK_MaterialLength] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialUnit]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialUnit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_MaterialUnit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerformTasks]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerformTasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_PerformTasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[SizeDesc] [nvarchar](200) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductContent]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductContent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[ContentId] [int] NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_ProductContent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductHardware]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductHardware](
	[Id] [int] NOT NULL,
	[ProductId] [int] NULL,
	[HardwareId] [nvarchar](50) NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_ProductHardware] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductMaterial](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[MaterialId] [nvarchar](50) NULL,
	[Amount] [int] NULL,
 CONSTRAINT [PK_ProductMaterial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductOperation]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOperation](
	[ProductId] [int] NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[OrderCount] [int] NOT NULL,
	[OperationTime] [time](7) NULL,
	[TypeId] [int] NULL,
 CONSTRAINT [PK_ProductOperation_1] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[Description] ASC,
	[OrderCount] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Id_City] [int] NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Address] [nvarchar](200) NULL,
	[DeliveryTime] [datetime] NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleId] [int] NULL,
	[Surname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Qualification] [nvarchar](max) NULL,
	[Education] [nvarchar](max) NULL,
	[BirthDate] [date] NULL,
	[Id_Street] [int] NULL,
	[House] [nvarchar](5) NULL,
	[Flat] [nvarchar](5) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Tasks]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Tasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_User] [int] NULL,
	[Id_PT] [int] NULL,
 CONSTRAINT [PK_User_Tasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFullName]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFullName](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserFullName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserImage]    Script Date: 18.10.2024 14:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImagePath] [nvarchar](200) NULL,
	[ImageBin] [varbinary](max) NULL,
	[Timestamp] [datetime] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([Id], [Title]) VALUES (1, N'Москва')
INSERT [dbo].[City] ([Id], [Title]) VALUES (2, N'Санкт-Петербург')
INSERT [dbo].[City] ([Id], [Title]) VALUES (3, N'Казань')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[PerformTasks] ON 

INSERT [dbo].[PerformTasks] ([Id], [Title]) VALUES (1, N'Делать дело')
INSERT [dbo].[PerformTasks] ([Id], [Title]) VALUES (2, N'Гулять смело')
INSERT [dbo].[PerformTasks] ([Id], [Title]) VALUES (3, N'приколы')
SET IDENTITY_INSERT [dbo].[PerformTasks] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Title]) VALUES (1, N'Директор')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (2, N'Конструктор')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (3, N'Менеджер')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (4, N'Мастер')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (5, N'Заказчик')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (6, N'Работник')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([Id], [Title], [Id_City]) VALUES (1, N'ул. Пушкина', 1)
INSERT [dbo].[Street] ([Id], [Title], [Id_City]) VALUES (2, N'ул. Колотушкина', 1)
INSERT [dbo].[Street] ([Id], [Title], [Id_City]) VALUES (3, N'ул. Павелецкая', 1)
INSERT [dbo].[Street] ([Id], [Title], [Id_City]) VALUES (4, N'ул. Солевая', 2)
INSERT [dbo].[Street] ([Id], [Title], [Id_City]) VALUES (5, N'пр. Мармеладовой', 2)
INSERT [dbo].[Street] ([Id], [Title], [Id_City]) VALUES (6, N'ул. Раскольникова', 2)
INSERT [dbo].[Street] ([Id], [Title], [Id_City]) VALUES (7, N'ул. Рихарда Зорге', 3)
INSERT [dbo].[Street] ([Id], [Title], [Id_City]) VALUES (8, N'ул. Чакчакова', 3)
INSERT [dbo].[Street] ([Id], [Title], [Id_City]) VALUES (9, N'ул. Треугольная', 3)
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1108, N'loginDEsar2018', N'2M2IQH', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1109, N'loginDEuxd2018', N'*PI3KN', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1110, N'loginDEepk2018', N'VZ&Ak7', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1111, N'loginDEjhb2018', N'PNvt8N', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1112, N'loginDExzi2018', N'{+1T1M', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1113, N'loginDEvva2018', N'G{q*LD', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1114, N'loginDEudz2018', N'Xcjvmi', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1115, N'loginDEyyj2018', N'z+U0XU', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1116, N'loginDEvdj2018', N'5Eq6d|', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1117, N'loginDErwk2018', N'|nZOKu', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1118, N'loginDElkc2018', N'BOvRGk', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1119, N'loginDEmge2018', N'C947}j', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1120, N'loginDEtol2018', N'&ksGM5', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1121, N'loginDEjwb2018', N'IQ+a01', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1122, N'loginDEzhf2018', N'xws6L9', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1123, N'loginDEobp2018', N'XNGjJy', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1124, N'loginDEloi2018', N'azEz+L', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1125, N'loginDEuau2018', N'FNnhJ1', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1126, N'loginDEdwi2018', N'n*aog&', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1127, N'loginDEecu2018', N's6FMJ|', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1128, N'loginDEdfk2018', N'aqgkFV', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1129, N'loginDEkxq2018', N'8igB2p', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1130, N'loginDEhqm2018', N'BPvGYj', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1131, N'loginDEyzm2018', N'*Nx7JS', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1132, N'loginDEzbd2018', N'hWTIZR', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1133, N'loginDEoni2018', N'phdlXA', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1134, N'loginDEewk2018', N'4baKX7', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1135, N'loginDEdfh2018', N't0CrUG', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1136, N'loginDEufs2018', N'7CLi&1', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1137, N'loginDEzsy2018', N'a6}lPi', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1138, N'loginDElzj2018', N'Ph0lH+', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1139, N'loginDEwtu2018', N'kVUA|*', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1140, N'loginDEpyt2018', N'VAwNEk', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1141, N'loginDEquw2018', N'65j6kZ', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1142, N'loginDEcxk2018', N'sM*fqO', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1143, N'loginDEnxq2018', N'|yxsob', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1144, N'loginDEpmm2018', N'wRERed', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1145, N'loginDEitt2018', N'L+OKpQ', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1146, N'loginDEttt2018', N'1YOnW3', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1147, N'loginDExrn2018', N'eaI8ng', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1148, N'loginDEelh2018', N'NNmfSo', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1149, N'loginDEwxd2018', N'Smjq0v', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1150, N'loginDEiho2018', N'UIlg{8', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1151, N'loginDEsyo2018', N'F743ca', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1152, N'loginDEmwq2018', N'YZ{snT', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1153, N'loginDEykk2018', N'EttWT{', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1154, N'loginDEell2018', N'7wQfBj', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1155, N'loginDEdys2018', N'B}2V7t', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1156, N'loginDEqoh2018', N'+xRJ|2', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1157, N'loginDEpdv2018', N'r1HuS2', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1158, N'loginDEzqn2018', N'Lgd57H', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1159, N'loginDEvzo2018', N'VO7mOE', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1160, N'loginDEiyy2018', N'Ip|*iS', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1161, N'loginDEdgv2018', N'kfmvXj', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1162, N'loginDEurj2018', N'9ImBsL', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1163, N'loginDEaul2018', N'MTZb+A', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1164, N'loginDEbdx2018', N'F|mMSS', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1165, N'loginDEyzp2018', N'wFCnHN', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1166, N'loginDErwb2018', N'v5RpBS', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1167, N'loginDEpri2018', N'RI2*T9', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1168, N'loginDEzpr2018', N'#ИМЯ?', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1169, N'loginDEhfv2018', N'QpAY63', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1170, N'loginDEyjy2018', N'20uyVz', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1171, N'loginDEejw2018', N'4}szdy', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1172, N'loginDEdby2018', N'rleZVk', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1173, N'loginDEzqk2018', N'TOOuow', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1174, N'loginDEjdf2018', N'*jzOGy', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1175, N'loginDEycc2018', N'YeTO&L', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1176, N'loginDEmoq2018', N'*bhJb4', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1177, N'loginDEgtz2018', N'Tv&BVy', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1178, N'loginDEkuy2018', N's4Vm64', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1179, N'loginDEpxb2018', N'wso}8C', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1180, N'loginDEbfn2018', N'RCt1Sk', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1181, N'loginDEhqt2018', N'EhWhoq', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1182, N'loginDExyh2018', N'CRk03h', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1183, N'loginDEjrd2018', N'8tl2a+', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1184, N'loginDEkma2018', N'jW{dgt', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1185, N'loginDEknj2018', N'hKZfoC', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1186, N'loginDEfvq2018', N'*uGVVE', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1187, N'loginDEvqh2018', N'oQmpma', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1188, N'loginDEcdg2018', N'UYNHsU', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1189, N'loginDEpdu2018', N'#ИМЯ?', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1190, N'loginDEgbi2018', N'c29wfj', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1191, N'loginDEklt2018', N'5QO|u4', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1192, N'loginDEbka2018', N'|AbflR', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1193, N'loginDEthx2018', N'+t}zCu', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1194, N'loginDErns2018', N'tz2wx5', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1195, N'loginDEybt2018', N'e7uyxU', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1196, N'loginDEoyy2018', N'4a0mnh', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1197, N'loginDEooj2018', N'GPf+Bw', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1205, N'loginDEzva2018', N'0vLvlW', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1208, N'loginDEeqk2018', N'I{iaU4', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1209, N'MRPenis', N'nukeNCR08', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1211, N'MRsPussy', N'huy', 6, N'Пенисов', N'Хуец', N'Аналович', N'Первичная', N'Среднее', CAST(N'2000-06-01' AS Date), 2, N'69', N'')
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1212, N'fgfdfda', N'sdfgdsfd', 6, N'dfddsfdbg', N'fsdsx', N'bdgfscd', N'Под задачи', N'Среднее-профессиональное', CAST(N'2024-10-18' AS Date), 5, N'34', N'21')
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1213, N'dfvgbhnjmkl;./', N'bhjkl;', 6, N'ghjklghjkl', N'hjol', N'jkl', N'Кросс-функциональная', N'Среднее-профессиональное', CAST(N'2024-10-18' AS Date), 7, N'23', N'232')
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1214, N'GHJMK,KJ', N'BNM,JKL', 6, N'JHJK', N'KJHGHJ', N'JHGHJKH', N'Кросс-функциональная', N'Среднее', CAST(N'2024-10-18' AS Date), 2, N'234', N'24')
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId], [Surname], [Name], [Patronymic], [Qualification], [Education], [BirthDate], [Id_Street], [House], [Flat]) VALUES (1215, N'логин', N'пароль', 6, N'логинов', N'Антон', N'салович', N'гавно', N'писяпопа', CAST(N'2024-10-18' AS Date), 1, N'43', N'23')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[User_Tasks] ON 

INSERT [dbo].[User_Tasks] ([Id], [Id_User], [Id_PT]) VALUES (4, 1211, 1)
INSERT [dbo].[User_Tasks] ([Id], [Id_User], [Id_PT]) VALUES (5, 1211, 2)
INSERT [dbo].[User_Tasks] ([Id], [Id_User], [Id_PT]) VALUES (6, 1212, 1)
INSERT [dbo].[User_Tasks] ([Id], [Id_User], [Id_PT]) VALUES (7, 1212, 2)
INSERT [dbo].[User_Tasks] ([Id], [Id_User], [Id_PT]) VALUES (8, 1213, 1)
INSERT [dbo].[User_Tasks] ([Id], [Id_User], [Id_PT]) VALUES (9, 1213, 2)
INSERT [dbo].[User_Tasks] ([Id], [Id_User], [Id_PT]) VALUES (10, 1213, 3)
INSERT [dbo].[User_Tasks] ([Id], [Id_User], [Id_PT]) VALUES (11, 1214, 3)
INSERT [dbo].[User_Tasks] ([Id], [Id_User], [Id_PT]) VALUES (12, 1213, 1)
INSERT [dbo].[User_Tasks] ([Id], [Id_User], [Id_PT]) VALUES (14, 1215, 1)
INSERT [dbo].[User_Tasks] ([Id], [Id_User], [Id_PT]) VALUES (15, 1215, 2)
SET IDENTITY_INSERT [dbo].[User_Tasks] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Mat_Desc]    Script Date: 18.10.2024 14:17:22 ******/
ALTER TABLE [dbo].[Description] ADD  CONSTRAINT [UQ_Mat_Desc] UNIQUE NONCLUSTERED 
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_EqDesc]    Script Date: 18.10.2024 14:17:22 ******/
ALTER TABLE [dbo].[EquipmentDesc] ADD  CONSTRAINT [UQ_EqDesc] UNIQUE NONCLUSTERED 
(
	[EquipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Material]    Script Date: 18.10.2024 14:17:22 ******/
ALTER TABLE [dbo].[Gost] ADD  CONSTRAINT [UQ_Material] UNIQUE NONCLUSTERED 
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_User]    Script Date: 18.10.2024 14:17:22 ******/
ALTER TABLE [dbo].[UserFullName] ADD  CONSTRAINT [UQ_User] UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Description]  WITH CHECK ADD  CONSTRAINT [FK_Description_Material] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[Description] CHECK CONSTRAINT [FK_Description_Material]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_EquipmentType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[EquipmentType] ([Id])
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_EquipmentType]
GO
ALTER TABLE [dbo].[EquipmentDesc]  WITH CHECK ADD  CONSTRAINT [FK_EquipmentDesc_Equipment] FOREIGN KEY([EquipmentId])
REFERENCES [dbo].[Equipment] ([Id])
GO
ALTER TABLE [dbo].[EquipmentDesc] CHECK CONSTRAINT [FK_EquipmentDesc_Equipment]
GO
ALTER TABLE [dbo].[Gost]  WITH CHECK ADD  CONSTRAINT [FK_Gost_Material] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[Gost] CHECK CONSTRAINT [FK_Gost_Material]
GO
ALTER TABLE [dbo].[Hardware]  WITH CHECK ADD  CONSTRAINT [FK_Hardware_HardwareType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[HardwareType] ([Id])
GO
ALTER TABLE [dbo].[Hardware] CHECK CONSTRAINT [FK_Hardware_HardwareType]
GO
ALTER TABLE [dbo].[Hardware]  WITH CHECK ADD  CONSTRAINT [FK_Hardware_HardwareUnit] FOREIGN KEY([UnitId])
REFERENCES [dbo].[HardwareUnit] ([Id])
GO
ALTER TABLE [dbo].[Hardware] CHECK CONSTRAINT [FK_Hardware_HardwareUnit]
GO
ALTER TABLE [dbo].[Hardware]  WITH CHECK ADD  CONSTRAINT [FK_Hardware_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[Hardware] CHECK CONSTRAINT [FK_Hardware_Supplier]
GO
ALTER TABLE [dbo].[HardwareImage]  WITH CHECK ADD  CONSTRAINT [FK_HardwareImage_Hardware] FOREIGN KEY([HardwareId])
REFERENCES [dbo].[Hardware] ([Id])
GO
ALTER TABLE [dbo].[HardwareImage] CHECK CONSTRAINT [FK_HardwareImage_Hardware]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MaterialType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[MaterialType] ([Id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MaterialType]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MaterialUnit] FOREIGN KEY([UnitId])
REFERENCES [dbo].[MaterialUnit] ([Id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MaterialUnit]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_Supplier]
GO
ALTER TABLE [dbo].[MaterialImage]  WITH CHECK ADD  CONSTRAINT [FK_MaterialImage_Material] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[MaterialImage] CHECK CONSTRAINT [FK_MaterialImage_Material]
GO
ALTER TABLE [dbo].[MaterialLength]  WITH CHECK ADD  CONSTRAINT [FK_MaterialLength_Material] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[MaterialLength] CHECK CONSTRAINT [FK_MaterialLength_Material]
GO
ALTER TABLE [dbo].[ProductContent]  WITH CHECK ADD  CONSTRAINT [FK_ProductContent_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductContent] CHECK CONSTRAINT [FK_ProductContent_Product]
GO
ALTER TABLE [dbo].[ProductContent]  WITH CHECK ADD  CONSTRAINT [FK_ProductContent_Product1] FOREIGN KEY([ContentId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductContent] CHECK CONSTRAINT [FK_ProductContent_Product1]
GO
ALTER TABLE [dbo].[ProductHardware]  WITH CHECK ADD  CONSTRAINT [FK_ProductHardware_Hardware] FOREIGN KEY([HardwareId])
REFERENCES [dbo].[Hardware] ([Id])
GO
ALTER TABLE [dbo].[ProductHardware] CHECK CONSTRAINT [FK_ProductHardware_Hardware]
GO
ALTER TABLE [dbo].[ProductHardware]  WITH CHECK ADD  CONSTRAINT [FK_ProductHardware_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductHardware] CHECK CONSTRAINT [FK_ProductHardware_Product]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Material] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[Material] ([Id])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Material]
GO
ALTER TABLE [dbo].[ProductMaterial]  WITH CHECK ADD  CONSTRAINT [FK_ProductMaterial_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductMaterial] CHECK CONSTRAINT [FK_ProductMaterial_Product]
GO
ALTER TABLE [dbo].[ProductOperation]  WITH CHECK ADD  CONSTRAINT [FK_ProductOperation_EquipmentType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[EquipmentType] ([Id])
GO
ALTER TABLE [dbo].[ProductOperation] CHECK CONSTRAINT [FK_ProductOperation_EquipmentType]
GO
ALTER TABLE [dbo].[ProductOperation]  WITH CHECK ADD  CONSTRAINT [FK_ProductOperation_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductOperation] CHECK CONSTRAINT [FK_ProductOperation_Product]
GO
ALTER TABLE [dbo].[Street]  WITH CHECK ADD  CONSTRAINT [FK_Street_City] FOREIGN KEY([Id_City])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[Street] CHECK CONSTRAINT [FK_Street_City]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Street] FOREIGN KEY([Id_Street])
REFERENCES [dbo].[Street] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Street]
GO
ALTER TABLE [dbo].[User_Tasks]  WITH CHECK ADD  CONSTRAINT [FK_User_Tasks_PerformTasks] FOREIGN KEY([Id_PT])
REFERENCES [dbo].[PerformTasks] ([Id])
GO
ALTER TABLE [dbo].[User_Tasks] CHECK CONSTRAINT [FK_User_Tasks_PerformTasks]
GO
ALTER TABLE [dbo].[User_Tasks]  WITH CHECK ADD  CONSTRAINT [FK_User_Tasks_User] FOREIGN KEY([Id_User])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[User_Tasks] CHECK CONSTRAINT [FK_User_Tasks_User]
GO
ALTER TABLE [dbo].[UserFullName]  WITH CHECK ADD  CONSTRAINT [FK_UserFullName_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserFullName] CHECK CONSTRAINT [FK_UserFullName_User]
GO
ALTER TABLE [dbo].[UserImage]  WITH CHECK ADD  CONSTRAINT [FK_UserImage_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[UserImage] CHECK CONSTRAINT [FK_UserImage_User]
GO
USE [master]
GO
ALTER DATABASE [Uchebka123k4s1SQL] SET  READ_WRITE 
GO
