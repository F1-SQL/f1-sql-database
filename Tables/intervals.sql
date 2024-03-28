/*
	Created by RIS-001\Rich using dbatools Export-DbaScript for objects on RIS-001 at 03/28/2024 17:38:03
	See https://dbatools.io/Export-DbaScript for more information
*/
USE [SequelFormulaNew]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[intervals](
	[date] [datetime] NULL,
	[driver_key] [tinyint] NOT NULL,
	[gap_to_leader] [float] NULL,
	[interval] [float] NULL,
	[meeting_key] [smallint] NOT NULL,
	[session_key] [smallint] NOT NULL
) ON [PRIMARY]
GO
