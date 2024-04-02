/*
	Created by RIS-001\Rich using dbatools Export-DbaScript for objects on RIS-001 at 04/02/2024 07:18:09
	See https://dbatools.io/Export-DbaScript for more information
*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[countries](
	[country_key] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[country_name] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[country_code] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
