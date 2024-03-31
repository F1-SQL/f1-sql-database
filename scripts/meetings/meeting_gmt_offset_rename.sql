USE SequelFormulaNew;
GO
EXEC sp_rename 'dbo.meetings.gmt_offset_new', 'gmt_offset', 'COLUMN';
GO