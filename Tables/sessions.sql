/*
	Created by RIS-001\Rich using dbatools Export-DbaScript for objects on RIS-001 at 03/28/2024 17:38:04
	See https://dbatools.io/Export-DbaScript for more information
*/
USE [SequelFormulaNew]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sessions](
	[circuit_key] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[date_end] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[date_start] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[gmt_offset] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[meeting_key] [int] NULL,
	[session_key] [int] NULL,
	[session_name] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[type_key] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
