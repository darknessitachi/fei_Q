USE [main]
GO
/****** Object:  Table [dbo].[whetherCanAdd]    Script Date: 01/05/2012 16:37:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[whetherCanAdd](
	[qq] [varchar](7) NOT NULL,
	[can] [int] NOT NULL,
 CONSTRAINT [PK_whetherCanAdd] PRIMARY KEY CLUSTERED 
(
	[qq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[systemMessage]    Script Date: 01/05/2012 16:37:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[systemMessage](
	[qq] [varchar](7) NOT NULL,
	[warning] [nvarchar](100) NULL,
 CONSTRAINT [PK_systemMessage] PRIMARY KEY CLUSTERED 
(
	[qq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qqIp]    Script Date: 01/05/2012 16:37:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qqIp](
	[qq] [varchar](7) NOT NULL,
	[ip] [varchar](15) NULL,
	[date] [varchar](30) NULL,
 CONSTRAINT [PK_qqIp] PRIMARY KEY CLUSTERED 
(
	[qq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[password]    Script Date: 01/05/2012 16:37:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[password](
	[qq] [varchar](7) NOT NULL,
	[password] [varchar](20) NULL,
 CONSTRAINT [PK_password] PRIMARY KEY CLUSTERED 
(
	[qq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mainInfo]    Script Date: 01/05/2012 16:37:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mainInfo](
	[qq] [varchar](7) NOT NULL,
	[nickname] [nvarchar](20) NOT NULL,
	[sex] [nvarchar](3) NULL,
	[age] [int] NULL,
	[birthday_year] [int] NULL,
	[birthday_month] [int] NULL,
	[birthday_day] [int] NULL,
	[animal] [nvarchar](3) NULL,
	[constellation] [nvarchar](8) NULL,
	[bloodType] [varchar](2) NULL,
	[country] [nvarchar](30) NULL,
	[province] [nvarchar](20) NULL,
	[city] [nvarchar](20) NULL,
	[headImage] [int] NULL,
	[status] [int] NULL,
	[signature] [varchar](60) NULL,
	[phoneNumber] [varchar](11) NULL,
	[collage] [nvarchar](30) NULL,
	[personalInfo] [nvarchar](200) NULL,
	[language] [nvarchar](10) NULL,
	[occupation] [nvarchar](20) NULL,
 CONSTRAINT [PK_mainInfo] PRIMARY KEY CLUSTERED 
(
	[qq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mailAdress]    Script Date: 01/05/2012 16:37:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mailAdress](
	[qq] [varchar](7) NOT NULL,
	[adress] [varchar](30) NULL,
 CONSTRAINT [PK_mailAdress] PRIMARY KEY CLUSTERED 
(
	[qq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ipCount]    Script Date: 01/05/2012 16:37:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ipCount](
	[ip] [varchar](15) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[canUse]    Script Date: 01/05/2012 16:37:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[canUse](
	[qq] [varchar](7) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_mainInfo_age]    Script Date: 01/05/2012 16:37:59 ******/
ALTER TABLE [dbo].[mainInfo] ADD  CONSTRAINT [DF_mainInfo_age]  DEFAULT ((0)) FOR [age]
GO
/****** Object:  Default [DF_mainInfo_country]    Script Date: 01/05/2012 16:37:59 ******/
ALTER TABLE [dbo].[mainInfo] ADD  CONSTRAINT [DF_mainInfo_country]  DEFAULT (N'中华人民共和国') FOR [country]
GO
/****** Object:  Default [DF_mainInfo_headImage]    Script Date: 01/05/2012 16:37:59 ******/
ALTER TABLE [dbo].[mainInfo] ADD  CONSTRAINT [DF_mainInfo_headImage]  DEFAULT ((1)) FOR [headImage]
GO
/****** Object:  Default [DF_mainInfo_status]    Script Date: 01/05/2012 16:37:59 ******/
ALTER TABLE [dbo].[mainInfo] ADD  CONSTRAINT [DF_mainInfo_status]  DEFAULT ((0)) FOR [status]
GO
/****** Object:  Default [DF_mainInfo_language]    Script Date: 01/05/2012 16:37:59 ******/
ALTER TABLE [dbo].[mainInfo] ADD  CONSTRAINT [DF_mainInfo_language]  DEFAULT (N'汉语') FOR [language]
GO
/****** Object:  Default [DF_whetherCanAdd_can]    Script Date: 01/05/2012 16:37:59 ******/
ALTER TABLE [dbo].[whetherCanAdd] ADD  CONSTRAINT [DF_whetherCanAdd_can]  DEFAULT ((2)) FOR [can]
GO
