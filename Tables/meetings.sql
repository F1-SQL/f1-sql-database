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
CREATE TABLE [dbo].[meetings](
	[circuit_key] [tinyint] NOT NULL,
	[circuit_short_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[country_code] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[country_key] [tinyint] NOT NULL,
	[country_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[date_start] [datetime] NOT NULL,
	[gmt_offset] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[location] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[meeting_code] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[meeting_key] [int] NOT NULL,
	[meeting_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[meeting_official_name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[year] [smallint] NOT NULL,
	[location_key] [int] NULL,
	[type_key] [int] NULL,
	[season_key] [int] NULL
) ON [PRIMARY]
GO
