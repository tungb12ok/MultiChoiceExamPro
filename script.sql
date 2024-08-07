USE [EOS_Final_Project]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/10/2024 11:08:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 7/10/2024 11:08:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NULL,
	[Anwser] [nchar](10) NULL,
	[Type_Id] [int] NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Results]    Script Date: 7/10/2024 11:08:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[TypeID] [int] NULL,
	[Grade] [float] NULL,
 CONSTRAINT [PK_Results] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 7/10/2024 11:08:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NULL,
	[Time] [int] NOT NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/10/2024 11:08:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Rold_ID] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240710152211_Initial', N'7.0.9')
GO
SET IDENTITY_INSERT [dbo].[Quiz] ON 

INSERT [dbo].[Quiz] ([Id], [Question], [Anwser], [Type_Id]) VALUES (2, N'Which of the following are true statements about the Android apps? (Choose 2 answers)
A. The bulk of these apps are written in C/C++
B. The bulk of these apps are written in Java
C. It''s possible to write portions of the apps in C/C++
D. These apps cannot be written in C/C++', N'BD        ', 3)
INSERT [dbo].[Quiz] ([Id], [Question], [Anwser], [Type_Id]) VALUES (3, N'Android: How do we execute Queries?
Select one:
a. rawQuery()/query()
b. doQuery()
c. query()
d. rawQuery()', N'A         ', 3)
INSERT [dbo].[Quiz] ([Id], [Question], [Anwser], [Type_Id]) VALUES (4, N'Which of the following are layout managers provided by Android? (Choose 3 answers)
A. LinearLayoutManager
B. GridLayoutManager
C. CircularLayoutManager
D. StaggeredGridLayoutManager', N'ABD       ', 3)
INSERT [dbo].[Quiz] ([Id], [Question], [Anwser], [Type_Id]) VALUES (5, N'To share data for other application, the other application must be using ________ to access data from content provider.
Select one:
a. Content Uri
b. Content provider name
c. Data model
d. Path to data file', N'A         ', 4)
INSERT [dbo].[Quiz] ([Id], [Question], [Anwser], [Type_Id]) VALUES (6, N'Which file contain Android permissions for and application?
Select one:
a. Manifest.xml
b. ApplicationManifest.xml
c. AndroidManifest.xml
d. Permission.xml', N'BC        ', 4)
SET IDENTITY_INSERT [dbo].[Quiz] OFF
GO
SET IDENTITY_INSERT [dbo].[Results] ON 

INSERT [dbo].[Results] ([ID], [UserID], [TypeID], [Grade]) VALUES (1, 2, 3, 10)
INSERT [dbo].[Results] ([ID], [UserID], [TypeID], [Grade]) VALUES (2, 3, 3, 6.67)
INSERT [dbo].[Results] ([ID], [UserID], [TypeID], [Grade]) VALUES (3, 4, 4, 0)
INSERT [dbo].[Results] ([ID], [UserID], [TypeID], [Grade]) VALUES (4, 4, 3, 0)
SET IDENTITY_INSERT [dbo].[Results] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([Id], [Name], [Code], [Time]) VALUES (3, N'PRN211 final exam', N'PRN211_FE_21132', 60)
INSERT [dbo].[Type] ([Id], [Name], [Code], [Time]) VALUES (4, N'PRN211', N'PRN211_FE_SU24_203123', 60)
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Username], [Password], [Rold_ID]) VALUES (1, N'abc123', N'123', 1)
INSERT [dbo].[User] ([Id], [Username], [Password], [Rold_ID]) VALUES (2, N'student1', N'123', 2)
INSERT [dbo].[User] ([Id], [Username], [Password], [Rold_ID]) VALUES (3, N'student2', N'123', 2)
INSERT [dbo].[User] ([Id], [Username], [Password], [Rold_ID]) VALUES (4, N'adasdasd', N'123', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Type] FOREIGN KEY([Type_Id])
REFERENCES [dbo].[Type] ([Id])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_Type]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Type] FOREIGN KEY([TypeID])
REFERENCES [dbo].[Type] ([Id])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Type]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_User]
GO
