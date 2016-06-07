USE [FASTDB]
GO

/****** Object:  Table [dbo].[AssignmentStatus]    Script Date: 13/12/2015 01:36:02 ******/
DROP TABLE [dbo].[AssignmentStatus]
GO

/****** Object:  Table [dbo].[AssignmentStatus]    Script Date: 13/12/2015 01:36:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AssignmentStatus](
	[AssignmentStatusID] [smallint] IDENTITY(1,1) NOT NULL,
	[StatusDescription] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AssignmentStatus] PRIMARY KEY CLUSTERED 
(
	[AssignmentStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

