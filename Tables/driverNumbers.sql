/*
	Created by RIS-001\Rich using dbatools Export-DbaScript for objects on RIS-001 at 03/25/2024 09:23:20
	See https://dbatools.io/Export-DbaScript for more information
*/
USE [SequelFormulaV2]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[driverNumbers](
	[driverNumberID] [int] NULL,
	[number] [int] NULL,
	[driverID] [int] NULL,
	[constructorID] [int] NULL,
	[season] [int] NULL,
	[sub] [nvarchar](50) NULL,
	[retired] [nvarchar](50) NULL
) ON [PRIMARY]
GO
