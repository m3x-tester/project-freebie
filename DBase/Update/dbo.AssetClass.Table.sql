USE [FASTDB]
GO
/****** Object:  Table [dbo].[AssetClass]    Script Date: 06/12/2015 12:36:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetClass](
	[AssetClassID] [int] IDENTITY(1,1) NOT NULL,
	[ClassDescription] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AssetClass] PRIMARY KEY CLUSTERED 
(
	[AssetClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
