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
CREATE TABLE [dbo].[driversSessions](
	[broadcast_name] [nvarchar](50) NULL,
	[country_code] [nvarchar](50) NULL,
	[driver_number] [int] NULL,
	[first_name] [nvarchar](50) NULL,
	[full_name] [nvarchar](50) NULL,
	[headshot_url] [nvarchar](500) NULL,
	[last_name] [nvarchar](50) NULL,
	[meeting_key] [int] NULL,
	[name_acronym] [nvarchar](50) NULL,
	[session_key] [int] NULL,
	[team_colour] [nvarchar](50) NULL,
	[team_name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
