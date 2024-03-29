ALTER TABLE [SequelFormulaNew].[dbo].[meetings] ADD [gmt_offset_new] INT

GO

UPDATE [SequelFormulaNew].[dbo].[meetings] SET [gmt_offset_new] =
	CASE
		WHEN [gmt_offset] LIKE '-%' THEN 
			CONVERT(INT, LEFT(REPLACE(
							CONVERT(VARCHAR(8), [gmt_offset], 108),
							':',
							''
						),3)
					) 
		ELSE 
			CONVERT(INT, LEFT(REPLACE(
							CONVERT(VARCHAR(8), [gmt_offset], 108),
							':',
							''
						),2)
					) END

GO

ALTER TABLE [SequelFormulaNew].[dbo].[meetings] DROP COLUMN [gmt_offset]

GO 

USE SequelFormulaNew;
GO
EXEC sp_rename 'dbo.meetings.gmt_offset_new', 'gmt_offset', 'COLUMN';
GO