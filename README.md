# SchoolDatabase
Simulates DB for university/school also with implemented automatic data archiving.

Project created for learning purposes and for presenting programming skills. 

Created using:

	MS SQL Server Version: 2016
	Programming language: T-SQL
	Testing framework: tsqlt
	
Installation:

	Create DB from included .bak (backup) file under MS SQL Server
	or
	Make "Publish..." for project under the MS Visual Studio.
	
Usage:

	Dedicated front-end for DB presentation and usage is located in repository: https://github.com/agatablazejewska/SchoolDatabaseApp
	
Navigation:

	Project consist of folders:
		- Archived - Archived crucial data after their deletion from DB (example: Students with their referenced data after deletion are stored to archive tables)
		- DatabaseBackup - Contains .bak (backup) file of DB
		- Inserts - Script with inserting example data
		- Listeners - Tables with Students data and procedures for operations on these tables
		- Staff - Tables with Staff data and procedures for operations on these tables
		- Studies - Tables with University/School structure data and procedures for operations on these tables
		- Utilities - Dictionary tables and procedures for operations on these tables
		- Utils - Helper functions, procedures and views
		
	Folder names are also names for schemas.
