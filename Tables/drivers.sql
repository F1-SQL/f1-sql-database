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
CREATE TABLE [dbo].[drivers](
	[broadcast_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[country_code] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[driver_key] [tinyint] NOT NULL,
	[first_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[full_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[headshot_url] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[last_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[meeting_key] [smallint] NOT NULL,
	[name_acronym] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[session_key] [smallint] NOT NULL,
	[team_colour] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[team_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
