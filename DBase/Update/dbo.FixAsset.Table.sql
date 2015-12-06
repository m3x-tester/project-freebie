USE [FASTDB]
GO

/****** Object:  Table [dbo].[FixAsset]    Script Date: 06/12/2015 12:42:54 ******/
DROP TABLE [dbo].[FixAsset]
GO

/****** Object:  Table [dbo].[FixAsset]    Script Date: 06/12/2015 12:42:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FixAsset](
	[FixAssetID] [int] IDENTITY(1,1) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[SerialNumber] [nvarchar](50) NOT NULL,
	[AssetTag] [nvarchar](50) NOT NULL,
	[Brand] [nvarchar](50) NOT NULL,
	[Remarks] [text] NULL,
	[AcquisitionDate] [date] NULL,
	[ExpiryDate] [date] NULL,
	[IssuerID] [int] NULL,
	[LocationID] [int] NULL,
	[AssetTypeID] [int] NOT NULL,
	[AssetStatusID] [int] NOT NULL,
 CONSTRAINT [PK_FixAssets] PRIMARY KEY CLUSTERED 
(
	[FixAssetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

