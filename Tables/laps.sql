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
CREATE TABLE [dbo].[laps](
	[date_start] [datetime] NULL,
	[driver_number] [int] NULL,
	[duration_sector_1] [float] NULL,
	[duration_sector_2] [float] NULL,
	[duration_sector_3] [float] NULL,
	[i1_speed] [int] NULL,
	[i2_speed] [int] NULL,
	[is_pit_out_lap] [bit] NULL,
	[lap_duration] [float] NULL,
	[lap_number] [int] NULL,
	[meeting_key] [int] NULL,
	[segments_sector_1] [nvarchar](200) NULL,
	[segments_sector_2] [nvarchar](200) NULL,
	[segments_sector_3] [nvarchar](200) NULL,
	[session_key] [int] NULL,
	[st_speed] [int] NULL
) ON [PRIMARY]
GO
