ALTER TABLE [SequelFormulaNew].[dbo].[meetings] ADD type_key INT

GO

UPDATE [SequelFormulaNew].[dbo].[meetings] 

SET type_key = 2

WHERE meeting_name LIKE '%Grand Prix%'

GO

UPDATE [SequelFormulaNew].[dbo].[meetings] 

SET type_key = 1

WHERE meeting_name LIKE '%Testing%'