/*
	Created by RIS-001\Rich using dbatools Export-DbaScript for objects on RIS-001 at 03/30/2024 11:11:56
	See https://dbatools.io/Export-DbaScript for more information
*/
USE [SequelFormulaNew]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stints](
	[driver_key] [int] NOT NULL,
	[lap_end] [int] NULL,
	[lap_start] [int] NULL,
	[meeting_key] [int] NOT NULL,
	[session_key] [int] NOT NULL,
	[stint_number] [int] NOT NULL,
	[tyre_age_at_start] [int] NULL,
	[compound_key] [int] NULL,
 CONSTRAINT [PK_DriverMeetingSessionKeyStint] PRIMARY KEY CLUSTERED 
(
	[driver_key] ASC,
	[meeting_key] ASC,
	[session_key] ASC,
	[stint_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
