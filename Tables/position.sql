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
CREATE TABLE [dbo].[position](
	[date] [datetime] NULL,
	[driver_key] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[meeting_key] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[position] [varchar](max) COLLATE Latin1_General_CI_AS NULL,
	[session_key] [varchar](max) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
