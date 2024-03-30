;WITH DuplicateDrivers AS ( 

SELECT 
    driver_key, 
    meeting_key, 
    session_key,
    ROW_NUMBER() OVER(PARTITION BY driver_key, meeting_key, session_key ORDER BY driver_key) as RowNumber  
FROM 
    [SequelFormulaNew].[dbo].[drivers] 
)

DELETE FROM DuplicateDrivers WHERE RowNumber > 1