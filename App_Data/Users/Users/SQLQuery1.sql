USE [C:\USERS\VIRTU\ONEDRIVE\DOCUMENTS\VISUAL STUDIO 2019\PROJECTS\217010968\APP_DATA\USERS.MDF]
GO
/****** Object: Table [dbo].[Users] Script Date: 12/04/2013 23:58:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
[ID] [Int] NOT NULL,
[Name] [nvarchar](50) NULL,
[Address] [nvarchar](100) NULL,
[Town] [nvarchar](50) NULL,
[County] [nvarchar](50) NULL,
[Country] [nvarchar](50) NULL,
[Email] [nvarchar](50) NULL,
[Date Of Birth] [date] NULL,
[IsActive] [Bit],
[UserName] [nvarchar](50) NULL,
[Password] [nvarchar](50),
[Rating] [Int],
CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED
(
[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[User] ([ID], [Name], [Address], [Town], [County], [Country],
[Email], [Date Of Birth], [IsActive], [UserName], [Password], [Rating]) VALUES (N'2', N'J Ramabolu', N'41 Murray Street', N'Virginia',
N'Doorn',N'South Africa', N'JRamabolu@test.com',CONVERT( date,'1996-03-25'), 1, N'TopDog', N'TopDog',5)