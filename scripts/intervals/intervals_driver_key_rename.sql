USE SequelFormulaNew;
GO
EXEC sp_rename 'dbo.intervals.driver_number', 'driver_key', 'COLUMN';
GO