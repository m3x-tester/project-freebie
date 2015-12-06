USE [FASTDB]
GO

/****** Object:  Table [dbo].[Issuer]    Script Date: 06/12/2015 12:43:05 ******/
DROP TABLE [dbo].[Issuer]
GO

/****** Object:  Table [dbo].[Issuer]    Script Date: 06/12/2015 12:43:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Issuer](
	[IssuerID] [int] IDENTITY(1,1) NOT NULL,
	[IssuerType] [int] NOT NULL,
	[IssuerName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Issuers] PRIMARY KEY CLUSTERED 
(
	[IssuerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

