USE SequelFormulaNew;
GO
EXEC sp_rename 'dbo.laps.driver_number', 'driver_key', 'COLUMN';
GO