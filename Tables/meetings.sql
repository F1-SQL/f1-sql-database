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
CREATE TABLE [dbo].[meetings](
	[circuit_key] [tinyint] NOT NULL,
	[circuit_short_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[country_code] [varchar](3) COLLATE Latin1_General_CI_AS NULL,
	[country_key] [int] NULL,
	[country_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[date_start] [datetime] NOT NULL,
	[location] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[meeting_code] [varchar](3) COLLATE Latin1_General_CI_AS NULL,
	[meeting_key] [int] NOT NULL,
	[meeting_name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[meeting_official_name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[year] [smallint] NOT NULL,
	[location_key] [int] NULL,
	[type_key] [int] NULL,
	[season_key] [int] NULL,
	[gmt_offset] [int] NULL,
 CONSTRAINT [PK_MeetingKey] PRIMARY KEY CLUSTERED 
(
	[meeting_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
