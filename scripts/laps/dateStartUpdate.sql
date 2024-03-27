ALTER TABLE [SequelFormulaNew].[dbo].[laps] ADD [Date] DATE
ALTER TABLE [SequelFormulaNew].[dbo].[laps] ADD [Time] Time

UPDATE [SequelFormulaNew].[dbo].[laps] SET Date = CAST([date_start] as DATE)
UPDATE [SequelFormulaNew].[dbo].[laps] SET Time = CAST([date_start] as TIME)

UPDATE [SequelFormulaNew].[dbo].[laps] SET date_start = NULL

ALTER TABLE [SequelFormulaNew].[dbo].[laps] ALTER COLUMN date_start DATETIME

UPDATE  [SequelFormulaNew].[dbo].[laps] SET date_start = CONVERT(DATETIME, CONVERT(CHAR(8), Date, 112) 
  + ' ' + CONVERT(CHAR(8), Time, 108))
  FROM [SequelFormulaNew].[dbo].[laps]

SELECT * FROM [SequelFormulaNew].[dbo].[laps]

ALTER TABLE [SequelFormulaNew].[dbo].[laps] DROP COLUMN [Date]
ALTER TABLE [SequelFormulaNew].[dbo].[laps] DROP COLUMN [Time]