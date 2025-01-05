/*
DATABASE NAME: VALKRYIE ARCHIVES 
CREATED BY: PARNEET KAUR UPPAL
STUDENT ID: 0395181
*/

@ECHO OFF
CLS
ECHO Valkyrie Archives Report Generator
ECHO -----------------------------------
ECHO 1. Generate Report
ECHO 2. Exit
ECHO.
SET /P choice=Enter your choice: 

IF '%choice%'=='1' GOTO GenerateReport
IF '%choice%'=='2' GOTO Exit

:GenerateReport
SET /P operationID=Enter a valid OperationID: 
ECHO Generating Report...
sqlcmd -S DESKTOP-I8332UV\MAGNETO7053 -i ValkyrieArchivesReport.sql -o ValkyrieArchivesReport.txt -U sa -P LoneWolf7053 -v operationID=%operationID%
ECHO Report generated successfully! Check ValkyrieArchivesReport.txt.
PAUSE
GOTO End

:Exit
ECHO Exiting...
PAUSE
EXIT

:End
