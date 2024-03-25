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
CREATE TABLE [dbo].[weather](
	[air_temperature] [float] NULL,
	[date] [date] NULL,
	[humidity] [float] NULL,
	[meeting_key] [int] NULL,
	[pressure] [float] NULL,
	[rainfall] [int] NULL,
	[session_key] [int] NULL,
	[track_temperature] [float] NULL,
	[wind_direction] [int] NULL,
	[wind_speed] [float] NULL
) ON [PRIMARY]
GO
