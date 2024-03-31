USE SequelFormulaNew;
GO
EXEC sp_rename 'dbo.drivers.driver_number', 'driver_key', 'COLUMN';
GO