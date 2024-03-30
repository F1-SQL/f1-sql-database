ALTER TABLE [SequelFormulaNew].[dbo].[laps] ADD [Date] DATE;
ALTER TABLE [SequelFormulaNew].[dbo].[laps] ADD [Time] Time;

GO

UPDATE [SequelFormulaNew].[dbo].[laps] SET Date = CAST([date_start] as DATE);
UPDATE [SequelFormulaNew].[dbo].[laps] SET Time = CAST([date_start] as TIME);

GO

UPDATE [SequelFormulaNew].[dbo].[laps] SET date_start = NULL;

GO

ALTER TABLE [SequelFormulaNew].[dbo].[laps] ALTER COLUMN date_start DATETIME2(6);

GO

UPDATE  [SequelFormulaNew].[dbo].[laps] SET date_start = CONVERT(DATETIME2(6), CONVERT(CHAR(10), [Date], 121) + ' ' + CONVERT(CHAR(12), [Time], 121));

GO

SELECT * FROM [SequelFormulaNew].[dbo].[laps];

GO

ALTER TABLE [SequelFormulaNew].[dbo].[laps] DROP COLUMN [Date];
ALTER TABLE [SequelFormulaNew].[dbo].[laps] DROP COLUMN [Time];

GO

ALTER TABLE [SequelFormulaNew].[dbo].[laps] ALTER COLUMN date_start DATETIME2(6) NOT NULL;