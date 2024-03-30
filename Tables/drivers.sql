/*
	Created by RIS-001\Rich using dbatools Export-DbaScript for objects on RIS-001 at 03/30/2024 11:11:55
	See https://dbatools.io/Export-DbaScript for more information
*/
USE [SequelFormulaNew]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[drivers](
	[broadcast_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[country_code] [varchar](3) COLLATE Latin1_General_CI_AS NULL,
	[driver_key] [int] NOT NULL,
	[first_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[full_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[headshot_url] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[last_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[meeting_key] [int] NOT NULL,
	[name_acronym] [varchar](3) COLLATE Latin1_General_CI_AS NULL,
	[session_key] [int] NOT NULL,
	[team_colour] [varchar](6) COLLATE Latin1_General_CI_AS NULL,
	[team_key] [int] NULL,
 CONSTRAINT [PK_DriverMeetingSessionKey] PRIMARY KEY CLUSTERED 
(
	[driver_key] ASC,
	[meeting_key] ASC,
	[session_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
