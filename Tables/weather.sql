/*
	Created by RIS-001\Rich using dbatools Export-DbaScript for objects on RIS-001 at 03/28/2024 17:38:04
	See https://dbatools.io/Export-DbaScript for more information
*/
USE [SequelFormulaNew]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[weather](
	[air_temperature] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[humidity] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[meeting_key] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[pressure] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[rainfall] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[session_key] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[track_temperature] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[wind_direction] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[wind_speed] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[ObservationTime] [time](7) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
