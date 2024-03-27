USE SequelFormulaNew;
GO
EXEC sp_rename 'dbo.position.driver_number', 'driver_key', 'COLUMN';
GO