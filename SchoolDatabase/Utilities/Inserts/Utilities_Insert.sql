USE SchoolDatabase;
GO

-- Inserting some data into utilities.AcademicTitle
EXEC utilities.uspInsertAcademicTitle 'Bachelor of Arts','BA';
EXEC utilities.uspInsertAcademicTitle 'Bachelor of Science', 'BS';
EXEC utilities.uspInsertAcademicTitle "Engineer's degree", 'Eng';
EXEC utilities.uspInsertAcademicTitle 'Master of Arts', 'MA';
EXEC utilities.uspInsertAcademicTitle 'Master of Science', 'MS';
EXEC utilities.uspInsertAcademicTitle 'Doctor of Philosophy', 'PhD';
EXEC utilities.uspInsertAcademicTitle 'Post-doctoral degree', 'Postdoc';
EXEC utilities.uspInsertAcademicTitle 'Professor', 'Prof';

--Inserting some data into utilities.Addressess
EXEC utilities.uspInsertAddresses 'Sepulveda', 'Oakway Lane', '3456', '123', 'California', '91343';
EXEC utilities.uspInsertAddresses 'Oakridge', 'Skinner Hollow Road', '2065','36','Oregon', '94263';
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
EXEC utilities.uspInsertAddresses 'Chicago','Bingamon Branch Road', '341','432', 'Illinois','60631';
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






