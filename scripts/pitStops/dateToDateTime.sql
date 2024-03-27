ALTER TABLE [SequelFormulaNew].[dbo].[intervals] ADD [Date2] DATE
ALTER TABLE [SequelFormulaNew].[dbo].[intervals] ADD [Time] Time

GO

UPDATE [SequelFormulaNew].[dbo].[intervals] SET [Date2] = CAST([date] as DATE)
UPDATE [SequelFormulaNew].[dbo].[intervals] SET Time = CAST([date] as TIME)

GO

ALTER TABLE [SequelFormulaNew].[dbo].[intervals] ALTER COLUMN [date] nvarchar(50) NULL

GO

UPDATE [SequelFormulaNew].[dbo].[intervals] SET [date] = NULL

GO

ALTER TABLE [SequelFormulaNew].[dbo].[intervals] ALTER COLUMN date DATETIME

GO

UPDATE  [SequelFormulaNew].[dbo].[intervals] SET date = CONVERT(DATETIME, CONVERT(CHAR(8), [Date2], 112) 
  + ' ' + CONVERT(CHAR(8), Time, 108))

GO

ALTER TABLE [SequelFormulaNew].[dbo].[intervals] DROP COLUMN [Date2]
ALTER TABLE [SequelFormulaNew].[dbo].[intervals] DROP COLUMN [Time]

GO

SELECT * FROM [SequelFormulaNew].[dbo].[intervals]