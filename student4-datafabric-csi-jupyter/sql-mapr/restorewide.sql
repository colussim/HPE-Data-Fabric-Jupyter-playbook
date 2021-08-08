USE [master]
drop database WideWorldImporters
go
PRINT N'Begin Restore DataBase.......';
go
RESTORE DATABASE [WideWorldImporters] FROM  DISK = N'/var/opt/mssql/backup/WideWorldImporters-Full.bak ' WITH  FILE = 1,  
MOVE N'WWI_Primary' TO N'/var/opt/mssql/data/WideWorldImporters.mdf',  
MOVE N'WWI_UserData' TO N'/var/opt/mssql/data/WideWorldImporters_UserData.ndf', 
MOVE N'WWI_Log'  TO N'/var/opt/mssql/data/WideWorldImporters.ldf',  
MOVE N'WWI_InMemory_Data_1' TO N'/var/opt/mssql/data/WideWorldImporters_InMemory_Data_1', 
NOUNLOAD,  STATS = 5
GO
