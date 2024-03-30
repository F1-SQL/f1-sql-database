ALTER TABLE [SequelFormulaNew].[dbo].[drivers] ADD team_key INT NOT NULL;

GO;

UPDATE d

	SET d.team_key = t.team_key

FROM
	[SequelFormulaNew].[dbo].[drivers]  d 

INNER JOIN [dbo].[teams] t 
	ON d.team_name = t.team_name;

GO;

ALTER TABLE [SequelFormulaNew].[dbo].[drivers] DROP COLUMN team_name;