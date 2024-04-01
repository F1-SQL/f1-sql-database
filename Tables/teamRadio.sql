/*
	Created by RIS-001\Rich using dbatools Export-DbaScript for objects on RIS-001 at 04/01/2024 15:09:53
	See https://dbatools.io/Export-DbaScript for more information
*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teamRadio](
	[date] [datetime2](6) NULL,
	[driver_key] [int] NULL,
	[meeting_key] [int] NULL,
	[recording_url] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[session_key] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
