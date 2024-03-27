USE SequelFormulaNew;
GO
EXEC sp_rename 'dbo.pitstops.driver_number', 'driver_key', 'COLUMN';
GO