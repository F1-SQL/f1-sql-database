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
CREATE TABLE [dbo].[circuits](
	[circuitId] [int] NOT NULL,
	[circuitRef] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[location] [nvarchar](50) NOT NULL,
	[country] [nvarchar](50) NOT NULL,
	[lat] [float] NOT NULL,
	[lng] [float] NOT NULL,
	[alt] [int] NOT NULL,
	[url] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
