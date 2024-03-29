ALTER TABLE [SequelFormulaNew].[dbo].[weather] ADD [Date_new] DATE
ALTER TABLE [SequelFormulaNew].[dbo].[weather] ADD [Time] Time

GO

ALTER TABLE [SequelFormulaNew].[dbo].[weather] ALTER COLUMN date nvarchar(50) NULL

GO

UPDATE [SequelFormulaNew].[dbo].[weather] SET [Date_new] = CAST([date] as DATE)
UPDATE [SequelFormulaNew].[dbo].[weather] SET Time = CAST([date] as TIME)

GO

UPDATE [SequelFormulaNew].[dbo].[weather] SET [date] = NULL

GO

ALTER TABLE [SequelFormulaNew].[dbo].[weather] ALTER COLUMN [date] DATETIME

GO

UPDATE  [SequelFormulaNew].[dbo].[weather] SET [date] = CONVERT(DATETIME, CONVERT(CHAR(8), [Date_new], 112) 
+ ' ' + CONVERT(CHAR(8), Time, 108))
FROM [SequelFormulaNew].[dbo].[weather]

GO

SELECT * FROM [SequelFormulaNew].[dbo].[weather]

GO

ALTER TABLE [SequelFormulaNew].[dbo].[weather] DROP COLUMN [Date_new]
ALTER TABLE [SequelFormulaNew].[dbo].[weather] DROP COLUMN [Time]