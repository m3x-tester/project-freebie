USE [master]
GO
/****** Object:  Database [FASTDB]    Script Date: 06/12/2015 09:49:14 ******/
CREATE DATABASE [FASTDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FASTDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FASTDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FASTDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FASTDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FASTDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FASTDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FASTDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FASTDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FASTDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FASTDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FASTDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FASTDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FASTDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FASTDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FASTDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FASTDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FASTDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FASTDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FASTDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FASTDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FASTDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FASTDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FASTDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FASTDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FASTDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FASTDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FASTDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FASTDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FASTDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FASTDB] SET  MULTI_USER 
GO
ALTER DATABASE [FASTDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FASTDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FASTDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FASTDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FASTDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [FASTDB]
GO
/****** Object:  Table [dbo].[AccessRight]    Script Date: 06/12/2015 09:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessRight](
	[AccessID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[AccessLevel] [smallint] NOT NULL,
	[Status] [smallint] NOT NULL,
 CONSTRAINT [PK_AccessRights] PRIMARY KEY CLUSTERED 
(
	[AccessID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AssetAssignment]    Script Date: 06/12/2015 09:49:14 ******/
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
/****** Object:  Table [dbo].[AssetClass]    Script Date: 06/12/2015 09:49:14 ******/
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
/****** Object:  Table [dbo].[AssetStatus]    Script Date: 06/12/2015 09:49:14 ******/
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
/****** Object:  Table [dbo].[AssetType]    Script Date: 06/12/2015 09:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssetType](
	[AssetTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TypeDescription] [nvarchar](50) NOT NULL,
	[AssetClassID] [int] NOT NULL,
 CONSTRAINT [PK_AssetType] PRIMARY KEY CLUSTERED 
(
	[AssetTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AuditTrail]    Script Date: 06/12/2015 09:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditTrail](
	[AuditTrailID] [bigint] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[Action] [nvarchar](50) NOT NULL,
	[AdditionalInformation] [nvarchar](50) NULL,
 CONSTRAINT [PK_AuditTrail] PRIMARY KEY CLUSTERED 
(
	[AuditTrailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 06/12/2015 09:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 06/12/2015 09:49:14 ******/
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
	[DepartmentID] [int] NOT NULL,
	[PositionID] [int] NOT NULL,
	[IsCompany] [smallint] NOT NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Status] [smallint] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FixAsset]    Script Date: 06/12/2015 09:49:14 ******/
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
/****** Object:  Table [dbo].[Issuer]    Script Date: 06/12/2015 09:49:14 ******/
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
/****** Object:  Table [dbo].[Location]    Script Date: 06/12/2015 09:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](50) NOT NULL,
	[Country] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Position]    Script Date: 06/12/2015 09:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[PositionID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[PositionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Registration]    Script Date: 06/12/2015 09:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[RegistrationID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Status] [smallint] NOT NULL,
	[DateStamp] [date] NOT NULL,
 CONSTRAINT [PK_Registrations] PRIMARY KEY CLUSTERED 
(
	[RegistrationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 06/12/2015 09:49:14 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertToAuditTrail]    Script Date: 06/12/2015 09:49:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertToAuditTrail] 
	-- Add the parameters for the stored procedure here
	@employeeID int, 
	@action nvarchar(50),
	@extraInfo nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO dbo.AuditTrail
           ([Date]
           ,[EmployeeID]
           ,[Action]
           ,[AdditionalInformation])
     VALUES
           (GETDATE(),
            @employeeID,
            @action,
            @extraInfo)
END

GO
USE [master]
GO
ALTER DATABASE [FASTDB] SET  READ_WRITE 
GO
