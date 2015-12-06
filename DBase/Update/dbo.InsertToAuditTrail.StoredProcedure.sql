USE [FASTDB]
GO
/****** Object:  StoredProcedure [dbo].[InsertToAuditTrail]    Script Date: 06/12/2015 12:36:36 ******/
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
