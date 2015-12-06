USE [FASTDB]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 06/12/2015 12:36:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionType] [int] NOT NULL,
	[RequesterID] [int] NOT NULL,
	[ReceipientID] [int] NOT NULL,
	[TransactionStatusID] [int] NOT NULL,
	[RequestDate] [date] NOT NULL,
	[ApprovalDate] [date] NULL,
	[Approver] [int] NULL,
	[Remarks] [text] NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
