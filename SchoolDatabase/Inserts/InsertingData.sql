-- Inserting some data into utilities.AcademicTitle
EXEC utilities.uspInsertAcademicTitle 'Bachelor of Arts','BA';
EXEC utilities.uspInsertAcademicTitle 'Bachelor of Science', 'BS';
EXEC utilities.uspInsertAcademicTitle 'Engineer''s degree', 'Eng';
EXEC utilities.uspInsertAcademicTitle 'Master of Arts', 'MA';
EXEC utilities.uspInsertAcademicTitle 'Master of Science', 'MS';
EXEC utilities.uspInsertAcademicTitle 'Doctor of Philosophy', 'PhD';
EXEC utilities.uspInsertAcademicTitle 'Post-doctoral degree', 'Postdoc';
EXEC utilities.uspInsertAcademicTitle 'Professor', 'Prof';
--Inserting some data into utilities.Addressess
EXEC utilities.uspInsertAddresses 'Sepulveda', 'Oakway Lane', '3456', '123', 'California', '91343';
EXEC utilities.uspInsertAddresses 'Oakridge', 'Skinner Hollow Road', '2065','36','Ore n', '94263';
EXEC utilities.uspInsertAddresses 'Liscomb', 'Park Boulevard', '2039','46', 'Iowa', '50148';
EXEC utilities.uspInsertAddresses 'Arlington', 'Broadcast Drive', '2343','937', 'Virginia', '22201';
EXEC utilities.uspInsertAddresses 'Seattle', 'Mutton Town Road', '456','442', 'Washington','98133';
EXEC utilities.uspInsertAddresses 'Dallas', 'Baker Avenue', '3487','78', 'Texas','75244';
EXEC utilities.uspInsertAddresses 'Worthington', 'Robinson Lane', '274','93', 'Ohio','43085';
EXEC utilities.uspInsertAddresses 'Wilmington', 'Callison Lane', '356','563', 'Delaware', '19801';
EXEC utilities.uspInsertAddresses 'Mays','Winifred Way', '923','943', 'Indiana', '46155';
EXEC utilities.uspInsertAddresses 'Elmsford', 'Morningview Lane', '4674','51', 'New York','10523';
EXEC utilities.uspInsertAddresses 'Fulton','Melville Street','7623','789','Tennessee','42041';
EXEC utilities.uspInsertAddresses 'Grand Rapids','Twin Oaks Drive','982','34','Michigan','49503';
EXEC utilities.uspInsertAddresses 'Owatonna','Pritchard Court', '5328','424','Minnesota','55060';
EXEC utilities.uspInsertAddresses 'Sergeant Bluff','Woodland Drive', '1993','38', 'Iowa','51054';
EXEC utilities.uspInsertAddresses 'Baltimore', 'Hickory Heights Drive', '748','2','Maryland','21201';
EXEC utilities.uspInsertAddresses 'Jacksonville', 'Arrowood Drive', '2345', '21', 'Florida', '32204';
EXEC utilities.uspInsertAddresses 'Gulfport','Kelley Road', '321','95','Mississippi','39503';
EXEC utilities.uspInsertAddresses 'Baltimore','Five Points', '974','22','Maryland','21201';
EXEC utilities.uspInsertAddresses 'Atlanta','Post Farm Road','7541','82','Georgia','30303';
EXEC utilities.uspInsertAddresses 'Indianapolis','Barfield Lane','23','134','Indiana','46254';
EXEC utilities.uspInsertAddresses 'Chica ','Bingamon Branch Road', '341','432', 'Illinois','60631';
EXEC utilities.uspInsertAddresses 'Brockport','James Street', '45','523','New York','14420';
EXEC utilities.uspInsertAddresses 'New Berlin','Woodlawn Drive', '2423', '466', 'Wisconsin','53151';
EXEC utilities.uspInsertAddresses 'Star City','Villa Drive', '2099','453', 'Indiana','46985';
EXEC utilities.uspInsertAddresses 'Stamford','Cook Hill Road','5430','953', 'Connecticut','06901';
EXEC utilities.uspInsertAddresses 'Boise','Science Center Drive','2394','934','Idaho','83702';
EXEC utilities.uspInsertAddresses 'Greensboro','Keyser Ridge Road', '932','237','North Carolina','27403';
EXEC utilities.uspInsertAddresses 'Springfield','Briarwood Road', '3482','973', 'Missouri','65804';
EXEC utilities.uspInsertAddresses 'Hazleton','High Meadow Lane', '3456','34', 'Pennsylvania','18201'; 
EXEC utilities.uspInsertAddresses 'Clinton','Armory Road','3452','245', 'North Carolina','28328';
EXEC utilities.uspInsertAddresses 'Boston','Gerald L. Bates Drive','1220','453', 'Massachusetts','02110';
EXEC utilities.uspInsertAddresses 'Southfield','Charles Street', '1234','93', 'Michigan','48075';
EXEC utilities.uspInsertAddresses 'Reno','Martha Ellen Drive','34','938','Nevada','89501';
EXEC utilities.uspInsertAddresses 'Roanoke','Baker Avenue','335', '20', 'Texas','76262';
EXEC utilities.uspInsertAddresses 'Northridge','Glendale Avenue', '234', '98', 'California','91324';
EXEC utilities.uspInsertAddresses 'Franklin','Huntz Lane','453','92', 'Massachusetts','23124';
EXEC utilities.uspInsertAddresses 'Lewisville', 'Pritchard Court','243','12','Minnesota','56060';
EXEC utilities.uspInsertAddresses 'Altheimer','Cedar Street', '563','65','Arkansas','72004';
EXEC utilities.uspInsertAddresses 'San Francisco','Boring Lane', '321','56', 'California','94108';
EXEC utilities.uspInsertAddresses 'Olivette', 'Rodney Street', '1541','4','Missouri','63132';
EXEC utilities.uspInsertAddresses 'Charleston', 'Khale Street', '960', '32','South Carolina', '29403';
--Inserting some data into utilities.ClassTypes
EXEC utilities.uspInsertClassTypes 'l', 'Lecture', 0.4;
EXEC utilities.uspInsertClassTypes 'p', 'Practical', 0.6;
EXEC utilities.uspInsertClassTypes 'd', 'Design', 0.6;
EXEC utilities.uspInsertClassTypes 'e','Excercises',0.6;
EXEC utilities.uspInsertClassTypes 's','Seminar',0.4;
--Inserting some data into utilities.Grades
EXEC utilities.uspInsertGrades 2.0, 2.0, 'two';
EXEC utilities.uspInsertGrades 2.5, 2.5, 'two-point-five';
EXEC utilities.uspInsertGrades 3.0, 3.0, 'three';
EXEC utilities.uspInsertGrades 3.5, 3.5, 'three-point-five';
EXEC utilities.uspInsertGrades 4.0, 4.0, 'four';
EXEC utilities.uspInsertGrades 4.5, 4.5, 'four-point-five';
EXEC utilities.uspInsertGrades 5.0, 5.0, 'five';
--Inserting some data into utilities.Scholarships
EXEC utilities.uspInsertScholarships 'Sports', 350;
EXEC utilities.uspInsertScholarships 'Social', 500;
EXEC utilities.uspInsertScholarships 'Disabled', 700;
EXEC utilities.uspInsertScholarships 'Relocation', 200;
EXEC utilities.uspInsertScholarships 'Scientific', 500;
--Inserting some data into utilities.Semesters
EXEC utilities.uspInsertSemesters 1, 'First';
EXEC utilities.uspInsertSemesters 2, 'Second';
EXEC utilities.uspInsertSemesters 3, 'Third';
EXEC utilities.uspInsertSemesters 4, 'Fourth';
EXEC utilities.uspInsertSemesters 5, 'Fifth';
EXEC utilities.uspInsertSemesters 6, 'Sixth';
EXEC utilities.uspInsertSemesters 7, 'Seventh';
--Inserting some data into utilities.Statuses
EXEC utilities.uspInsertStatuses 'Active';
EXEC utilities.uspInsertStatuses 'Inactive';
EXEC utilities.uspInsertStatuses 'Retired';
EXEC utilities.uspInsertStatuses 'Dean''s leave';
EXEC utilities.uspInsertStatuses 'Maternity leave';
EXEC utilities.uspInsertStatuses 'Paternity leave';
EXEC utilities.uspInsertStatuses 'Sick leave';
EXEC utilities.uspInsertStatuses 'Awaiting';
--Inserting some data into utilities.StudyLevels
EXEC utilities.uspInsertStudyLevels 'Bachelor', 6;--1
EXEC utilities.uspInsertStudyLevels 'Engineering', 7;--2
EXEC utilities.uspInsertStudyLevels 'Postgraduate', 3;--3
EXEC utilities.uspInsertStudyLevels 'Masters', 3;--4
EXEC utilities.uspInsertStudyLevels 'Doctoral', 6;--5
--Inserting some data into utilities.FormsOfStudy
EXEC utilities.uspInsertFormsOfStudy 'f', 'Full time', 'Mon.-Fri.','07:15-17:15', 0;
EXEC utilities.uspInsertFormsOfStudy 'p','Part time', 'Fri.-Sun.', '07:15-21:15', 2800;
EXEC utilities.uspInsertFormsOfStudy 'e', 'Evening', 'Mon.-Fri.', '17:15-21:15', 2000;
--Inserting some data into staff.Employees
EXEC staff.uspInsertEmployees 'Michael','Felts', 'Eng','98374023841',20,201; --1
EXEC staff.uspInsertEmployees 'Daniel','Albright','Prof','983471039421', 19, 201; --2
EXEC staff.uspInsertEmployees 'Ryan','Trent','PhD','92381280940',18, 200; --3
EXEC staff.uspInsertEmployees 'Richard','Zick','MS','94029340239',17,200; --4
EXEC staff.uspInsertEmployees 'Robert','Watts','Prof','83729102843',16,205; --5
EXEC staff.uspInsertEmployees 'Julia','Smith','Postdoc','83740182731',15,204; --6
EXEC staff.uspInsertEmployees 'Terrance','Solares','PhD','87492047128',14,200; --7
EXEC staff.uspInsertEmployees 'Sandra','Caley','MS','67723918321',13,201; --8 
EXEC staff.uspInsertEmployees 'Janie','Lawson','Prof','64810283721',12,200;--9
EXEC staff.uspInsertEmployees 'Carole','McKinney', 'BS','87302810481',11,200;--10
EXEC staff.uspInsertEmployees 'Angela', 'Keller', 'MA','99312840212',10,200;--11
EXEC staff.uspInsertEmployees 'Donald','Simmons', 'Prof','67391726391',9,200;--12
EXEC staff.uspInsertEmployees 'Max','Collins', 'Prof', '76381927381',8,200;--13
EXEC staff.uspInsertEmployees 'James', 'Levy','Prof','73910385031', 7,200;--14
EXEC staff.uspInsertEmployees 'Martin','Zepeda','Prof','73048502174',6,200;--15
EXEC staff.uspInsertEmployees 'Robert', 'King', 'Prof', '65928374612', 26, 200;--16
EXEC staff.uspInsertEmployees 'Asha', 'Modsen', 'PhD', '87632643190', 27, 200;--17
EXEC staff.uspInsertEmployees 'Daisy', 'Moner', 'MS', '78364521937', 28, 200; --18
EXEC staff.uspInsertEmployees 'Monica', 'Stelman','MA', '76598601234', 29, 200;--19
EXEC staff.uspInsertEmployees 'David', 'Misen', 'BS', '67354219361', 30, 200;--20
EXEC staff.uspInsertEmployees 'Karol', N'Miżewski', 'MA', '85630164274', 31, 200;--21
EXEC staff.uspInsertEmployees 'Stefan', 'Rodrick', 'PhD', '56783519463', 32, 200;--22
EXEC staff.uspInsertEmployees 'Theodor', 'Kien', 'Prof', '86491363125', 33, 200;--23
EXEC staff.uspInsertEmployees 'Lucas', 'Lester', 'MS', '609741236431', 34, 200; --24
EXEC staff.uspInsertEmployees 'Leon', 'Zarno', 'PhD', '65832154823', 35, 200; --25
EXEC staff.uspInsertEmployees 'Agatha', 'Christie', 'Prof', '67592361239', 36,200; --26
EXEC staff.uspInsertEmployees 'Norbert', 'Crause', 'Prof', '71236593174', 37, 200; --27
--Inserting into studies.Faculties
EXEC studies.uspInsertFaculties 'IaT','Informatics and Telecommunications', 1, 'IT100';--1
EXEC studies.uspInsertFaculties 'EaA', 'Electronics and Automatics', 12,'EA205';--2
EXEC studies.uspInsertFaculties 'Ch','Chemistry',13,'CH125'--3
EXEC studies.uspInsertFaculties	'Nano','Nanotechnology',6,'NANO874';--4
EXEC studies.uspInsertFaculties 'Bio', 'Biomedicis',14,'BIO005';--5
EXEC studies.uspInsertFaculties 'FaD','Food and Dietetics', 2,'FAD002';--6
EXEC studies.uspInsertFaculties 'En', 'Energetics',15,'EN920';--7
EXEC studies.uspInsertFaculties 'RaD', 'Robotics and Drives', 7,'RAD1450';--8
EXEC studies.uspInsertFaculties 'OEaST', 'Ocean Engineering and Ship Technology',16,'OEAST918';--9
EXEC studies.uspInsertFaculties 'CaEE', 'Civil and Environmental Engineering', 17,'CAEE1290';--10
--Inserting some data into studies.FieldsOfStudies
EXEC studies.uspInsertFieldsOfStudies 'Informatics', 320; --1
EXEC studies.uspInsertFieldsOfStudies 'Telecommunications', 280; --2
EXEC studies.uspInsertFieldsOfStudies 'Electronics', 360;--3
EXEC studies.uspInsertFieldsOfStudies 'Automatics',220;--4
EXEC studies.uspInsertFieldsOfStudies 'Chemistry',340;--5
EXEC studies.uspInsertFieldsOfStudies 'Cosmetology', 330;--6
EXEC studies.uspInsertFieldsOfStudies 'Nanotechnology', 350;--7
EXEC studies.uspInsertFieldsOfStudies 'Physical Chemistry', 200;--8
EXEC studies.uspInsertFieldsOfStudies 'Biology', 260; --9
EXEC studies.uspInsertFieldsOfStudies 'Biomedicine',340;--10
EXEC studies.uspInsertFieldsOfStudies 'Dietetics', 220;--11
EXEC studies.uspInsertFieldsOfStudies 'Food Technology', 260;--12
EXEC studies.uspInsertFieldsOfStudies 'Power Engineering', 400;--13
EXEC studies.uspInsertFieldsOfStudies 'Renewable Energy',300;--14
EXEC studies.uspInsertFieldsOfStudies 'Robotics', 240;--15
EXEC studies.uspInsertFieldsOfStudies 'Programming Drives', 170;--16
EXEC studies.uspInsertFieldsOfStudies 'Ocean Engineering', 210;--17
EXEC studies.uspInsertFieldsOfStudies 'Transport', 160;--18
EXEC studies.uspInsertFieldsOfStudies 'Civil Engineering', 230;--19
EXEC studies.uspInsertFieldsOfStudies 'Environmental Engineering', 340;--20
--Inserting some data into studies.Faculties_FieldsOfStudies
EXEC studies.uspInsertFaculties_FieldsOfStudies 'IaT', 1, 'f'; 
EXEC studies.uspInsertFaculties_FieldsOfStudies 'IaT', 2, 'p';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'IaT', 4, 'p';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'EaA', 3, 'f';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'EaA', 4, 'f';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'Ch', 5, 'f';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'Ch', 6, 'p';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'Ch', 8, 'f';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'Nano', 7, 'p';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'Nano', 8, 'p';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'Bio', 9, 'p';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'Bio', 10, 'f';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'FaD', 11, 'f';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'FaD', 12, 'p';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'En', 13, 'p';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'En', 14, 'p';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'RaD', 15, 'p';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'RaD', 16, 'f';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'OEaST', 17, 'f';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'OEasT', 18, 'p';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'CaEE', 19, 'p';
EXEC studies.uspInsertFaculties_FieldsOfStudies 'CaEE', 20, 'f';
--Inserting some data into studies.SchoolSubjects
EXEC studies.uspInsertSchoolSubjects 'PB', 'Programming Basics', 20,0,'p'; --1, 2, 3,4,15,16
EXEC studies.uspInsertSchoolSubjects 'PB', 'Programming Basics',25, 12,'l';--1,2,3,4,15,16
EXEC studies.uspInsertSchoolSubjects 'LA','Linear Algebra', 30,6,'l';--1,2,3,4,5,7,8,13,14,15,16
EXEC studies.uspInsertSchoolSubjects 'LA', 'Linear Algebra', 30,0,'e';--1,2,3,4,5,7,8,13,14,15,16
EXEC studies.uspInsertSchoolSubjects 'Phs','Physics',20,4,'l';--1,2,3,4,7,8,13,14,15,16,20
EXEC studies.uspInsertSchoolSubjects 'Phs','Physics',15,0,'e';--1,2,3,4,7,8,13,14,15,16,20
EXEC studies.uspInsertSchoolSubjects 'NB', 'Networking Basics',30,8,'l';--1,2,14,16
EXEC studies.uspInsertSchoolSubjects 'IC','Inorganic Chemistry', 25,6,'l'; --5,6,7,8
EXEC studies.uspInsertSchoolSubjects 'IC','Inorganic Chemistry',25,0,'p';--5,6,7,8
EXEC studies.uspInsertSchoolSubjects 'OC', 'Organic Chemistry', 30,8,'l';--5,6,,7,8,9,10,11,12
EXEC studies.uspInsertSchoolSubjects 'OC','Organic Chemistry',30,0,'p';--5,6,7,8,9,10,11,12
EXEC studies.uspInsertSchoolSubjects 'SA','Skin Anatomy',30,12,'l';--6,9,10
EXEC studies.uspInsertSchoolSubjects 'SC','Skin Care',25,8,'l';--6
EXEC studies.uspInsertSchoolSubjects 'SC','Skin Care', 20,0,'p';--6
EXEC studies.uspInsertSchoolSubjects 'QP','Quantum Physics',20,6,'l';--7,8,13,14
EXEC studies.uspInsertSchoolSubjects 'QP','Quantum Physics',30,0,'e';--7,8,13,14
EXEC studies.uspInsertSchoolSubjects 'NP','Nano Particles',35,12,'l'; --7
EXEC studies.uspInsertSchoolSubjects 'NSTR', 'Nanostructures', 25,8,'l'; --7
EXEC studies.uspInsertSchoolSubjects 'NSTR', 'Nanostructures', 25,0,'p';--7
EXEC studies.uspInsertSchoolSubjects 'MS', 'Material Science', 20, 4, 'l';--7,8,18,20
EXEC studies.uspInsertSchoolSubjects 'MS', 'Material Science', 30,0,'p';--7,8,18,20
EXEC studies.uspInsertSchoolSubjects 'WC', 'World Climate', 25,14,'l';--9,14,17,18,19,20
EXEC studies.uspInsertSchoolSubjects 'LC', 'Life Cycles',50,18,'l';--9,10
EXEC studies.uspInsertSchoolSubjects 'HA', 'Human Anatomy', 55, 16, 'l';--6,9,10,11
EXEC studies.uspInsertSchoolSubjects 'HA', 'Human Anatomy', 70, 0,'e';--6,9,10,11
EXEC studies.uspInsertSchoolSubjects 'FFN', 'Fundamental Food Needs', 40,12,'l';--11,12
EXEC studies.uspInsertSchoolSubjects 'FT', 'Food Types',35,12,'l';--11,12
EXEC studies.uspInsertSchoolSubjects 'VP', 'Vegetable Processing', 40, 12,'l';--12
EXEC studies.uspInsertSchoolSubjects 'VP','Vegetable Processing',30,0,'p';--12
EXEC studies.uspInsertSchoolSubjects 'BT', 'Baking Technology', 40,12,'l';--12
EXEC studies.uspInsertSchoolSubjects 'ES', 'Energy Systems', 35,16,'l';--3,13,14
EXEC studies.uspInsertSchoolSubjects 'ES', 'Energy Systems', 20,0,'p';--3,13,14
EXEC studies.uspInsertSchoolSubjects 'WPE', 'Water Power Engineering', 50,14,'l';--14
EXEC studies.uspInsertSchoolSubjects 'FC', 'Fuel Cells', 60,14,'l';--14
EXEC studies.uspInsertSchoolSubjects 'FC', 'Fuel Cells', 30,0,'p';--14
EXEC studies.uspInsertSchoolSubjects 'TPG', 'Thermonuclear Power Generation', 40,22,'l';--13,14
EXEC studies.uspInsertSchoolSubjects 'AM', 'Analytic Mechanic', 40,24,'l';--15,16
EXEC studies.uspInsertSchoolSubjects 'AM', 'Analytic Mehanics', 40,0,'e';--15,16
EXEC studies.uspInsertSchoolSubjects 'AI', 'Artificial Intelligence', 60,6,'l';--1,4,15
EXEC studies.uspInsertSchoolSubjects 'AI', 'Artificial Intelligence', 45,0,'p';--1,4,15
EXEC studies.uspInsertSchoolSubjects 'MoA', 'Methods of Automation', 50,20,'l';--15
EXEC studies.uspInsertSchoolSubjects 'BoD', 'Basics of Drives', 70, 10,'l';--16,1
EXEC studies.uspInsertSchoolSubjects 'BoD', 'Basics of Drives', 35,0,'p';--16,1
EXEC studies.uspInsertSchoolSubjects 'FM', 'Fluid Mechanics',40,20,'l';--17
EXEC studies.uspInsertSchoolSubjects 'Hg', 'Hydrology', 25,10,'l';--17
EXEC studies.uspInsertSchoolSubjects 'Hg', 'Hydrology',40,0,'p';--17
EXEC studies.uspInsertSchoolSubjects 'SMM', 'Ship Motion Mechanics', 30,20,'l';--18
EXEC studies.uspInsertSchoolSubjects 'SMM', 'Ship Motion Mechanics', 50,0,'p';--18
EXEC studies.uspInsertSchoolSubjects 'FoSS', 'Fundamentals of Ship Systems', 40,10,'l';--18
EXEC studies.uspInsertSchoolSubjects 'EaM', 'Economy and Management',60,10,'l';--19
EXEC studies.uspInsertSchoolSubjects 'FoS', 'Fundamentals of Standarization', 40,20,'l';--18,19
EXEC studies.uspInsertSchoolSubjects 'FoS', 'Fundamentals of Standarization',15, 0, 'e';--18,19
EXEC studies.uspInsertSchoolSubjects 'WaEE', 'Wind and Earthquake Engineering', 50, 20,'l';--20
EXEC studies.uspInsertSchoolSubjects 'GaH', 'Geology and Hydrogeology', 80, 10, 'l';--17,20
EXEC studies.uspInsertSchoolSubjects 'GaH', 'Geology and Hydrogeology', 30,0,'p';--17,20
EXEC studies.uspInsertSchoolSubjects 'MC', 'Medicinal Chemistry', 35,12,'l';--5,10
EXEC studies.uspInsertSchoolSubjects 'Myc','Mycology', 40,15,'l'; --9
EXEC studies.uspInsertSchoolSubjects 'TE','Transport Economics',45,18,'l';--18
EXEC studies.uspInsertSchoolSubjects 'Tc', 'Thermochemistry', 30,22,'l';--5
EXEC studies.uspInsertSchoolSubjects 'Tc', 'Thermochemistry', 30,0,'p';--5
EXEC studies.uspInsertSchoolSubjects 'RS', 'Remote Sensing', 20,16, 'l'; --17,18,20
EXEC studies.uspInsertSchoolSubjects 'PC', 'Public Policy', 35,14,'l'; --19
EXEC studies.uspInsertSchoolSubjects 'HS', 'Highway Safety', 50,20,'l'; --18
EXEC studies.uspInsertSchoolSubjects 'ToC', 'Theory Of Computation', 25, 10, 'l'; --1
EXEC studies.uspInsertSchoolSubjects 'IE', 'International Economics', 35, 16, 'l'; --19
EXEC studies.uspInsertSchoolSubjects 'AC', 'Animal Communications', 50, 20, 'l'; --9
EXEC studies.uspInsertSchoolSubjects 'EE', 'Ecological Economics', 20, 15, 'l';--19
EXEC studies.uspInsertSchoolSubjects 'EE', 'Ecological Economics', 20, 0, 'e';--19
EXEC studies.uspInsertSchoolSubjects 'AE', 'Agricultural Engineering', 40,15,'l';--19,20
EXEC studies.uspInsertSchoolSubjects 'MT', 'Marine Transportation', 70, 25, 'l';--17,18
EXEC studies.uspInsertSchoolSubjects 'DA', 'Differential Algebra', 30, 10, 'l'; --1,2,3,4,7,8,15
EXEC studies.uspInsertSchoolSubjects 'DA', 'Differential Algebra', 30, 10, 'e'; --1,2,3,4,7,8,15
EXEC studies.uspInsertSchoolSubjects 'Db', 'Databases', 25, 10, 'l'; --1
EXEC studies.uspInsertSchoolSubjects 'Db', 'Databases', 30, 0, 'p';--1
EXEC studies.uspInsertSchoolSubjects 'OS', 'Operating Systems', 40, 20, 'l'; --1, 2,4,16
EXEC studies.uspInsertSchoolSubjects 'OS', 'Operating Systems', 20, 0, 'p'; --1,2,4,16
EXEC studies.uspInsertSchoolSubjects 'OOP', 'Object Oriented Programming', 30, 20, 'l'; --1,2,4,16
EXEC studies.uspInsertSchoolSubjects 'OOP', 'Object Oriented Programming', 40, 0, 'p'; --1,2,4,16
EXEC studies.uspInsertSchoolSubjects 'CG', 'Computer Graphics', 30, 10, 'l'; --1
EXEC studies.uspInsertSchoolSubjects 'CG', 'Computer Graphics', 30, 0, 'p'; --1
EXEC studies.uspInsertSchoolSubjects 'ST', 'Signal Theory', 40, 20, 'l'; --2
EXEC studies.uspInsertSchoolSubjects 'CT', 'Communication Technology', 30, 10,'l';--2
EXEC studies.uspInsertSchoolSubjects 'DT', 'Data Transmission', 40, 15, 'l';--2
EXEC studies.uspInsertSchoolSubjects 'TT', 'Telecommunications Tools', 35, 16, 'l';--2
EXEC studies.uspInsertSchoolSubjects 'TT', 'Telecommunications Tools', 20, 0, 'p';--2
EXEC studies.uspInsertSchoolSubjects 'EC', 'Electrical Circuits', 40, 12, 'l';--3,13,15
EXEC studies.uspInsertSchoolSubjects 'EC', 'Electrical Circuits', 30, 0,'e'; --3, 13, 15
EXEC studies.uspInsertSchoolSubjects 'LE', 'Lighting Engineering', 70, 25, 'l'; --3
EXEC studies.uspInsertSchoolSubjects 'SH', 'Smart Homes', 30, 20, 'l'; --4
EXEC studies.uspInsertSchoolSubjects 'RM', 'Regulation Methods', 35, 15, 'l';--4
EXEC studies.uspInsertSchoolSubjects 'RM', 'Regulation Methods', 40, 0, 'p';--4
EXEC studies.uspInsertSchoolSubjects 'TiA', 'Technologies in Automation', 50, 15, 'l';--4
--Inserting some data into studies.InformaticsEF
EXEC studies.uspInsertIaTInformaticsEF 1, 'pPB';
EXEC studies.uspInsertIaTInformaticsEF 1, 'lPB';
EXEC studies.uspInsertIaTInformaticsEF 1, 'lLA';
EXEC studies.uspInsertIaTInformaticsEF 1, 'eLA';
EXEC studies.uspInsertIaTInformaticsEF 2,'lPhs';
EXEC studies.uspInsertIaTInformaticsEF 2, 'ePhs';
EXEC studies.uspInsertIaTInformaticsEF 2, 'lNB';
EXEC studies.uspInsertIaTInformaticsEF 3,'lAI';
EXEC studies.uspInsertIaTInformaticsEF 3, 'pAI';
EXEC studies.uspInsertIaTInformaticsEF 3, 'lBoD';
EXEC studies.uspInsertIaTInformaticsEF 3, 'pBoD';
EXEC studies.uspInsertIaTInformaticsEF 4, 'lToC';
EXEC studies.uspInsertIaTInformaticsEF 5, 'lDA';
EXEC studies.uspInsertIaTInformaticsEF 5, 'eDA';
EXEC studies.uspInsertIaTInformaticsEF 6, 'lOOP';
EXEC studies.uspInsertIaTInformaticsEF 6, 'pOOP';
EXEC studies.uspInsertIaTInformaticsEF 7, 'lCG';
EXEC studies.uspInsertIaTInformaticsEF 7, 'pCG';
--Inserting some data into studies.TelecommunicationsEP
EXEC studies.uspInsertIaTTelecommunicationsEP 1, 'lPB';
EXEC studies.uspInsertIaTTelecommunicationsEP 1, 'pPB';
EXEC studies.uspInsertIaTTelecommunicationsEP 1, 'lLA';
EXEC studies.uspInsertIaTTelecommunicationsEP 1, 'eLA';
EXEC studies.uspInsertIaTTelecommunicationsEP 2, 'lNB';
EXEC studies.uspInsertIaTTelecommunicationsEP 2, 'lOS';
EXEC studies.uspInsertIaTTelecommunicationsEP 2, 'pOS';
EXEC studies.uspInsertIaTTelecommunicationsEP 3, 'lPhs';
EXEC studies.uspInsertIaTTelecommunicationsEP 3, 'ePhs';
EXEC studies.uspInsertIaTTelecommunicationsEP 4, 'lOOP';
EXEC studies.uspInsertIaTTelecommunicationsEP 4, 'pOOP';
EXEC studies.uspInsertIaTTelecommunicationsEP 4, 'lDA';
EXEC studies.uspInsertIaTTelecommunicationsEP 4, 'eDA';
EXEC studies.uspInsertIaTTelecommunicationsEP 5, 'lST';
EXEC studies.uspInsertIaTTelecommunicationsEP 5, 'lCT';
EXEC studies.uspInsertIaTTelecommunicationsEP 6, 'lTT';
EXEC studies.uspInsertIaTTelecommunicationsEP 6, 'pTT';
EXEC studies.uspInsertIaTTelecommunicationsEP 7, 'lDT';
--Inserting some data into studies.ElectronicsEF
EXEC studies.uspInsertEaAElectronicsEF 1, 'lPB';
EXEC studies.uspInsertEaAElectronicsEF 1, 'pPB';
EXEC studies.uspInsertEaAElectronicsEF 2, 'lLA';
EXEC studies.uspInsertEaAElectronicsEF 2, 'eLA';
EXEC studies.uspInsertEaAElectronicsEF 3, 'lPhs';
EXEC studies.uspInsertEaAElectronicsEF 3, 'ePhs';
EXEC studies.uspInsertEaAElectronicsEF 4, 'lDA';
EXEC studies.uspInsertEaAElectronicsEF 4, 'eDA';
EXEC studies.uspInsertEaAElectronicsEF 5, 'lES';
EXEC studies.uspInsertEaAElectronicsEF 5, 'pES';
EXEC studies.uspInsertEaAElectronicsEF 6, 'lEC';
EXEC studies.uspInsertEaAElectronicsEF 6, 'eEC';
EXEC studies.uspInsertEaAElectronicsEF 7, 'lLE';
--Inserting some data into studies.AutomaticsMP
EXEC studies.uspInsertEaAAutomaticsMP 1, 'lAI';
EXEC studies.uspInsertEaAAutomaticsMP 1, 'pAI';
EXEC studies.uspInsertEaAAutomaticsMP 1, 'lOOP';
EXEC studies.uspInsertEaAAutomaticsMP 1, 'pOOP';
EXEC studies.uspInsertEaAAutomaticsMP 2, 'lOS';
EXEC studies.uspInsertEaAAutomaticsMP 2, 'pOS';
EXEC studies.uspInsertEaAAutomaticsMP 2, 'lSH';
EXEC studies.uspInsertEaAAutomaticsMP 3, 'lMoA';
EXEC studies.uspInsertEaAAutomaticsMP 3, 'lRM';
EXEC studies.uspInsertEaAAutomaticsMP 3, 'pRM';
EXEC studies.uspInsertEaAAutomaticsMP 3, 'lTiA';
--Inserting some data into staff.Departments
EXEC staff.uspInsertDepartments 'Department of Computer Architecture', 'DoCA','IaT';--1
EXEC staff.uspInsertDepartments 'Department of Organic Chemistry', 'DoOC','Ch';--2
EXEC staff.uspInsertDepartments 'Department of Biomedical Engineering', 'DoBE','Bio';--3
EXEC staff.uspInsertDepartments 'Department of Electrical Power Engineering', 'DoEPE','En';--4
EXEC staff.uspInsertDepartments 'Department of Geography', 'DoPC','OEaST';--5
EXEC staff.uspInsertDepartments 'Department of Food Processing', 'DoFP','FaD';--6
EXEC staff.uspInsertDepartments 'Department of Civil Engineering', 'DoCE', 'CaEE';--7
EXEC staff.uspInsertDepartments 'Department of Environmental Engineering', 'DoEE','CaEE';--8
--Inserting some data into staff.Counsellors
EXEC staff.uspInsertCounsellors 6, 6,'marjak@gmail.com','239193481';
EXEC staff.uspInsertCounsellors 10,10, 'kjane@gmail.com','391238238';
EXEC staff.uspInsertCounsellors 2,2, 'ojelas@gmail.com','182293128';
EXEC staff.uspInsertCounsellors 5,5, 'hramd@gmail.com', '283491239';
EXEC staff.uspInsertCounsellors 1,1,'ojak@gmail.com','127283273';
EXEC staff.uspInsertCounsellors 4,4,'suwp@gmail.com','192293120';
EXEC staff.uspInsertCounsellors 7,7, 'koark@gmail.com', '127238291';
EXEC staff.uspInsertCounsellors 13,13, 'urgena@gmail.com','128892912';
EXEC staff.uspInsertCounsellors 3,3, 'loaran@gmail.com','938237237';
EXEC staff.uspInsertCounsellors 8,8, 'ewan@gmail.com','934238480';
--Inserting some data into staff.Employees_Departments
EXEC staff.uspInsertEmployees_Departments 12,1;
EXEC staff.uspInsertEmployees_Departments 13,2;
EXEC staff.uspInsertEmployees_Departments 14, 3;
EXEC staff.uspInsertEmployees_Departments 15, 4;
EXEC staff.uspInsertEmployees_Departments 2, 5;
EXEC staff.uspInsertEmployees_Departments 1, 1;
EXEC staff.uspInsertEmployees_Departments 3, 2;
EXEC staff.uspInsertEmployees_Departments 6, 3;
EXEC staff.uspInsertEmployees_Departments 5, 4;
EXEC staff.uspInsertEmployees_Departments 9, 5;
EXEC staff.uspInsertEmployees_Departments 7, 1;
EXEC staff.uspInsertEmployees_Departments 8, 2;
EXEC staff.uspInsertEmployees_Departments 11, 3;
EXEC staff.uspInsertEmployees_Departments 10, 4;
EXEC staff.uspInsertEmployees_Departments 4, 5;
EXEC staff.uspInsertEmployees_Departments 16, 6;
EXEC staff.uspInsertEmployees_Departments 17, 7;
EXEC staff.uspInsertEmployees_Departments 18, 8;
EXEC staff.uspInsertEmployees_Departments 19, 6;
EXEC staff.uspInsertEmployees_Departments 20, 7;
EXEC staff.uspInsertEmployees_Departments 21, 8;
EXEC staff.uspInsertEmployees_Departments 22, 6;
EXEC staff.uspInsertEmployees_Departments 23, 7;
EXEC staff.uspInsertEmployees_Departments 24, 8;
EXEC staff.uspInsertEmployees_Departments 25, 3;
EXEC staff.uspInsertEmployees_Departments 26, 4;
EXEC staff.uspInsertEmployees_Departments 27, 5;
--Inserting some data into listeners.StudySemesters
EXEC listeners.uspInsertStudySemestersExample 2, 'IaT', 1, 2,'f', 4, 2016, 200; --2
EXEC listeners.uspInsertStudySemestersExample 4, 'IaT',2,2,'p',2,2016,200; --4
EXEC listeners.uspInsertStudySemestersExample 2, 'IaT', 19,4,'f',1, 2015,200; --2
EXEC listeners.uspInsertStudySemestersExample 6, 'CaEE', 19, 2,'p',3,2016,200; --6
EXEC listeners.uspInsertStudySemestersExample 4,'CaEE', 20, 1,'f', 8, 2017, 200; --4
EXEC listeners.uspInsertStudySemestersExample 2, 'EaA', 1, 2,'p', 5, 2017, 200; --2
EXEC listeners.uspInsertStudySemestersExample 3, 'EaA', 4, 4,'p', 10, 2015, 200; --3
--Inserting some data into listeners.DeanGroups
EXEC listeners.uspInsertDeanGroups @DeanGroup = 1, @GroupStudySemester = 1000;
EXEC listeners.uspInsertDeanGroups @DeanGroup = 1, @GroupStudySemester = 1001;
EXEC listeners.uspInsertDeanGroups @DeanGroup = 1, @GroupStudySemester = 1002;
EXEC listeners.uspInsertDeanGroups @DeanGroup = 1, @GroupStudySemester = 1003;
EXEC listeners.uspInsertDeanGroups @DeanGroup = 1, @GroupStudySemester = 1004;
EXEC listeners.uspInsertDeanGroups @DeanGroup = 1, @GroupStudySemester = 1005;
EXEC listeners.uspInsertDeanGroups @DeanGroup = 1, @GroupStudySemester = 1006;
EXEC listeners.uspInsertDeanGroups @DeanGroup = 2, @GroupStudySemester = 1000;
EXEC listeners.uspInsertDeanGroups @DeanGroup = 2, @GroupStudySemester = 1001;
EXEC listeners.uspInsertDeanGroups @DeanGroup = 2, @GroupStudySemester = 1004;
--Inserting some data into listeners.Students
EXEC listeners.uspInsertStudents 'Joy', 'Box','91837401732', 5,'USA', 201;
EXEC listeners.uspInsertStudents 'Stevie', 'Gutierrez', '281923740183',  4,'Mexican', 201;
EXEC listeners.uspInsertStudents 'Judith','Sayler', '93827301748', 3,'Canadian', 200;
EXEC listeners.uspInsertStudents 'Helen', 'Price', '98374017231',  2, 'USA',200;
EXEC listeners.uspInsertStudents  'Donna','Chaney','87364026381',  1, 'USA', 200;
EXEC listeners.uspInsertStudents 'Lisa', 'Martin', '89372947291', 21, 'USA', 203;
EXEC listeners.uspInsertStudents 'Malcolm','Leslie','98327482932', 22, 'USA', 200;
EXEC listeners.uspInsertStudents 'William','Ballinger', '87301749372',23, 'USA', 200; 
EXEC listeners.uspInsertStudents  'Nikita','Santora', '90372819412',  24, 'USA', 200;
EXEC listeners.uspInsertStudents  'Howard','Vogel', '98346364923',  25, 'USA', 200;
EXEC listeners.uspInsertStudents 'John', 'Morris', '95671239561', 38, 'Canadian', 200;
EXEC listeners.uspInsertStudents 'Mike', 'Ross', '93651750948', 39, 'USA', 200;
EXEC listeners.uspInsertStudents 'Harvey', 'Specter', '90126483291', 40, 'USA', 200;
EXEC listeners.uspInsertStudents 'Krzysztof', 'Budniewski', '95724857127', 41, 'Polish', 200;
--Inserting some data into listeners.Students_StudySemesters
EXEC listeners.uspInsertStudents_StudySemesters 1, 1001;
EXEC listeners.uspInsertStudents_StudySemesters 1, 1000;
EXEC listeners.uspInsertStudents_StudySemesters 2, 1000;
EXEC listeners.uspInsertStudents_StudySemesters 3, 1005;
EXEC listeners.uspInsertStudents_StudySemesters 4, 1003;
EXEC listeners.uspInsertStudents_StudySemesters 5, 1002;
EXEC listeners.uspInsertStudents_StudySemesters 5, 1006;
EXEC listeners.uspInsertStudents_StudySemesters 6, 1004;
EXEC listeners.uspInsertStudents_StudySemesters 7, 1001;
EXEC listeners.uspInsertStudents_StudySemesters 8, 1005;
EXEC listeners.uspInsertStudents_StudySemesters 9, 1003;
EXEC listeners.uspInsertStudents_StudySemesters 10, 1004;
EXEC listeners.uspInsertStudents_StudySemesters 11, 1000;
EXEC listeners.uspInsertStudents_StudySemesters 12, 1006;
EXEC listeners.uspInsertStudents_StudySemesters 13, 1004;
EXEC listeners.uspInsertStudents_StudySemesters 13, 1001;
EXEC listeners.uspInsertStudents_StudySemesters 14, 1005;
--Inserting some data into listeners.Courses
EXEC listeners.uspInsertCourses 1000;
EXEC listeners.uspInsertCourses 1001;
EXEC listeners.uspInsertCourses 1006;
--Inserting some data into archived.ArchivedCourses
EXEC archived.uspInsertArchivedCourses 1000;
EXEC archived.uspInsertArchivedCourses 1001;
EXEC archived.uspInsertArchivedCourses 1006;
--Inserting some data into Employees_SchoolSubjects
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'pPB';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'lPB';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'lAI';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'pBoD';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'lToC';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'pAI';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'lNB';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'lBoD';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'lToC';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'lDb';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'pDb';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'pDb';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'lBoD';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'lOS';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'pOS';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'lOOP';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'pOOP';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'lCG';
EXEC staff.uspInsertEmployees_SchoolSubjects 1,'pCG';
EXEC staff.uspInsertEmployees_SchoolSubjects 7,'lCT';
EXEC staff.uspInsertEmployees_SchoolSubjects 7,'lST';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'lTT';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'pTT';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'lOOP';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'pOOP';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'lDB';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'pDB';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'lAI';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'lAI';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'pAI';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'lLA';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'eLA';
EXEC staff.uspInsertEmployees_SchoolSubjects 2, 'lMT';
EXEC staff.uspInsertEmployees_SchoolSubjects 2, 'lTE';
EXEC staff.uspInsertEmployees_SchoolSubjects 2, 'lRS';
EXEC staff.uspInsertEmployees_SchoolSubjects 2, 'lWC';
EXEC staff.uspInsertEmployees_SchoolSubjects 4, 'lRS';
EXEC staff.uspInsertEmployees_SchoolSubjects 4, 'lWC';
EXEC staff.uspInsertEmployees_SchoolSubjects 4, 'lMS';
EXEC staff.uspInsertEmployees_SchoolSubjects 4, 'lHg';
EXEC staff.uspInsertEmployees_SchoolSubjects 4, 'pHg';
EXEC staff.uspInsertEmployees_SchoolSubjects 4, 'lFoSS';
EXEC staff.uspInsertEmployees_SchoolSubjects 9, 'lSMM';
EXEC staff.uspInsertEmployees_SchoolSubjects 2, 'pSMM';
EXEC staff.uspInsertEmployees_SchoolSubjects 9, 'pSMM';
EXEC staff.uspInsertEmployees_SchoolSubjects 9, 'lTE';
EXEC staff.uspInsertEmployees_SchoolSubjects 9, 'lFoSS';
EXEC staff.uspInsertEmployees_SchoolSubjects 2, 'lFoS';
EXEC staff.uspInsertEmployees_SchoolSubjects 4, 'lGaH';
EXEC staff.uspInsertEmployees_SchoolSubjects 4,'pGaH';
EXEC staff.uspInsertEmployees_SchoolSubjects 9, 'lHS';
EXEC staff.uspInsertEmployees_SchoolSubjects 3, 'lIC';
EXEC staff.uspInsertEmployees_SchoolSubjects 3, 'pIC';
EXEC staff.uspInsertEmployees_SchoolSubjects 3, 'lMC';
EXEC staff.uspInsertEmployees_SchoolSubjects 8, 'lOC';
EXEC staff.uspInsertEmployees_SchoolSubjects 8, 'pOC';
EXEC staff.uspInsertEmployees_SchoolSubjects 8, 'lSA';
EXEC staff.uspInsertEmployees_SchoolSubjects 8, 'lSC';
EXEC staff.uspInsertEmployees_SchoolSubjects 8, 'pSC';
EXEC staff.uspInsertEmployees_SchoolSubjects 8, 'lMC';
EXEC staff.uspInsertEmployees_SchoolSubjects 13, 'lLA';
EXEC staff.uspInsertEmployees_SchoolSubjects 13, 'eLA';
EXEC staff.uspInsertEmployees_SchoolSubjects 13, 'lPhs';
EXEC staff.uspInsertEmployees_SchoolSubjects 13, 'ePhs';
EXEC staff.uspInsertEmployees_SchoolSubjects 5, 'lPhs';
EXEC staff.uspInsertEmployees_SchoolSubjects 5, 'ePhs';
EXEC staff.uspInsertEmployees_SchoolSubjects 5, 'lQP';
EXEC staff.uspInsertEmployees_SchoolSubjects 5, 'eQP';
EXEC staff.uspInsertEmployees_SchoolSubjects 5, 'lES';
EXEC staff.uspInsertEmployees_SchoolSubjects 5, 'pES';
EXEC staff.uspInsertEmployees_SchoolSubjects 5, 'lTPG';
EXEC staff.uspInsertEmployees_SchoolSubjects 10, 'lWC';
EXEC staff.uspInsertEmployees_SchoolSubjects 10, 'lES';
EXEC staff.uspInsertEmployees_SchoolSubjects 10, 'pES';
EXEC staff.uspInsertEmployees_SchoolSubjects 10, 'lWPE';
EXEC staff.uspInsertEmployees_SchoolSubjects 10, 'lFC';
EXEC staff.uspInsertEmployees_SchoolSubjects 10, 'pFC';
EXEC staff.uspInsertEmployees_SchoolSubjects 10, 'lEC';
EXEC staff.uspInsertEmployees_SchoolSubjects 10, 'eEC';
EXEC staff.uspInsertEmployees_SchoolSubjects 15, 'lLA';
EXEC staff.uspInsertEmployees_SchoolSubjects 15, 'eLA';
EXEC staff.uspInsertEmployees_SchoolSubjects 15, 'lPhs';
EXEC staff.uspInsertEmployees_SchoolSubjects 15, 'ePhs';
EXEC staff.uspInsertEmployees_SchoolSubjects 15, 'lQP';
EXEC staff.uspInsertEmployees_SchoolSubjects 15, 'eQP';
EXEC staff.uspInsertEmployees_SchoolSubjects 15, 'lES';
EXEC staff.uspInsertEmployees_SchoolSubjects 15, 'pES';
EXEC staff.uspInsertEmployees_SchoolSubjects 6, 'lOC';
EXEC staff.uspInsertEmployees_SchoolSubjects 6, 'pOC';
EXEC staff.uspInsertEmployees_SchoolSubjects 6, 'lSA';
EXEC staff.uspInsertEmployees_SchoolSubjects 6, 'lHA';
EXEC staff.uspInsertEmployees_SchoolSubjects 6, 'eHA';
EXEC staff.uspInsertEmployees_SchoolSubjects 11, 'lWC';
EXEC staff.uspInsertEmployees_SchoolSubjects 11, 'lLC';
EXEC staff.uspInsertEmployees_SchoolSubjects 11, 'lMyc';
EXEC staff.uspInsertEmployees_SchoolSubjects 11, 'lMC';
EXEC staff.uspInsertEmployees_SchoolSubjects 11, 'lAC';
EXEC staff.uspInsertEmployees_SchoolSubjects 14, 'lOC';
EXEC staff.uspInsertEmployees_SchoolSubjects 14, 'pOC';
EXEC staff.uspInsertEmployees_SchoolSubjects 14, 'lHA';
EXEC staff.uspInsertEmployees_SchoolSubjects 14, 'eHA';
EXEC staff.uspInsertEmployees_SchoolSubjects 14, 'lMyc';
EXEC staff.uspInsertEmployees_SchoolSubjects 16, 'lOC';
EXEC staff.uspInsertEmployees_SchoolSubjects 16, 'pOC';
EXEC staff.uspInsertEmployees_SchoolSubjects 16, 'lHA';
EXEC staff.uspInsertEmployees_SchoolSubjects 16, 'eHA';
EXEC staff.uspInsertEmployees_SchoolSubjects 16, 'lFFN';
EXEC staff.uspInsertEmployees_SchoolSubjects 16, 'lFT';
EXEC staff.uspInsertEmployees_SchoolSubjects 16, 'lVP';
EXEC staff.uspInsertEmployees_SchoolSubjects 16, 'pVP';
EXEC staff.uspInsertEmployees_SchoolSubjects 16, 'lBT';
EXEC staff.uspInsertEmployees_SchoolSubjects 17, 'lPhs';
EXEC staff.uspInsertEmployees_SchoolSubjects 17, 'ePhs';
EXEC staff.uspInsertEmployees_SchoolSubjects 17, 'lMS';
EXEC staff.uspInsertEmployees_SchoolSubjects 17, 'pMS';
EXEC staff.uspInsertEmployees_SchoolSubjects 17, 'lWC';
EXEC staff.uspInsertEmployees_SchoolSubjects 18, 'lFoS';
EXEC staff.uspInsertEmployees_SchoolSubjects 18, 'eFoS';
EXEC staff.uspInsertEmployees_SchoolSubjects 18, 'lWaEE';
EXEC staff.uspInsertEmployees_SchoolSubjects 18, 'lGaH';
EXEC staff.uspInsertEmployees_SchoolSubjects 18, 'pGaH';
EXEC staff.uspInsertEmployees_SchoolSubjects 18, 'lPC';
EXEC staff.uspInsertEmployees_SchoolSubjects 18, 'lRS';
EXEC staff.uspInsertEmployees_SchoolSubjects 17, 'lIE';
EXEC staff.uspInsertEmployees_SchoolSubjects 17, 'lEE';
EXEC staff.uspInsertEmployees_SchoolSubjects 18, 'eEE';
EXEC staff.uspInsertEmployees_SchoolSubjects 17, 'lAE';
EXEC staff.uspInsertEmployees_SchoolSubjects 19, 'lOC';
EXEC staff.uspInsertEmployees_SchoolSubjects 19, 'pOC';
EXEC staff.uspInsertEmployees_SchoolSubjects 19, 'lFFN';
EXEC staff.uspInsertEmployees_SchoolSubjects 19, 'lVP';
EXEC staff.uspInsertEmployees_SchoolSubjects 19, 'pVP';
EXEC staff.uspInsertEmployees_SchoolSubjects 19, 'lBT';
EXEC staff.uspInsertEmployees_SchoolSubjects 22, 'lHA';
EXEC staff.uspInsertEmployees_SchoolSubjects 22, 'eHA';
EXEC staff.uspInsertEmployees_SchoolSubjects 22, 'lFFN';
EXEC staff.uspInsertEmployees_SchoolSubjects 22, 'lFT';
EXEC staff.uspInsertEmployees_SchoolSubjects 20, 'lMS';
EXEC staff.uspInsertEmployees_SchoolSubjects 20, 'pMS';
EXEC staff.uspInsertEmployees_SchoolSubjects 20, 'lWC';
EXEC staff.uspInsertEmployees_SchoolSubjects 23, 'lFoS';
EXEC staff.uspInsertEmployees_SchoolSubjects 23, 'eFoS';
EXEC staff.uspInsertEmployees_SchoolSubjects 23, 'lWaEE';
EXEC staff.uspInsertEmployees_SchoolSubjects 23, 'lGaH';
EXEC staff.uspInsertEmployees_SchoolSubjects 23, 'pGaH';
EXEC staff.uspInsertEmployees_SchoolSubjects 23, 'lIE';
EXEC staff.uspInsertEmployees_SchoolSubjects 23, 'lRS';
EXEC staff.uspInsertEmployees_SchoolSubjects 24, 'lRS';
EXEC staff.uspInsertEmployees_SchoolSubjects 24, 'lEE';
EXEC staff.uspInsertEmployees_SchoolSubjects 24, 'eEE';
EXEC staff.uspInsertEmployees_SchoolSubjects 21, 'lMS';
EXEC staff.uspInsertEmployees_SchoolSubjects 21, 'pMS';
EXEC staff.uspInsertEmployees_SchoolSubjects 21, 'lWC';
EXEC staff.uspInsertEmployees_SchoolSubjects 25, 'lAC';
EXEC staff.uspInsertEmployees_SchoolSubjects 25, 'lLC';
EXEC staff.uspInsertEmployees_SchoolSubjects 25, 'lHA';
EXEC staff.uspInsertEmployees_SchoolSubjects 25, 'eHA';
EXEC staff.uspInsertEmployees_SchoolSubjects 26, 'lQP';
EXEC staff.uspInsertEmployees_SchoolSubjects 26, 'eQP';
EXEC staff.uspInsertEmployees_SchoolSubjects 26, 'lES';
EXEC staff.uspInsertEmployees_SchoolSubjects 26, 'pES';
EXEC staff.uspInsertEmployees_SchoolSubjects 26, 'lEC';
EXEC staff.uspInsertEmployees_SchoolSubjects 27, 'lHS';
EXEC staff.uspInsertEmployees_SchoolSubjects 27, 'lMT';
EXEC staff.uspInsertEmployees_SchoolSubjects 27, 'lHg';
EXEC staff.uspInsertEmployees_SchoolSubjects 27, 'pHg';
EXEC staff.uspInsertEmployees_SchoolSubjects 27, 'lFM';
EXEC staff.uspInsertEmployees_SchoolSubjects 27, 'lTE';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'lDA';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'eDA';
EXEC staff.uspInsertEmployees_SchoolSubjects 5, 'lDA';
EXEC staff.uspInsertEmployees_SchoolSubjects 5, 'eDA';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'lDA';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'eDA';
EXEC staff.uspInsertEmployees_SchoolSubjects 15, 'lDA';
EXEC staff.uspInsertEmployees_SchoolSubjects 15, 'eDA';
EXEC staff.uspInsertEmployees_SchoolSubjects 8, 'lDA';
EXEC staff.uspInsertEmployees_SchoolSubjects 8, 'eDA';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'lMoA';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'lRM';
EXEC staff.uspInsertEmployees_SchoolSubjects 1, 'lTiA';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'pRM';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'lTiA';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'lMoA';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'lMoA';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'lRM';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'pRM';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'lTiA';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'lPB';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'pPB';
EXEC staff.uspInsertEmployees_SchoolSubjects 7, 'lPB';
EXEC staff.uspInsertEmployees_SchoolSubjects 12, 'pPB';
--Inserting employees into listeners.Courses
EXEC listeners.uspUpdateCoursesAddEmployees;
--Inserting random grades into listeners.Courses
EXEC listeners.uspUpdateCoursesAddGradesAuto;