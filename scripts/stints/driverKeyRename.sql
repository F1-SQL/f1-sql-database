USE SequelFormulaNew;
GO
EXEC sp_rename 'dbo.stints.driver_number', 'driver_key', 'COLUMN';
GO