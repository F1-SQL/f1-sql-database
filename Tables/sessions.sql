/*
	Created by RIS-001\Rich using dbatools Export-DbaScript for objects on RIS-001 at 03/30/2024 11:11:56
	See https://dbatools.io/Export-DbaScript for more information
*/
USE [SequelFormulaNew]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sessions](
	[circuit_key] [int] NULL,
	[date_end] [datetime] NULL,
	[date_start] [datetime] NULL,
	[meeting_key] [int] NULL,
	[session_key] [int] NOT NULL,
	[session_name] [varchar](15) COLLATE Latin1_General_CI_AS NULL,
	[type_key] [int] NULL,
 CONSTRAINT [PK_SessionKey] PRIMARY KEY CLUSTERED 
(
	[session_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
