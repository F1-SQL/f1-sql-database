ALTER TABLE [SequelFormulaNew].[dbo].[sessions] ADD [Date_start_new] DATE
ALTER TABLE [SequelFormulaNew].[dbo].[sessions] ADD [Time_start] Time

GO

UPDATE [SequelFormulaNew].[dbo].[sessions] SET [Date_start_new] = CAST([date_start] as DATE)
UPDATE [SequelFormulaNew].[dbo].[sessions] SET [Time_start] = CAST([date_start] as TIME)

GO

UPDATE [SequelFormulaNew].[dbo].[sessions] SET [date_start] = NULL

GO

ALTER TABLE [SequelFormulaNew].[dbo].[sessions] ALTER COLUMN [date_start] DATETIME2(6)

GO

UPDATE  [SequelFormulaNew].[dbo].[sessions] SET [date_start] = CONVERT(DATETIME2(6), CONVERT(CHAR(10), [Date_start_new], 121) + ' ' + CONVERT(CHAR(12), [Time_start], 121))

GO

SELECT * FROM [SequelFormulaNew].[dbo].[sessions]

GO

ALTER TABLE [SequelFormulaNew].[dbo].[sessions] DROP COLUMN [Date_start_new]
ALTER TABLE [SequelFormulaNew].[dbo].[sessions] DROP COLUMN [Time_start]