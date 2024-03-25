/*
	Created by RIS-001\Rich using dbatools Export-DbaScript for objects on RIS-001 at 03/25/2024 09:23:21
	See https://dbatools.io/Export-DbaScript for more information
*/
USE [SequelFormulaV2]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sessions](
	[circuit_key] [int] NULL,
	[circuit_short_name] [nvarchar](50) NULL,
	[country_code] [nvarchar](50) NULL,
	[country_key] [int] NULL,
	[country_name] [nvarchar](50) NULL,
	[date_end] [datetime] NULL,
	[date_start] [datetime] NULL,
	[gmt_offset] [nvarchar](50) NULL,
	[location] [nvarchar](50) NULL,
	[meeting_key] [time](7) NULL,
	[session_key] [int] NULL,
	[session_name] [nvarchar](50) NULL,
	[session_type] [nvarchar](50) NULL,
	[year] [int] NULL
) ON [PRIMARY]
GO
