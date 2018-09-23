/* Schema created to store info about school's organization - faculties, fields of studies,
school subjects and a table informing which field of study at wich faculty is run.
There are also few tables containing info about what school subjects are run within specific field of study.
Their name consists of four parts:
1. FacultyId (EaA = Electronics and Automatics);
2. Field of study full name (i.e Chemistry);
3. StudyLevelId (B = Bachelor, E = Engineering and so on);
4. FormOfStudyId (P = part time, F = full time etc.); */
CREATE SCHEMA [studies]
