ALTER TABLE [SequelFormulaNew].[dbo].[sessions] ADD [Date_end_new] DATE
ALTER TABLE [SequelFormulaNew].[dbo].[sessions] ADD [Time_end] Time

GO

UPDATE [SequelFormulaNew].[dbo].[sessions] SET [Date_end_new] = CAST([date_end] as DATE)
UPDATE [SequelFormulaNew].[dbo].[sessions] SET [Time_end] = CAST([date_end] as TIME)

GO

UPDATE [SequelFormulaNew].[dbo].[sessions] SET [date_end] = NULL

GO

ALTER TABLE [SequelFormulaNew].[dbo].[sessions] ALTER COLUMN [date_end] DATETIME

GO

UPDATE  [SequelFormulaNew].[dbo].[sessions] SET [date_end] = CONVERT(DATETIME, CONVERT(CHAR(8), [Date_end_new], 112) 
+ ' ' + CONVERT(CHAR(8), [Time_end], 108))

GO

SELECT * FROM [SequelFormulaNew].[dbo].[sessions]

GO

ALTER TABLE [SequelFormulaNew].[dbo].[sessions] DROP COLUMN [Date_end_new]
ALTER TABLE [SequelFormulaNew].[dbo].[sessions] DROP COLUMN [Time_end]