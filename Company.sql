USE [Company]
GO
/****** Object:  Table [dbo].[Portofolio]    Script Date: 5/29/2020 8:56:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Portofolio](
	[Prt_Id] [int] IDENTITY(1,1) NOT NULL,
	[Prt_Name] [nvarchar](100) NOT NULL,
	[Prt_Date] [date] NULL,
	[Prt_Client] [nvarchar](50) NULL,
	[Prt_Categry] [nvarchar](50) NULL,
	[Prt_img] [nvarchar](150) NULL,
 CONSTRAINT [PK_Portofolio] PRIMARY KEY CLUSTERED 
(
	[Prt_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Service]    Script Date: 5/29/2020 8:56:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[sr_Id] [int] IDENTITY(1,1) NOT NULL,
	[sr_Name] [nvarchar](50) NOT NULL,
	[sr_Dis] [nvarchar](200) NULL,
	[sr_Class] [nvarchar](100) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[sr_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Team]    Script Date: 5/29/2020 8:56:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[tm_Id] [int] IDENTITY(1,1) NOT NULL,
	[tm_Name] [nvarchar](50) NOT NULL,
	[tm_job] [nvarchar](50) NOT NULL,
	[tm_Tw] [nvarchar](100) NULL,
	[tm_Fc] [nvarchar](100) NULL,
	[tm_Ln] [nvarchar](100) NULL,
	[tm_img] [nvarchar](150) NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[tm_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Portofolio] ON 

INSERT [dbo].[Portofolio] ([Prt_Id], [Prt_Name], [Prt_Date], [Prt_Client], [Prt_Categry], [Prt_img]) VALUES (2, N'Glory', CAST(N'2000-01-01' AS Date), NULL, N'Illustration', N'05-thumbnail.jpg')
INSERT [dbo].[Portofolio] ([Prt_Id], [Prt_Name], [Prt_Date], [Prt_Client], [Prt_Categry], [Prt_img]) VALUES (3, N'Threads', NULL, NULL, N'Illustration', N'04-thumbnail.jpg')
INSERT [dbo].[Portofolio] ([Prt_Id], [Prt_Name], [Prt_Date], [Prt_Client], [Prt_Categry], [Prt_img]) VALUES (6, N'devs', CAST(N'2000-01-01' AS Date), N'esraa', N'Illustration', N'06-thumbnail.jpg')
INSERT [dbo].[Portofolio] ([Prt_Id], [Prt_Name], [Prt_Date], [Prt_Client], [Prt_Categry], [Prt_img]) VALUES (11, N'Threads', CAST(N'2000-01-01' AS Date), NULL, N'Illustration', N'03-thumbnail.jpg')
INSERT [dbo].[Portofolio] ([Prt_Id], [Prt_Name], [Prt_Date], [Prt_Client], [Prt_Categry], [Prt_img]) VALUES (66, N'design', NULL, NULL, N'designs', N'06-thumbnail.jpg')
INSERT [dbo].[Portofolio] ([Prt_Id], [Prt_Name], [Prt_Date], [Prt_Client], [Prt_Categry], [Prt_img]) VALUES (67, N'design', CAST(N'2000-01-01' AS Date), NULL, N'designs', N'02-thumbnail.jpg')
SET IDENTITY_INSERT [dbo].[Portofolio] OFF
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([sr_Id], [sr_Name], [sr_Dis], [sr_Class]) VALUES (2, N'IT', N'
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.', N'fa-stack fa-4x')
INSERT [dbo].[Service] ([sr_Id], [sr_Name], [sr_Dis], [sr_Class]) VALUES (3, N'Web Design', N'
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.', N'fa-stack fa-4x')
INSERT [dbo].[Service] ([sr_Id], [sr_Name], [sr_Dis], [sr_Class]) VALUES (1005, N'Developmet ', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.', N'fa-stack fa-4x')
INSERT [dbo].[Service] ([sr_Id], [sr_Name], [sr_Dis], [sr_Class]) VALUES (1006, N'Data', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.', N'fa-stack fa-4x')
INSERT [dbo].[Service] ([sr_Id], [sr_Name], [sr_Dis], [sr_Class]) VALUES (1007, N'Analysis', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.', N'fa-stack fa-4x')
SET IDENTITY_INSERT [dbo].[Service] OFF
SET IDENTITY_INSERT [dbo].[Team] ON 

INSERT [dbo].[Team] ([tm_Id], [tm_Name], [tm_job], [tm_Tw], [tm_Fc], [tm_Ln], [tm_img]) VALUES (1, N'Esraa', N'Full Stack', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Team] OFF
