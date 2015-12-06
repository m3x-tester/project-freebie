USE [FASTDB]
GO
/****** Object:  Table [dbo].[AssetAssignment]    Script Date: 06/12/2015 12:36:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetAssignment](
	[AssetAssignmentID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[FixAssetID] [int] NOT NULL,
	[AssignmentStatusID] [int] NOT NULL,
	[DateAssigned] [date] NULL,
	[DateReleased] [date] NULL,
	[Remarks] [text] NULL,
 CONSTRAINT [PK_AssetAssignment] PRIMARY KEY CLUSTERED 
(
	[AssetAssignmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
