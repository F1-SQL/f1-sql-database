ALTER TABLE [dbo].[stints] ALTER COLUMN [driver_key] INT;
ALTER TABLE [dbo].[stints] ALTER COLUMN [lap_end] INT;
ALTER TABLE [dbo].[stints] ALTER COLUMN [lap_start] INT;
ALTER TABLE [dbo].[stints] ALTER COLUMN [meeting_key] INT;
ALTER TABLE [dbo].[stints] ALTER COLUMN [session_key] INT;
ALTER TABLE [dbo].[stints] ALTER COLUMN [stint_number] INT;
ALTER TABLE [dbo].[stints] ALTER COLUMN [tyre_age_at_start] INT;
ALTER TABLE [dbo].[stints] ALTER COLUMN [driver_key] INT NOT NULL;
ALTER TABLE [dbo].[stints] ALTER COLUMN [meeting_key] INT NOT NULL;
ALTER TABLE [dbo].[stints] ALTER COLUMN [session_key] INT NOT NULL;
ALTER TABLE [dbo].[stints] ALTER COLUMN [stint_number] INT NOT NULL;
