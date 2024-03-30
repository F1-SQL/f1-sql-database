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
CREATE TABLE [dbo].[position](
	[date] [datetime2](6) NOT NULL,
	[driver_key] [tinyint] NOT NULL,
	[meeting_key] [smallint] NOT NULL,
	[position] [tinyint] NOT NULL,
	[session_key] [smallint] NOT NULL,
 CONSTRAINT [PK_DriverMeetingSessionKeyDate] PRIMARY KEY CLUSTERED 
(
	[date] ASC,
	[driver_key] ASC,
	[meeting_key] ASC,
	[session_key] ASC,
	[position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
