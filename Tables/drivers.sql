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
CREATE TABLE [dbo].[drivers](
	[driverId] [smallint] NOT NULL,
	[driverRef] [nvarchar](50) NOT NULL,
	[number] [tinyint] NULL,
	[code] [nvarchar](50) NULL,
	[forename] [nvarchar](50) NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[dob] [date] NOT NULL,
	[nationality] [nvarchar](50) NOT NULL,
	[url] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
