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
CREATE TABLE [dbo].[pitStops](
	[date] [datetime] NULL,
	[driver_key] [int] NOT NULL,
	[lap_number] [int] NOT NULL,
	[meeting_key] [int] NOT NULL,
	[pit_duration] [decimal](10, 3) NULL,
	[session_key] [int] NOT NULL,
 CONSTRAINT [PK_DriverMeetingSessionKeyLap] PRIMARY KEY CLUSTERED 
(
	[driver_key] ASC,
	[lap_number] ASC,
	[meeting_key] ASC,
	[session_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
