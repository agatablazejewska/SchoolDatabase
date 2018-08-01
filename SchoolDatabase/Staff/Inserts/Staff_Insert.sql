USE SchoolDatabase;
GO

--Inserting some data into staff.Employees
EXEC staff.uspInsertEmployees 'Michael','Felts', NULL, 'Eng','98374023841',20,200; 
EXEC staff.uspInsertEmployees 'Daniel','Albright', NULL, 'Prof','983471039421', 19, 200;
EXEC staff.uspInsertEmployees 'Ryan','Trent', NULL,'PhD','92381280940',18, 200;
EXEC staff.uspInsertEmployees 'Richard','Zick', NULL,'MS','94029340239',17,200;
EXEC staff.uspInsertEmployees 'Robert','Watts',NULL,'BS','83729102843',16,205;
EXEC staff.uspInsertEmployees 'Julia','Smith',NULL,'Postdoc','83740182731',15,204;
EXEC staff.uspInsertEmployees 'Terrance','Solares',NULL,'PhD','87492047128',14,200;
EXEC staff.uspInsertEmployees 'Sandra','Caley',NULL,'MS','67723918321',13,201;
EXEC staff.uspInsertEmployees 'Janie','Lawson',NULL,'Prof','64810283721',12,200;
EXEC staff.uspInsertEmployees 'Carole','McKinney', NULL,'BS','87302810481',11,200;
EXEC staff.uspInsertEmployees 'Angela', 'Keller', NULL, 'MA','99312840212',10,200;
EXEC staff.uspInsertEmployees 'Donald','Simmons', NULL, 'Prof','67391726391',9,200;
EXEC staff.uspInsertEmployees 'Max','Collins', NULL, 'Prof', '76381927381',8,200;
EXEC staff.uspInsertEmployees 'James', 'Levy', NULL,'Prof','73910385031', 7,200;
EXEC staff.uspInsertEmployees 'Martin','Zepeda',NULL,'Prof','73048502174',6,200;

--Inserting some data into staff.Departments
EXEC staff.uspInsertDepartments 'Department of Computer Architecture', 'DoCA',12;
EXEC staff.uspInsertDepartments 'Department of Organic Chemistry', 'DoOC', 13;
EXEC staff.uspInsertDepartments 'Department of Biomedical Engineering', 'DoBE', 14;
EXEC staff.uspInsertDepartments 'Department of Electrical Power Engineering', 'DoEPE', 15;
EXEC staff.uspInsertDepartments 'Department of Geography', 'DoPC', 2;

--Updating Departments in staff.Employees
EXEC staff.uspUpdateEmployees 1,'Michael','Felts', 1, 'Eng','98374023841',20,200; 
EXEC staff.uspUpdateEmployees 2,'Daniel','Albright', 5, 'Prof','983471039421', 19, 200;
EXEC staff.uspUpdateEmployees 3,'Ryan','Trent', 2,'PhD','92381280940',18, 200;
EXEC staff.uspUpdateEmployees 4,'Richard','Zick', 5,'MS','94029340239',17,200;
EXEC staff.uspUpdateEmployees 5,'Robert','Watts',4,'BS','83729102843',16,205;
EXEC staff.uspUpdateEmployees 6,'Julia','Smith',3,'Postdoc','83740182731',15,204;
EXEC staff.uspUpdateEmployees 7,'Terrance','Solares',1,'PhD','87492047128',14,200;
EXEC staff.uspUpdateEmployees 8,'Sandra','Caley',2,'MS','67723918321',13,201;
EXEC staff.uspUpdateEmployees 9,'Janie','Lawson',5,'Prof','64810283721',12,200;
EXEC staff.uspUpdateEmployees 10,'Carole','McKinney', 4,'BS','87302810481',11,200;
EXEC staff.uspUpdateEmployees 11,'Angela', 'Keller', 3, 'MA','99312840212',10,200;
EXEC staff.uspUpdateEmployees 12,'Donald','Simmons', 1, 'Prof','67391726391',9,200;
EXEC staff.uspUpdateEmployees 13,'Max','Collins', 2, 'Prof', '76381927381',8,200;
EXEC staff.uspUpdateEmployees 14,'James', 'Levy', 3,'Prof','73910385031', 7,200;
EXEC staff.uspUpdateEmployees 15,'Martin','Zepeda',4,'Prof','73048502174',6,200;

--Inserting some data into staff.Counsellors
EXEC staff.uspInsertCounsellors 6,'marjak@gmail.com','239-193-481';
EXEC staff.uspInsertCounsellors 10, 'kjane@gmail.com','391-238-238';
EXEC staff.uspInsertCounsellors 2, 'ojelas@gmail.com','182-293-128';
EXEC staff.uspInsertCounsellors 5, 'hramd@gmail.com', '283-491-239';
EXEC staff.uspInsertCounsellors 1,'ojak@gmail.com','127-283-273';
EXEC staff.uspInsertCounsellors 4,'suwp@gmail.com','192-293-120';
EXEC staff.uspInsertCounsellors 7, 'koark@gmail.com', '127-238-291';
EXEC staff.uspInsertCounsellors 13, 'urgena@gmail.com','128-892-912';
EXEC staff.uspInsertCounsellors 3, 'loaran@gmail.com','938-237-237';
EXEC staff.uspInsertCounsellors 8, 'ewan@gmail.com','934-238-480';