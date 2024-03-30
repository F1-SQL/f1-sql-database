ALTER TABLE [SequelFormulaNew].[dbo].[pitStops] ADD [Date2] DATE
ALTER TABLE [SequelFormulaNew].[dbo].[pitStops] ADD [Time] Time

GO

UPDATE [SequelFormulaNew].[dbo].[pitStops] SET [Date2] = CAST([date] as DATE)
UPDATE [SequelFormulaNew].[dbo].[pitStops] SET Time = CAST([date] as TIME)

GO

ALTER TABLE [SequelFormulaNew].[dbo].[pitStops] ALTER COLUMN [date] nvarchar(50) NULL

GO

UPDATE [SequelFormulaNew].[dbo].[pitStops] SET [date] = NULL

GO

ALTER TABLE [SequelFormulaNew].[dbo].[pitStops] ALTER COLUMN date DATETIME2(6);

GO

UPDATE  [SequelFormulaNew].[dbo].[pitStops] SET date = CONVERT(DATETIME2(6), CONVERT(CHAR(10), [Date2], 121) + ' ' + CONVERT(CHAR(12), [Time], 121))

GO

ALTER TABLE [SequelFormulaNew].[dbo].[pitStops] DROP COLUMN [Date2]
ALTER TABLE [SequelFormulaNew].[dbo].[pitStops] DROP COLUMN [Time]

GO

SELECT * FROM [SequelFormulaNew].[dbo].[pitStops]