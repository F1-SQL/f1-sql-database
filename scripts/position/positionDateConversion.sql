ALTER TABLE [SequelFormulaNew].[dbo].[position] ADD [Date2] DATE
ALTER TABLE [SequelFormulaNew].[dbo].[position] ADD [Time] Time

GO

UPDATE [SequelFormulaNew].[dbo].[position] SET [Date2] = CAST([date] as DATE)
UPDATE [SequelFormulaNew].[dbo].[position] SET Time = CAST([date] as TIME)

GO

UPDATE [SequelFormulaNew].[dbo].[position] SET [date] = NULL

GO

ALTER TABLE [SequelFormulaNew].[dbo].[position] ALTER COLUMN date DATETIME2(6) 

GO

UPDATE  [SequelFormulaNew].[dbo].[position] SET date = CONVERT(DATETIME2(6), CONVERT(CHAR(10), [Date2], 121) + ' ' + CONVERT(CHAR(12), [Time], 121))

GO

SELECT * FROM [SequelFormulaNew].[dbo].[position]

GO

ALTER TABLE [SequelFormulaNew].[dbo].[position] DROP COLUMN [Date2]
ALTER TABLE [SequelFormulaNew].[dbo].[position] DROP COLUMN [Time]

GO

ALTER TABLE [SequelFormulaNew].[dbo].[position] ALTER COLUMN date DATETIME2(6) NOT NULL
