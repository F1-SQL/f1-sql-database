/*
	Created by RIS-001\Rich using dbatools Export-DbaScript for objects on RIS-001 at 04/01/2024 15:09:52
	See https://dbatools.io/Export-DbaScript for more information
*/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compoundTypes](
	[compound_key] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[compound_name] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
