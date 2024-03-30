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

ALTER TABLE [SequelFormulaNew].[dbo].[intervals] ALTER COLUMN [date] DATETIME2(6)

GO

UPDATE [SequelFormulaNew].[dbo].[intervals] 
SET [date] = CONVERT(DATETIME2(6), CONVERT(CHAR(10), [Date_new], 121) + ' ' + CONVERT(CHAR(12), [Time], 121))

GO

SELECT * FROM [SequelFormulaNew].[dbo].[intervals]

GO

ALTER TABLE [SequelFormulaNew].[dbo].[intervals] DROP COLUMN [Date_new]
ALTER TABLE [SequelFormulaNew].[dbo].[intervals] DROP COLUMN [Time]

GO

ALTER TABLE [SequelFormulaNew].[dbo].[intervals] ALTER COLUMN [date] DATETIME2(6) NOT NULL;
