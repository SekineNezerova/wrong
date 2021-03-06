USE [Library]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 4/14/2022 11:53:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 4/14/2022 11:53:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[AuthorId] [int] NULL,
	[GenreId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 4/14/2022 11:53:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([Id], [Name], [Surname]) VALUES (1, N'William', N'Shakespeare')
INSERT [dbo].[Authors] ([Id], [Name], [Surname]) VALUES (2, N'Leo', N'Tolstoy')
INSERT [dbo].[Authors] ([Id], [Name], [Surname]) VALUES (3, N'Mario', N'Puzo')
INSERT [dbo].[Authors] ([Id], [Name], [Surname]) VALUES (4, N'Stephen ', N'King')
SET IDENTITY_INSERT [dbo].[Authors] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [Name], [AuthorId], [GenreId]) VALUES (1, N'If It Bleeds', 4, 2)
INSERT [dbo].[Books] ([Id], [Name], [AuthorId], [GenreId]) VALUES (2, N'The GodFather', 3, 3)
INSERT [dbo].[Books] ([Id], [Name], [AuthorId], [GenreId]) VALUES (3, N'Hamlet', 1, 1)
INSERT [dbo].[Books] ([Id], [Name], [AuthorId], [GenreId]) VALUES (4, N'Anna Karanina', 2, 4)
INSERT [dbo].[Books] ([Id], [Name], [AuthorId], [GenreId]) VALUES (5, N'War and Peace', 2, 5)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([Id], [Name]) VALUES (1, N'Tragedy')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (2, N'Horror')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (3, N'Mystery')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (4, N'Realist')
INSERT [dbo].[Genres] ([Id], [Name]) VALUES (5, N'Historical')
SET IDENTITY_INSERT [dbo].[Genres] OFF
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genres] ([Id])
GO
