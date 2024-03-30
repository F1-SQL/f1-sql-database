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
CREATE TABLE [dbo].[weather](
	[air_temperature] [decimal](3, 1) NULL,
	[date] [datetime2](6) NOT NULL,
	[humidity] [decimal](3, 1) NULL,
	[meeting_key] [int] NOT NULL,
	[pressure] [decimal](5, 1) NULL,
	[rainfall] [bit] NULL,
	[session_key] [int] NOT NULL,
	[track_temperature] [decimal](3, 1) NULL,
	[wind_direction] [int] NULL,
	[wind_speed] [decimal](3, 1) NULL,
 CONSTRAINT [PK_MeetingSessionKeyDate] PRIMARY KEY CLUSTERED 
(
	[date] ASC,
	[meeting_key] ASC,
	[session_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
