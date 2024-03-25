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
CREATE TABLE [dbo].[intervals](
	[date] [nvarchar](50) NULL,
	[driver_number] [int] NULL,
	[gap_to_leader] [float] NULL,
	[interval] [float] NULL,
	[meeting_key] [int] NULL,
	[session_key] [int] NULL
) ON [PRIMARY]
GO
