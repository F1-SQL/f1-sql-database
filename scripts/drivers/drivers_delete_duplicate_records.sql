;WITH DuplicateDrivers AS ( 

SELECT 
    driver_key, 
    meeting_key, 
    session_key,
    ROW_NUMBER() OVER(PARTITION BY driver_key, meeting_key, session_key ORDER BY driver_key) as RowNumber  
FROM 
    [dbo].[drivers] 
)

DELETE FROM DuplicateDrivers WHERE RowNumber > 1

GO

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
  FROM [dbo].[drivers]
)

DELETE FROM Drivers WHERE RowNumber > 1;