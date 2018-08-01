USE SchoolDatabase;
GO

--Inserting into studies.Faculties
EXEC studies.uspInsertFaculties 'IaT','Informatics and Telecommunications', 1,7, 'IT100';
EXEC studies.uspInsertFaculties 'EaA', 'Electronics and Automatics', 12,1,'EA205';
EXEC studies.uspInsertFaculties 'Ch','Chemistry',3,8,'CH125';
EXEC studies.uspInsertFaculties	'Nano','Nanotechnology',13,8,'NANO874';
EXEC studies.uspInsertFaculties 'Bio', 'Biomedicis',6,11,'BIO005';
EXEC studies.uspInsertFaculties 'FaD','Food and Dietetics', 14,6,'FAD002';
EXEC studies.uspInsertFaculties 'En', 'Energetics',5,10,'EN920';
EXEC studies.uspInsertFaculties 'RaD', 'Robotics and Drives', 15,5,'RAD1450';
EXEC studies.uspInsertFaculties 'OEaST', 'Ocean Engineering and Ship Technology',9,4,'OEAST918';
EXEC studies.uspInsertFaculties 'CaEE', 'Civil and Environmental Engineering', 2,9,'CAEE1290';

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
EXEC studies.uspInsertSchoolSubjects 'GaH', 'Geology and Hydrogeology', 30,0,'p'