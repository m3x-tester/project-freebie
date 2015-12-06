USE [FASTDB]
GO

/****** Object:  Table [dbo].[AssetStatus]    Script Date: 06/12/2015 12:41:57 ******/
DROP TABLE [dbo].[AssetStatus]
GO

/****** Object:  Table [dbo].[AssetStatus]    Script Date: 06/12/2015 12:41:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AssetStatus](
	[AssetStatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusDescription] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AssetStatus] PRIMARY KEY CLUSTERED 
(
	[AssetStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

