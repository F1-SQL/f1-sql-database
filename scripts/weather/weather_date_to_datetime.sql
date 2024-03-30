ALTER TABLE [SequelFormulaNew].[dbo].[weather] ADD [Date_new] DATE
ALTER TABLE [SequelFormulaNew].[dbo].[weather] ADD [Time] Time

GO

ALTER TABLE [SequelFormulaNew].[dbo].[weather] ALTER COLUMN date nvarchar(50) NOT NULL

GO

UPDATE [SequelFormulaNew].[dbo].[weather] SET [Date_new] = CAST([date] as DATE)
UPDATE [SequelFormulaNew].[dbo].[weather] SET Time = CAST([date] as TIME)

GO

UPDATE [SequelFormulaNew].[dbo].[weather] SET [date] = NULL

GO

ALTER TABLE [SequelFormulaNew].[dbo].[weather] ALTER COLUMN [date] DATETIME2(6)

GO

UPDATE  [SequelFormulaNew].[dbo].[weather] SET [date] = CONVERT(DATETIME2(6), CONVERT(CHAR(10), [Date_new], 121) + ' ' + CONVERT(CHAR(12), [Time], 121))

GO

SELECT * FROM [SequelFormulaNew].[dbo].[weather]

GO

ALTER TABLE [SequelFormulaNew].[dbo].[weather] DROP COLUMN [Date_new]
ALTER TABLE [SequelFormulaNew].[dbo].[weather] DROP COLUMN [Time]