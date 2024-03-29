ALTER TABLE [SequelFormulaNew].[dbo].[intervals] ADD [Date_new] DATE
ALTER TABLE [SequelFormulaNew].[dbo].[intervals] ADD [Time] Time

GO

ALTER TABLE [SequelFormulaNew].[dbo].[intervals] ALTER COLUMN [Date] nvarchar(50) NULL

GO

UPDATE [SequelFormulaNew].[dbo].[intervals] SET [Date_new] = CAST([date] as DATE)
UPDATE [SequelFormulaNew].[dbo].[intervals] SET [Time] = CAST([date] as TIME)

GO

UPDATE [SequelFormulaNew].[dbo].[intervals] SET [date] = NULL

GO

ALTER TABLE [SequelFormulaNew].[dbo].[intervals] ALTER COLUMN [date] DATETIME

GO

UPDATE  [SequelFormulaNew].[dbo].[intervals] SET [date] = CONVERT(DATETIME, CONVERT(CHAR(8), [Date_new], 112) 
  + ' ' + CONVERT(CHAR(8), Time, 108))
  FROM [SequelFormulaNew].[dbo].[intervals]

GO

SELECT * FROM [SequelFormulaNew].[dbo].[intervals]

GO

ALTER TABLE [SequelFormulaNew].[dbo].[intervals] DROP COLUMN [Date_new]
ALTER TABLE [SequelFormulaNew].[dbo].[intervals] DROP COLUMN [Time]