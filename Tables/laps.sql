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
CREATE TABLE [dbo].[laps](
	[date_start] [datetime] NULL,
	[driver_key] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[duration_sector_1] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[duration_sector_2] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[duration_sector_3] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[i1_speed] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[i2_speed] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[is_pit_out_lap] [bit] NULL,
	[lap_duration] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[lap_number] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[meeting_key] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[segments_sector_1] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[segments_sector_2] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[segments_sector_3] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[session_key] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[st_speed] [varchar](max) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
