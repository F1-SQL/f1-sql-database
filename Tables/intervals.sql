/*
	Created by RIS-001\Rich using dbatools Export-DbaScript for objects on RIS-001 at 03/30/2024 11:11:55
	See https://dbatools.io/Export-DbaScript for more information
*/
USE [SequelFormulaNew]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[intervals](
	[date] [datetime2](6) NOT NULL,
	[driver_key] [int] NOT NULL,
	[gap_to_leader] [decimal](7, 3) NULL,
	[interval] [decimal](7, 3) NULL,
	[meeting_key] [int] NOT NULL,
	[session_key] [int] NOT NULL,
	[laps_to_leader] [int] NULL,
	[lapped_laps] [int] NULL
) ON [PRIMARY]
GO
