USE [FASTDB]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 06/12/2015 20:34:02 ******/
DROP TABLE [dbo].[Employee]
GO

/****** Object:  Table [dbo].[Employee]    Script Date: 06/12/2015 20:34:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [nvarchar](35) NOT NULL,
	[MiddleName] [nvarchar](35) NULL,
	[LastName] [nvarchar](35) NOT NULL,
	[ManagerID] [int] NULL,
	[Gender] [nvarchar](6) NOT NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[EmailAddress] [nvarchar](60) NOT NULL,
	[DepartmentID] [int] NULL,
	[PositionID] [int] NULL,
	[IsCompany] [smallint] NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Status] [smallint] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

