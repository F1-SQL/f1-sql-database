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
CREATE TABLE [dbo].[constructorresults](
	[constructorResultsId] [int] NULL,
	[raceId] [int] NULL,
	[constructorId] [int] NULL,
	[points] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL
) ON [PRIMARY]
GO
