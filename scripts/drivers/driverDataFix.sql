DECLARE @position INT = 2;

UPDATE [dbo].[drivers] SET last_name = JSON_VALUE('["' + REPLACE(full_name,' ','","') + '"]',CONCAT('$[',@position-1,']')) 
WHERE last_name IS NULL

GO;

DECLARE @position INT = 1;

UPDATE [dbo].[drivers] SET first_name = JSON_VALUE('["' + REPLACE(full_name,' ','","') + '"]',CONCAT('$[',@position-1,']')) 
WHERE first_name IS NULL;

GO;

;WITH HeadShotURL AS (

SELECT [broadcast_name]
      ,[country_code]
      ,[driver_number]
      ,[first_name]
      ,[full_name]
      ,[headshot_url]  
      ,[last_name]
      ,[meeting_key]
      ,[name_acronym]
      ,[session_key]
      ,[team_colour]
      ,[team_name]
	  ,ROW_NUMBER() OVER(PARTITION BY driver_number ORDER BY driver_number) as RowNumber
  FROM [SequelFormulaNew].[dbo].[drivers]
  WHERE headshot_url IS NOT NULL

)

UPDATE d

SET d.headshot_url = h.headshot_url

FROM drivers d 

INNER JOIN HeadShotURL h ON d.driver_number = h.driver_number

WHERE d.headshot_url IS NULL


;WITH LastNames AS (

SELECT [broadcast_name]
      ,[country_code]
      ,[driver_number]
      ,[first_name]
      ,[full_name]
      ,[headshot_url]  
      ,[last_name]
      ,[meeting_key]
      ,[name_acronym]
      ,[session_key]
      ,[team_colour]
      ,[team_name]
	  ,ROW_NUMBER() OVER(PARTITION BY driver_number ORDER BY driver_number) as RowNumber
  FROM [SequelFormulaNew].[dbo].[drivers]
  WHERE last_name IS NOT NULL

)

UPDATE d

SET d.last_name = l.last_name

FROM drivers d 

INNER JOIN LastNames l ON d.driver_number = l.driver_number

WHERE d.last_name IS NULL


;WITH FirstNames AS (

SELECT [broadcast_name]
      ,[country_code]
      ,[driver_number]
      ,[first_name]
      ,[full_name]
      ,[headshot_url]  
      ,[last_name]
      ,[meeting_key]
      ,[name_acronym]
      ,[session_key]
      ,[team_colour]
      ,[team_name]
	  ,ROW_NUMBER() OVER(PARTITION BY driver_number ORDER BY driver_number) as RowNumber
  FROM [SequelFormulaNew].[dbo].[drivers]
  WHERE first_name IS NOT NULL

)

UPDATE d

SET d.first_name = f.first_name

FROM drivers d 

INNER JOIN FirstNames f ON d.driver_number = f.driver_number

WHERE d.first_name IS NULL


;WITH CountryCodes AS (

SELECT [broadcast_name]
      ,[country_code]
      ,[driver_number]
      ,[first_name]
      ,[full_name]
      ,[headshot_url]  
      ,[last_name]
      ,[meeting_key]
      ,[name_acronym]
      ,[session_key]
      ,[team_colour]
      ,[team_name]
	  ,ROW_NUMBER() OVER(PARTITION BY driver_number ORDER BY driver_number) as RowNumber
  FROM [SequelFormulaNew].[dbo].[drivers]
  WHERE country_code IS NOT NULL

)

UPDATE d

SET d.country_code = c.country_code

FROM drivers d 

INNER JOIN CountryCodes c ON d.driver_number = c.driver_number

WHERE d.country_code IS NULL

CREATE TABLE [SequelFormulaNew].[dbo].[driverMeeting]
(
driver_key INT NOT NULL,
meeting_key INT NOT NULL
);

GO

INSERT INTO [SequelFormulaNew].[dbo].[driverMeeting] (driver_key,meeting_key)
SELECT DISTINCT
	driver_key,
	meeting_key
FROM	
	[SequelFormulaNew].[dbo].[drivers];


CREATE TABLE [SequelFormulaNew].[dbo].[driverSession]
(
driver_key INT NOT NULL,
session_key INT NOT NULL
);

GO

INSERT INTO [SequelFormulaNew].[dbo].[driverSession] (driver_key,session_key)
SELECT DISTINCT
	driver_key,
	session_key
FROM	
	[SequelFormulaNew].[dbo].[drivers]

SELECT * FROM [SequelFormulaNew].[dbo].[driverSession]

GO

CREATE TABLE [SequelFormulaNew].[dbo].[driverTeam]
(
driver_key INT NOT NULL,
team_key INT NOT NULL,
meeting_key INT NOT NULL,
session_key INT NOT NULL
);

GO

INSERT INTO [SequelFormulaNew].[dbo].[driverTeam] (driver_key,team_key,meeting_key,session_key)
SELECT DISTINCT
	driver_key,
	team_key,
  meeting_key,
  session_key
FROM	
	[SequelFormulaNew].[dbo].[drivers]
WHERE team_key IS NOT NULL

GO;

;WITH Drivers AS
(
SELECT [broadcast_name]
      ,[country_code]
      ,[driver_key]
      ,[first_name]
      ,[full_name]
      ,[headshot_url]
      ,[last_name]
      ,[meeting_key]
      ,[name_acronym]
      ,[session_key]
      ,[team_colour]
      ,[team_key]
	  ,ROW_NUMBER() OVER(PARTITION BY driver_key ORDER BY driver_key) AS RowNumber
  FROM [SequelFormulaNew].[dbo].[drivers]
)

DELETE FROM Drivers WHERE RowNumber > 1;
