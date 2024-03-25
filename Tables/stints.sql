/*
	Created by RIS-001\Rich using dbatools Export-DbaScript for objects on RIS-001 at 03/25/2024 09:23:21
	See https://dbatools.io/Export-DbaScript for more information
*/
USE [SequelFormulaV2]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stints](
	[compound] [nvarchar](50) NULL,
	[driver_number] [int] NULL,
	[lap_end] [int] NULL,
	[lap_start] [int] NULL,
	[meeting_key] [int] NULL,
	[session_key] [int] NULL,
	[stint_number] [int] NULL,
	[tyre_age_at_start] [int] NULL
) ON [PRIMARY]
GO
