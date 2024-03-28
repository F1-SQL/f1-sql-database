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
CREATE TABLE [dbo].[stints](
	[driver_key] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[lap_end] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[lap_start] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[meeting_key] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[session_key] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[stint_number] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[tyre_age_at_start] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[compound_key] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
