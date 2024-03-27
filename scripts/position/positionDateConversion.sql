ALTER TABLE [SequelFormulaNew].[dbo].[position] ADD [Date2] DATE
ALTER TABLE [SequelFormulaNew].[dbo].[position] ADD [Time] Time

UPDATE [SequelFormulaNew].[dbo].[position] SET [Date2] = CAST([date] as DATE)
UPDATE [SequelFormulaNew].[dbo].[position] SET Time = CAST([date] as TIME)

UPDATE [SequelFormulaNew].[dbo].[position] SET [date] = NULL

ALTER TABLE [SequelFormulaNew].[dbo].[position] ALTER COLUMN date DATETIME

UPDATE  [SequelFormulaNew].[dbo].[position] SET date = CONVERT(DATETIME, CONVERT(CHAR(8), [Date2], 112) 
+ ' ' + CONVERT(CHAR(8), Time, 108))

SELECT * FROM [SequelFormulaNew].[dbo].[position]

ALTER TABLE [SequelFormulaNew].[dbo].[position] DROP COLUMN [Date2]
ALTER TABLE [SequelFormulaNew].[dbo].[position] DROP COLUMN [Time]