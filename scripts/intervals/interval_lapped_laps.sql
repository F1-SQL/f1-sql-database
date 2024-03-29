ALTER TABLE [SequelFormulaNew].[dbo].[intervals] ADD lapped_laps INT;

GO

UPDATE [SequelFormulaNew].[dbo].[intervals]

SET lapped_laps = REPLACE(REPLACE(REPLACE(REPLACE([interval],'+',''),'LAPS',''),'LAP',''),'L','')

WHERE ([interval] LIKE '%lap%' OR [interval] LIKE '%L');

GO

UPDATE [SequelFormulaNew].[dbo].[intervals]
	SET [interval] = NULL
WHERE ([interval] LIKE '%lap%' OR [interval] LIKE '%L');

GO 

ALTER TABLE [SequelFormulaNew].[dbo].[intervals] ALTER COLUMN [interval] decimal(7,3);