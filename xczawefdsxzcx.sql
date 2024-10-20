USE [Uchebka123k4s1SQL]
GO
/****** Object:  Table [dbo].[Description]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[Equipment]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[EquipmentDesc]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[EquipmentType]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[Gost]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[Hardware]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[HardwareImage]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[HardwareType]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[HardwareUnit]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[Material]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[MaterialImage]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[MaterialLength]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[MaterialType]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[MaterialUnit]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[ProductContent]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[ProductHardware]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[ProductMaterial]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[ProductOperation]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[Supplier]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 14.10.2024 13:27:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFullName]    Script Date: 14.10.2024 13:27:12 ******/
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
/****** Object:  Table [dbo].[UserImage]    Script Date: 14.10.2024 13:27:12 ******/
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
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Title]) VALUES (1, N'Директор')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (2, N'Конструктор')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (3, N'Менеджер')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (4, N'Мастер')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (5, N'Заказчик')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (6, N' Заказчик')
INSERT [dbo].[Role] ([Id], [Title]) VALUES (7, N' Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1108, N'loginDEsar2018', N'2M2IQH', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1109, N'loginDEuxd2018', N'*PI3KN', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1110, N'loginDEepk2018', N'VZ&Ak7', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1111, N'loginDEjhb2018', N'PNvt8N', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1112, N'loginDExzi2018', N'{+1T1M', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1113, N'loginDEvva2018', N'G{q*LD', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1114, N'loginDEudz2018', N'Xcjvmi', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1115, N'loginDEyyj2018', N'z+U0XU', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1116, N'loginDEvdj2018', N'5Eq6d|', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1117, N'loginDErwk2018', N'|nZOKu', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1118, N'loginDElkc2018', N'BOvRGk', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1119, N'loginDEmge2018', N'C947}j', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1120, N'loginDEtol2018', N'&ksGM5', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1121, N'loginDEjwb2018', N'IQ+a01', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1122, N'loginDEzhf2018', N'xws6L9', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1123, N'loginDEobp2018', N'XNGjJy', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1124, N'loginDEloi2018', N'azEz+L', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1125, N'loginDEuau2018', N'FNnhJ1', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1126, N'loginDEdwi2018', N'n*aog&', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1127, N'loginDEecu2018', N's6FMJ|', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1128, N'loginDEdfk2018', N'aqgkFV', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1129, N'loginDEkxq2018', N'8igB2p', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1130, N'loginDEhqm2018', N'BPvGYj', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1131, N'loginDEyzm2018', N'*Nx7JS', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1132, N'loginDEzbd2018', N'hWTIZR', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1133, N'loginDEoni2018', N'phdlXA', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1134, N'loginDEewk2018', N'4baKX7', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1135, N'loginDEdfh2018', N't0CrUG', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1136, N'loginDEufs2018', N'7CLi&1', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1137, N'loginDEzsy2018', N'a6}lPi', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1138, N'loginDElzj2018', N'Ph0lH+', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1139, N'loginDEwtu2018', N'kVUA|*', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1140, N'loginDEpyt2018', N'VAwNEk', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1141, N'loginDEquw2018', N'65j6kZ', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1142, N'loginDEcxk2018', N'sM*fqO', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1143, N'loginDEnxq2018', N'|yxsob', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1144, N'loginDEpmm2018', N'wRERed', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1145, N'loginDEitt2018', N'L+OKpQ', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1146, N'loginDEttt2018', N'1YOnW3', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1147, N'loginDExrn2018', N'eaI8ng', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1148, N'loginDEelh2018', N'NNmfSo', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1149, N'loginDEwxd2018', N'Smjq0v', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1150, N'loginDEiho2018', N'UIlg{8', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1151, N'loginDEsyo2018', N'F743ca', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1152, N'loginDEmwq2018', N'YZ{snT', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1153, N'loginDEykk2018', N'EttWT{', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1154, N'loginDEell2018', N'7wQfBj', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1155, N'loginDEdys2018', N'B}2V7t', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1156, N'loginDEqoh2018', N'+xRJ|2', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1157, N'loginDEpdv2018', N'r1HuS2', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1158, N'loginDEzqn2018', N'Lgd57H', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1159, N'loginDEvzo2018', N'VO7mOE', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1160, N'loginDEiyy2018', N'Ip|*iS', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1161, N'loginDEdgv2018', N'kfmvXj', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1162, N'loginDEurj2018', N'9ImBsL', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1163, N'loginDEaul2018', N'MTZb+A', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1164, N'loginDEbdx2018', N'F|mMSS', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1165, N'loginDEyzp2018', N'wFCnHN', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1166, N'loginDErwb2018', N'v5RpBS', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1167, N'loginDEpri2018', N'RI2*T9', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1168, N'loginDEzpr2018', N'#ИМЯ?', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1169, N'loginDEhfv2018', N'QpAY63', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1170, N'loginDEyjy2018', N'20uyVz', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1171, N'loginDEejw2018', N'4}szdy', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1172, N'loginDEdby2018', N'rleZVk', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1173, N'loginDEzqk2018', N'TOOuow', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1174, N'loginDEjdf2018', N'*jzOGy', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1175, N'loginDEycc2018', N'YeTO&L', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1176, N'loginDEmoq2018', N'*bhJb4', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1177, N'loginDEgtz2018', N'Tv&BVy', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1178, N'loginDEkuy2018', N's4Vm64', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1179, N'loginDEpxb2018', N'wso}8C', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1180, N'loginDEbfn2018', N'RCt1Sk', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1181, N'loginDEhqt2018', N'EhWhoq', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1182, N'loginDExyh2018', N'CRk03h', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1183, N'loginDEjrd2018', N'8tl2a+', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1184, N'loginDEkma2018', N'jW{dgt', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1185, N'loginDEknj2018', N'hKZfoC', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1186, N'loginDEfvq2018', N'*uGVVE', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1187, N'loginDEvqh2018', N'oQmpma', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1188, N'loginDEcdg2018', N'UYNHsU', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1189, N'loginDEpdu2018', N'#ИМЯ?', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1190, N'loginDEgbi2018', N'c29wfj', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1191, N'loginDEklt2018', N'5QO|u4', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1192, N'loginDEbka2018', N'|AbflR', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1193, N'loginDEthx2018', N'+t}zCu', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1194, N'loginDErns2018', N'tz2wx5', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1195, N'loginDEybt2018', N'e7uyxU', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1196, N'loginDEoyy2018', N'4a0mnh', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1197, N'loginDEooj2018', N'GPf+Bw', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1198, N'loginDExbs2018', N'I6DDeV', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1199, N'loginDEafi2018', N'hN8}Tj', 1)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1200, N'loginDEzyb2018', N'ZG73**', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1201, N'loginDEhwk2018', N'TeoCY0', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1202, N'loginDEzby2018', N'n|MYCO', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1203, N'loginDExzu2018', N'Sch+GG', 3)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1204, N'loginDExzf2018', N'6cmjFd', 4)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1205, N'loginDEzva2018', N'0vLvlW', 5)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1206, N'loginDEdya2018', N'tS2NmR', 2)
GO
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1207, N'loginDEaou2018', N'1E6ONr', 2)
INSERT [dbo].[User] ([Id], [Login], [Password], [RoleId]) VALUES (1208, N'loginDEeqk2018', N'I{iaU4', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Mat_Desc]    Script Date: 14.10.2024 13:27:12 ******/
ALTER TABLE [dbo].[Description] ADD  CONSTRAINT [UQ_Mat_Desc] UNIQUE NONCLUSTERED 
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_EqDesc]    Script Date: 14.10.2024 13:27:12 ******/
ALTER TABLE [dbo].[EquipmentDesc] ADD  CONSTRAINT [UQ_EqDesc] UNIQUE NONCLUSTERED 
(
	[EquipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Material]    Script Date: 14.10.2024 13:27:12 ******/
ALTER TABLE [dbo].[Gost] ADD  CONSTRAINT [UQ_Material] UNIQUE NONCLUSTERED 
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_User]    Script Date: 14.10.2024 13:27:12 ******/
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
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
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
