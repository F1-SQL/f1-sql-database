/*
	Created by RIS-001\Rich using dbatools Export-DbaScript for objects on RIS-001 at 03/30/2024 11:02:36
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
	[driver_key] [int] NOT NULL,
	[duration_sector_1] [decimal](10, 3) NULL,
	[duration_sector_2] [decimal](10, 3) NULL,
	[duration_sector_3] [decimal](10, 3) NULL,
	[first_intermediate_speed] [int] NULL,
	[second_intermediate_speed] [int] NULL,
	[is_pit_out_lap] [bit] NULL,
	[lap_duration] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[lap_number] [int] NOT NULL,
	[meeting_key] [int] NOT NULL,
	[segments_sector_1] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[segments_sector_2] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[segments_sector_3] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[session_key] [int] NOT NULL,
	[st_speed] [int] NULL,
 CONSTRAINT [PK_DriverKeyLap] PRIMARY KEY CLUSTERED 
(
	[driver_key] ASC,
	[lap_number] ASC,
	[meeting_key] ASC,
	[session_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
