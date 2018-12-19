/* Add Records here */
/* 3 PROFESSORS */
INSERT INTO PROFESSOR(Professor_SSN, Professor_Name, Professor_Street, Professor_City, Professor_State, Professor_Zip, Professor_Phone_Area, Professor_Phone_Number, Professor_Sex, Professor_Title, Professor_Salary)
VALUES (000000001, "Shawn Wang ", "800 N State College Blvd", "Fullerton", "CA", 92831, 714, 8881235, 'M', "Dr.", 120120);

INSERT INTO PROFESSOR(Professor_SSN, Professor_Name, Professor_Street, Professor_City, Professor_State, Professor_Zip, Professor_Phone_Area, Professor_Phone_Number, Professor_Sex, Professor_Title, Professor_Salary)
VALUES (000000002, "Christopher Ryu", "800 N State College Blvd", "Fullerton", "CA", 92831, 714, 8881236, 'M', "Dr.", 200000);

INSERT INTO PROFESSOR(Professor_SSN, Professor_Name, Professor_Street, Professor_City, Professor_State, Professor_Zip, Professor_Phone_Area, Professor_Phone_Number, Professor_Sex, Professor_Title, Professor_Salary)
VALUES (123456789, "Barbara Liskov", "800 N State College Blvd", "Fullerton", "CA", 92831, 714, 8881234, 'F', "Ms.", 105500);

/* DEGREES for Professors */
/* Professor - Shawn */
INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name, Degree_School)
VALUES (000000001, "PhD Computer Science", "NJ Institute of Technology" );

INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name, Degree_School)
VALUES (000000001, "MS Computer Science", "Fudan University");

INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name, Degree_School)
VALUES (000000001, "BS Mathematics", "Xiamen University");

/* Professor - Ryu */
INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name)
VALUES (000000002, "PhD Computer Science", "University of Houston");

INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name)
VALUES (000000002, "MS Computer Science", "University of Houston");

INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name)
VALUES (000000002, "BS Computer Science", "University of Houston");

/* Professor - Barbara */
INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name)
VALUES (123456789, "PhD Computer Science", "Stanford University");

INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name)
VALUES (123456789, "MS Computer Science", "Stanford University");

INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name)
VALUES (123456789, "BA Mathematics", "UC Berkley");


/* 2 Departments */
INSERT INTO DEPARTMENT(Department_Number, Department_Name, Department_Phone, Department_Location, Department_Chair_Person)
VALUES (00001, "Computer Science", 6572783700, "CS-522", 000000002);

INSERT INTO DEPARTMENT(Department_Number, Department_Name, Department_Phone, Department_Location, Department_Chair_Person)
VALUES (00002, "Computer Engineering", 6572785987, "E-100G", 123456789);


/* Courses */
INSERT INTO COURSE(Course_Department_Number, Course_Number, Course_Title, Course_Textbook, Course_Units)
VALUES (00001, "CPSC-332", "File Structures and Database Systems", "Fundamentals of Database Systems, 7th Edition", 3);

INSERT INTO COURSE(Course_Department_Number, Course_Number, Course_Title, Course_Textbook, Course_Units)
VALUES (00001, "CPSC-481", "Artificial Intelligence", "Machine Learning and AI, 5th Edition", 3);

INSERT INTO COURSE(Course_Department_Number, Course_Number, Course_Title, Course_Textbook, Course_Units)
VALUES (00001, "CPSC-335", "Algorithm Engineering", "Fundamentals of Algorithms, 8th Ed", 3);

INSERT INTO COURSE(Course_Department_Number, Course_Number, Course_Title, Course_Textbook, Course_Units)
VALUES (00002, "EGCP-311", "Technical Writing for Engineering", "Technical Writing, 10th Edition", 3);


/* Prerequisites */
INSERT INTO PREREQUISITE(Course_Id, Prereq_Course)
VALUES ("CPSC-332", "CPSC-131");

INSERT INTO PREREQUISITE(Course_Id, Prereq_Course)
VALUES ("CPSC-335", "EGCP-311");

INSERT INTO PREREQUISITE(Course_Id, Prereq_Course)
VALUES ("CPSC-481", "CPSC-332");

INSERT INTO PREREQUISITE(Course_Id, Prereq_Course)
VALUES ("CPSC-481", "CPSC-335");


/* SECTIONS */
INSERT INTO SECTION(Section_Number, Section_Course_Number, Section_Professor_SSN, Classroom, Meeting_Days, Start_Time, End_Time, Seats)
VALUES (13321, "CPSC-332", 000000001, "E-202", "MW", "12:30pm", "1:45pm", 50);

INSERT INTO SECTION(Section_Number, Section_Course_Number, Section_Professor_SSN, Classroom, Meeting_Days, Start_Time, End_Time, Seats)
VALUES (13322, "CPSC-332", 000000001, "CS-302", "MW", "2:30pm", "3:45pm", 30);

INSERT INTO SECTION(Section_Number, Section_Course_Number, Section_Professor_SSN, Classroom, Meeting_Days, Start_Time, End_Time, Seats)
VALUES (13351, "CPSC-335", 000000002, "CS-110", "TTh", "10:00am", "11:15am", 40);

INSERT INTO SECTION(Section_Number, Section_Course_Number, Section_Professor_SSN, Classroom, Meeting_Days, Start_Time, End_Time, Seats)
VALUES (14811, "CPSC-481", 000000002, "CS-110", "TTh", "11:30am", "12:15pm", 40);

INSERT INTO SECTION(Section_Number, Section_Course_Number, Section_Professor_SSN, Classroom, Meeting_Days, Start_Time, End_Time, Seats)
VALUES (23111, "EGCP-311", 123456789, "E-302", "TTh", "10:00am", "11:15am", 30);


/* CS Students */
INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (9494949494, "Jeffrey", "Lo", "101 Nutwood Ave. Fullerton, CA 92831", 9491011207, 00001);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (1234567890, "Steven", "Duong", "101 Nutwood Ave. Fullerton, CA 92831", 9491019876, 00001);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (1234512345, "Angel", "Soto", "101 Nutwood Ave. Fullerton, CA 92831", 7141010406, 00001);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (1010101010, "Allen", "Turing", "400 Nutwood Ave. Fullerton, CA 92831", 7144001234, 00001);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (1111111111, "Steve", "Wozniak", "400 Nutwood Ave. Fullerton, CA 92831", 7144004444, 00001);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (2222222222, "Charles", "Babbage", "400 Nutwood Ave. Fullerton, CA 92831", 7144009876, 00001);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (3333333333, "Elizabeth", "Feinler", "400 Nutwood Ave. Fullerton, CA 92831", 7144003333, 00001);

/* CE Students */
INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (1234567891, "John", "Smith", "123 Nutwood Ave. Fullerton, CA 92831", 9491231234, 00002);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (1234554321, "Mary", "Sue", "123 Nutwood Ave. Fullerton, CA 92831", 9491234321, 00002);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (8888888888, "Tim", "Berners-Lee", "123 Nutwood Ave. Fullerton, CA 92831", 9491238888, 00002);


/* CE Minors */
INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (00002, 1010101010);

INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (00002, 2222222222);

INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (00002, 1111111111);

INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (00002, 9494949494);

/* CS Minors */
INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (00001, 8888888888);

INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (00001, 1234554321);


/* Enrollment */
INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (9494949494, 13321, "CPSC-332", 'B');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (9494949494, 13351, "CPSC-335", 'A-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (9494949494, 14811, "CPSC-481", 'A');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1234567890, 13321, "CPSC-332", 'A');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1234567890, 13351, "CPSC-335", 'B-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1234567890, 14811, "CPSC-481", 'B+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1234512345, 13321, "CPSC-332", 'B+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1234512345, 13351, "CPSC-335", 'A-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1234512345, 14811, "CPSC-481", 'B');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1010101010, 13111, "EGCP-311", 'B+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1010101010, 13351, "CPSC-335", 'B-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1010101010, 14811, "CPSC-481", 'C+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (2222222222, 13111, "EGCP-311", 'D+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (2222222222, 13351, "CPSC-335", 'B');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (2222222222, 14811, "CPSC-481", 'A');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1111111111, 13111, "EGCP-311", 'C');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1111111111, 13351, "CPSC-335", 'B-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1111111111, 14811, "CPSC-481", 'B+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (8888888888, 13111, "EGCP-311", 'D');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (8888888888, 13322, "CPSC-332", 'C+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (8888888888, 14811, "CPSC-481", 'A-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1234567891, 13111, "EGCP-311", 'D');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1234567891, 13322, "CPSC-332", 'B+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1234567891, 14811, "CPSC-481", 'A-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1234554321, 13111, "EGCP-311", 'C');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1234554321, 13322, "CPSC-332", 'B-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1234554321, 14811, "CPSC-481", 'C+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (3333333333, 13351, "CPSC-335", 'A-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (3333333333, 13322, "CPSC-332", 'D+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (3333333333, 14811, "CPSC-481", 'A');
