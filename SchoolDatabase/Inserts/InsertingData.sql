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
EXEC utilities.uspInsertStatuses 'Retired';
EXEC utilities.uspInsertStatuses 'Inactive';
EXEC utilities.uspInsertStatuses 'Dean''s leave';
EXEC utilities.uspInsertStatuses 'Maternity leave';
EXEC utilities.uspInsertStatuses 'Paternity leave';
EXEC utilities.uspInsertStatuses 'Sick leave';
EXEC utilities.uspInsertStatuses 'Awaiting';

--Inserting some data into utilities.StudyLevels
EXEC utilities.uspInsertStudyLevels 'Bachelor', 6;
EXEC utilities.uspInsertStudyLevels 'Engineering', 7;
EXEC utilities.uspInsertStudyLevels 'Postgraduate', 3;
EXEC utilities.uspInsertStudyLevels 'Masters', 3;
EXEC utilities.uspInsertStudyLevels 'Doctoral', 6;

--Inserting some data into utilities.FormsOfStudy
EXEC utilities.uspInsertFormsOfStudy 'f', 'Full time', 'Mon.-Fri.','07:15-17:15', 0;
EXEC utilities.uspInsertFormsOfStudy 'p','Part time', 'Fri.-Sun.', '07:15-21:15', 2800;
EXEC utilities.uspInsertFormsOfStudy 'e', 'Evening', 'Mon.-Fri.', '17:15-21:15', 2000;

--Inserting some data into staff.Employees
EXEC staff.uspInsertEmployees 'Michael','Felts', 'Eng','98374023841',20,200; 
EXEC staff.uspInsertEmployees 'Daniel','Albright','Prof','983471039421', 19, 200;
EXEC staff.uspInsertEmployees 'Ryan','Trent','PhD','92381280940',18, 200;
EXEC staff.uspInsertEmployees 'Richard','Zick','MS','94029340239',17,200;
EXEC staff.uspInsertEmployees 'Robert','Watts','Prof','83729102843',16,205;
EXEC staff.uspInsertEmployees 'Julia','Smith','Postdoc','83740182731',15,204;
EXEC staff.uspInsertEmployees 'Terrance','Solares','PhD','87492047128',14,200;
EXEC staff.uspInsertEmployees 'Sandra','Caley','MS','67723918321',13,201;
EXEC staff.uspInsertEmployees 'Janie','Lawson','Prof','64810283721',12,200;
EXEC staff.uspInsertEmployees 'Carole','McKinney', 'BS','87302810481',11,200;
EXEC staff.uspInsertEmployees 'Angela', 'Keller', 'MA','99312840212',10,200;
EXEC staff.uspInsertEmployees 'Donald','Simmons', 'Prof','67391726391',9,200;
EXEC staff.uspInsertEmployees 'Max','Collins', 'Prof', '76381927381',8,200;
EXEC staff.uspInsertEmployees 'James', 'Levy','Prof','73910385031', 7,200;
EXEC staff.uspInsertEmployees 'Martin','Zepeda','Prof','73048502174',6,200;

--Inserting into studies.Faculties
EXEC studies.uspInsertFaculties 'IaT','Informatics and Telecommunications', 1, 'IT100';
EXEC studies.uspInsertFaculties 'EaA', 'Electronics and Automatics', 12,'EA205';
EXEC studies.uspInsertFaculties 'Ch','Chemistry',3,'CH125';
EXEC studies.uspInsertFaculties	'Nano','Nanotechnology',13,'NANO874';
EXEC studies.uspInsertFaculties 'Bio', 'Biomedicis',6,'BIO005';
EXEC studies.uspInsertFaculties 'FaD','Food and Dietetics', 14,'FAD002';
EXEC studies.uspInsertFaculties 'En', 'Energetics',5,'EN920';
EXEC studies.uspInsertFaculties 'RaD', 'Robotics and Drives', 15,'RAD1450';
EXEC studies.uspInsertFaculties 'OEaST', 'Ocean Engineering and Ship Technology',9,'OEAST918';
EXEC studies.uspInsertFaculties 'CaEE', 'Civil and Environmental Engineering', 2,'CAEE1290';

--Inserting some data into studies.FieldsOfStudies
EXEC studies.uspInsertFieldsOfStudies 'Informatics', 320,'IaT';
EXEC studies.uspInsertFieldsOfStudies 'Telecommunications', 280, 'IaT';
EXEC studies.uspInsertFieldsOfStudies 'Electronics', 360, 'EaA';
EXEC studies.uspInsertFieldsOfStudies 'Automatics',220,'EaA';
EXEC studies.uspInsertFieldsOfStudies 'Chemistry',340,'Ch';
EXEC studies.uspInsertFieldsOfStudies 'Cosmetology', 330, 'Ch';
EXEC studies.uspInsertFieldsOfStudies 'Nanotechnology', 350,'Nano';
EXEC studies.uspInsertFieldsOfStudies 'Physical Chemistry', 200,'Nano';
EXEC studies.uspInsertFieldsOfStudies 'Biology', 260,'Bio'; 
EXEC studies.uspInsertFieldsOfStudies 'Biomedicine',340,'Bio';
EXEC studies.uspInsertFieldsOfStudies 'Dietetics', 220,'FaD';
EXEC studies.uspInsertFieldsOfStudies 'Food Technology', 260, 'FaD';
EXEC studies.uspInsertFieldsOfStudies 'Power Engineering', 400,'En';
EXEC studies.uspInsertFieldsOfStudies 'Renewable Energy',300,'En';
EXEC studies.uspInsertFieldsOfStudies 'Robotics', 240,'RaD';
EXEC studies.uspInsertFieldsOfStudies 'Programming Drives', 170,'RaD';
EXEC studies.uspInsertFieldsOfStudies 'Ocean Engineering', 210, 'OEaST';
EXEC studies.uspInsertFieldsOfStudies 'Transport', 160,'OEaST';
EXEC studies.uspInsertFieldsOfStudies 'Civil Engineering', 230,'CaEE';
EXEC studies.uspInsertFieldsOfStudies 'Environmental Engineering', 340,'CaEE';

--Inserting some data into studies.SchoolSubjects
EXEC studies.uspInsertSchoolSubjects 'PB', 'Programming Basics', 20,0,'p';
EXEC studies.uspInsertSchoolSubjects 'PB', 'Programming Basics',25, 12,'l';
EXEC studies.uspInsertSchoolSubjects 'LA','Linear Algebra', 30,6,'l';
EXEC studies.uspInsertSchoolSubjects 'LA', 'Linear Algebra', 30,0,'e';
EXEC studies.uspInsertSchoolSubjects 'PHS','Physics',20,4,'l';
EXEC studies.uspInsertSchoolSubjects 'PHS','Physics',15,0,'e';
EXEC studies.uspInsertSchoolSubjects 'NB', 'Networking Basics',30,8,'l';
EXEC studies.uspInsertSchoolSubjects 'OC', 'Organic Chemistry', 30,8,'l';
EXEC studies.uspInsertSchoolSubjects 'IC','Inorganic Chemistry', 25,6,'l'; 
EXEC studies.uspInsertSchoolSubjects 'IC','Inorganic Chemistry',25,0,'p';
EXEC studies.uspInsertSchoolSubjects 'OC','Organic Chemistry',30,0,'p';
EXEC studies.uspInsertSchoolSubjects 'SA','Skin Anatomy',30,12,'l';
EXEC studies.uspInsertSchoolSubjects 'SC','Skin Care',25,8,'l';
EXEC studies.uspInsertSchoolSubjects 'SC','Skin Care', 20,0,'p';
EXEC studies.uspInsertSchoolSubjects 'QP','Quantum Physics',20,6,'l';
EXEC studies.uspInsertSchoolSubjects 'QP','Quantum Physics',30,0,'e';
EXEC studies.uspInsertSchoolSubjects 'NP','Nano Particles',35,12,'l';
EXEC studies.uspInsertSchoolSubjects 'NSTR', 'Nanostructures', 25,8,'l';
EXEC studies.uspInsertSchoolSubjects 'NSTR', 'Nanostructures', 25,0,'p';
EXEC studies.uspInsertSchoolSubjects 'MS', 'Material Science', 20, 4, 'l';
EXEC studies.uspInsertSchoolSubjects 'MS', 'Material Science', 30,0,'p';
EXEC studies.uspInsertSchoolSubjects 'WC', 'World Climate', 25,14,'l';
EXEC studies.uspInsertSchoolSubjects 'LC', 'Life Cycles',50,18,'l';
EXEC studies.uspInsertSchoolSubjects 'HA', 'Human Anatomy', 55, 16, 'l';
EXEC studies.uspInsertSchoolSubjects 'HA', 'Human Anatomy', 70, 0,'e';
EXEC studies.uspInsertSchoolSubjects 'FFN', 'Fundamental Food Needs', 40,12,'l';
EXEC studies.uspInsertSchoolSubjects 'FT', 'Food Types',35,12,'l';
EXEC studies.uspInsertSchoolSubjects 'VP', 'Vegetable Processing', 40, 12,'l';
EXEC studies.uspInsertSchoolSubjects 'VP','Vegetable Processing',30,0,'p';
EXEC studies.uspInsertSchoolSubjects 'BT', 'Baking Technology', 40,12,'l';
EXEC studies.uspInsertSchoolSubjects 'ES', 'Energy Systems', 35,16,'l';
EXEC studies.uspInsertSchoolSubjects 'ES', 'Energy Systems', 20,0,'p';
EXEC studies.uspInsertSchoolSubjects 'WPE', 'Water Power Engineering', 50,14,'l';
EXEC studies.uspInsertSchoolSubjects 'FC', 'Fuel Cells', 60,14,'l';
EXEC studies.uspInsertSchoolSubjects 'FC', 'Fuel Cells', 30,0,'p';
EXEC studies.uspInsertSchoolSubjects 'TPG', 'Thermonuclear Power Generation', 40,22,'l';
EXEC studies.uspInsertSchoolSubjects 'AM', 'Analytic Mechanic', 40,24,'l';
EXEC studies.uspInsertSchoolSubjects 'AM', 'Analytic Mehanics', 40,0,'e';
EXEC studies.uspInsertSchoolSubjects 'AI', 'Artificial Intelligence', 60,6,'l';
EXEC studies.uspInsertSchoolSubjects 'AI', 'Artificial Intelligence', 45,0,'p';
EXEC studies.uspInsertSchoolSubjects 'MoA', 'Methods of Automation', 50,20,'l';
EXEC studies.uspInsertSchoolSubjects 'BoD', 'Basics of Drives', 70, 10,'l';
EXEC studies.uspInsertSchoolSubjects 'BoD', 'Basics of Drives', 35,0,'p';
EXEC studies.uspInsertSchoolSubjects 'FM', 'Fluid Mechanics',40,20,'l';
EXEC studies.uspInsertSchoolSubjects 'Hg', 'Hydrology', 25,10,'l';
EXEC studies.uspInsertSchoolSubjects 'Hg', 'Hydrology',40,0,'p';
EXEC studies.uspInsertSchoolSubjects 'SMM', 'Ship Motion Mechanics', 30,20,'l';
EXEC studies.uspInsertSchoolSubjects 'SMM', 'Ship Motion Mechanics', 50,0,'p';
EXEC studies.uspInsertSchoolSubjects 'FoSS', 'Fundamentals of Ship Systems', 40,10,'l';
EXEC studies.uspInsertSchoolSubjects 'EaM', 'Economy and Management',60,10,'l';
EXEC studies.uspInsertSchoolSubjects 'FoS', 'Fundamentals of Standarization', 40,20,'l';
EXEC studies.uspInsertSchoolSubjects 'FoS', 'Fundamentals of Standarization',15, 0, 'e';
EXEC studies.uspInsertSchoolSubjects 'WaEE', 'Wind and Earthquake Engineering', 50, 20,'l';
EXEC studies.uspInsertSchoolSubjects 'GaH', 'Geology and Hydrogeology', 80, 10, 'l';
EXEC studies.uspInsertSchoolSubjects 'GaH', 'Geology and Hydrogeology', 30,0,'p';

--Inserting some data into staff.Departments
EXEC staff.uspInsertDepartments 'Department of Computer Architecture', 'DoCA','IaT',12;
EXEC staff.uspInsertDepartments 'Department of Organic Chemistry', 'DoOC','Ch', 13;
EXEC staff.uspInsertDepartments 'Department of Biomedical Engineering', 'DoBE','Bio', 14;
EXEC staff.uspInsertDepartments 'Department of Electrical Power Engineering', 'DoEPE','En', 15;
EXEC staff.uspInsertDepartments 'Department of Geography', 'DoPC','OEaST', 2;

--Inserting some data into staff.Counsellors
EXEC staff.uspInsertCounsellors 6, 6,'marjak@gmail.com','239-193-481';
EXEC staff.uspInsertCounsellors 10,10, 'kjane@gmail.com','391-238-238';
EXEC staff.uspInsertCounsellors 2,2, 'ojelas@gmail.com','182-293-128';
EXEC staff.uspInsertCounsellors 5,5, 'hramd@gmail.com', '283-491-239';
EXEC staff.uspInsertCounsellors 1,1,'ojak@gmail.com','127-283-273';
EXEC staff.uspInsertCounsellors 4,4,'suwp@gmail.com','192-293-120';
EXEC staff.uspInsertCounsellors 7,7, 'koark@gmail.com', '127-238-291';
EXEC staff.uspInsertCounsellors 13,13, 'urgena@gmail.com','128-892-912';
EXEC staff.uspInsertCounsellors 3,3, 'loaran@gmail.com','938-237-237';
EXEC staff.uspInsertCounsellors 8,8, 'ewan@gmail.com','934-238-480';

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

--Inserting some data into listeners.StudySemesters
EXEC listeners.uspInsertStudySemesters 2, 19, 1, 4, 2017, 200;
EXEC listeners.uspInsertStudySemesters 4,20,2,2,2016,200;
EXEC listeners.uspInsertStudySemesters 2, 1,4,1, 2017,200;
EXEC listeners.uspInsertStudySemesters 6, 5, 2,3,2015,200;
EXEC listeners.uspInsertStudySemesters 4, 8, 1, 8, 2016, 200;
EXEC listeners.uspInsertStudySemesters 2, 13, 2, 5, 2017, 200;
EXEC listeners.uspInsertStudySemesters 6, 16, 4, 10, 2015, 200;

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
EXEC listeners.uspInsertStudents 'Joy', 'Box','91837401732','f', 5, 200;
EXEC listeners.uspInsertStudents 'Stevie', 'Gutierrez', '281923740183', 'f', 4, 200;
EXEC listeners.uspInsertStudents 'Judith','Sayler', '93827301748','f', 3, 200;
EXEC listeners.uspInsertStudents 'Helen', 'Price', '98374017231', 'p', 2, 200;
EXEC listeners.uspInsertStudents  'Donna','Chaney','87364026381', 'p', 1, 200;
EXEC listeners.uspInsertStudents 'Lisa', 'Martin', '89372947291', 'f',21, 203;
EXEC listeners.uspInsertStudents 'Malcolm','Leslie','98327482932', 'f', 22, 200;
EXEC listeners.uspInsertStudents 'William','Ballinger', '87301749372','f',23, 200; 
EXEC listeners.uspInsertStudents  'Nikita','Santora', '90372819412', 'p', 24, 200;
EXEC listeners.uspInsertStudents  'Howard','Vogel', '98346364923', 'f', 25, 200;

--Inserting some data into listeners.Payments
EXEC listeners.uspInsertPayments @PaymentStudentId = 1, @Deadline ='2018-10-30';
EXEC listeners.uspInsertPayments @PaymentStudentId = 2,  @Deadline ='2018-10-30';
EXEC listeners.uspInsertPayments @PaymentStudentId = 3, @Deadline ='2018-10-30';
EXEC listeners.uspInsertPayments @PaymentStudentId = 4, @Deadline ='2018-10-30';
EXEC listeners.uspInsertPayments @PaymentStudentId = 5, @Deadline ='2018-10-30';
EXEC listeners.uspInsertPayments @PaymentStudentId = 6, @Deadline ='2018-10-30';
EXEC listeners.uspInsertPayments @PaymentStudentId = 7, @Deadline ='2018-10-30';
EXEC listeners.uspInsertPayments @PaymentStudentId = 8, @Deadline ='2018-10-30';
EXEC listeners.uspInsertPayments @PaymentStudentId = 9, @Deadline ='2018-10-30';
EXEC listeners.uspInsertPayments @PaymentStudentId = 10, @Deadline ='2018-10-30';

--Inserting some data into listeners.Courses
EXEC listeners.uspInsertCourses 3.5, '2018-06-30', 1, 'eAM', 1, 2;
EXEC listeners.uspInsertCourses 4.0, '2018-06-30', 1, 'lAM', 1,2;