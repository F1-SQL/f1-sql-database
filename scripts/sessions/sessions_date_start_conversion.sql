ALTER TABLE [SequelFormulaNew].[dbo].[sessions] ADD [Date_start_new] DATE
ALTER TABLE [SequelFormulaNew].[dbo].[sessions] ADD [Time_start] Time

GO

UPDATE [SequelFormulaNew].[dbo].[sessions] SET [Date_start_new] = CAST([date_start] as DATE)
UPDATE [SequelFormulaNew].[dbo].[sessions] SET [Time_start] = CAST([date_start] as TIME)

GO

UPDATE [SequelFormulaNew].[dbo].[sessions] SET [date_start] = NULL

GO

ALTER TABLE [SequelFormulaNew].[dbo].[sessions] ALTER COLUMN [date_start] DATETIME

GO

UPDATE  [SequelFormulaNew].[dbo].[sessions] SET [date_start] = CONVERT(DATETIME, CONVERT(CHAR(8), [Date_start_new], 112) 
+ ' ' + CONVERT(CHAR(8), [Time_start], 108))

GO

SELECT * FROM [SequelFormulaNew].[dbo].[sessions]

GO

ALTER TABLE [SequelFormulaNew].[dbo].[sessions] DROP COLUMN [Date_start_new]
ALTER TABLE [SequelFormulaNew].[dbo].[sessions] DROP COLUMN [Time_start]