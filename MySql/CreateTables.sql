/* Create Tables for SQL here */
CREATE TABLE PROFESSOR
(
	Professor_SSN numeric(9) not null,
	Professor_Name varchar(20) not null,
	Professor_Street varchar(30) not null,
	Professor_City varchar(20) not null,
	Professor_State char(2) not null,
	Professor_Zip numeric(5) not null,
	Professor_Phone_Area numeric(3) not null,
	Professor_Phone_Number numeric(7) not null,
	Professor_Sex enum('M', 'F') not null,
	Professor_Title enum('Dr.', 'Mr.', 'Ms.', 'Mrs.') not null,
	Professor_Salary numeric(6) not null,
	primary key(Professor_SSN)
);

CREATE TABLE DEGREE
(
	Degree_Owner_SSN numeric(9) not null,
	Degree_Name varchar(25) not null,
	Degree_School varChar(30) not null,
	primary key(Degree_Owner_SSN, Degree_Name),
	foreign key(Degree_Owner_SSN) references PROFESSOR(Professor_SSN)
);

CREATE TABLE DEPARTMENT
(
	Department_Number numeric(5) not null,
	Department_Name varchar(25) not null,
	Department_Phone numeric(10) not null,
	Department_Location varchar(10) not null,
	Department_Chair_Person numeric(9) not null,
	primary key(Department_Number, Department_Chair_Person),
	foreign key(Department_Chair_Person) references PROFESSOR(Professor_SSN)
);

CREATE TABLE COURSE
(
	Course_Department_Number numeric(5) not null,
	Course_Number varchar(10) not null,
	Course_Title varchar(50) not null,
	Course_Textbook varchar(50) not null,
	Course_Units tinyint not null,
	primary key(Course_Number),
	foreign key(Course_Department_Number) references DEPARTMENT(Department_Number)
);

/* NOTE: this wasn't in the relational model, but is in the ER Schema */
CREATE TABLE PREREQUISITE
(
	Course_Id varchar(10) not null,
	Prereq_Course  varchar(10) not null,
	primary key(Course_Id, Prereq_Course),
	foreign key(Course_Id) references COURSE(Course_Number),
	foreign key(Prereq_Course) references COURSE(Course_Number)
);

CREATE TABLE STUDENT
(
	Student_CWID numeric(10) not null,
	Student_FName varchar(20) not null,
	Student_LName varchar(20) not null,
	Student_Address varchar(60) not null,
	Student_Phone numeric(10) not null,
	Major numeric(5) not null,
	primary key(Student_CWID),
	foreign key(Major) references DEPARTMENT(Department_Number)
);

CREATE TABLE MINOR
(
	Minor_Dept numeric(5) not null,
	Minor_Student_CWID numeric(10) not null,
	primary key(Minor_Dept, Minor_Student_CWID),
	foreign key(Minor_Student_CWID) references STUDENT(Student_CWID),
	foreign key(Minor_Dept) references DEPARTMENT(Department_Number)
);

CREATE TABLE SECTION
(
	Section_Number numeric(5) not null,
	Section_Course_Number varchar(10) not null,
	Section_Professor_SSN numeric(9) not null, /* Don't need a seperate PSSN teaches, since we already assigned a professor */
	Classroom varchar(10) not null,
	Meeting_Days char(7) not null,
	Beg_Time varchar(10) not null,
	End_Time varchar(10) not null,
	Seats numeric(3) not null,
	primary key(Section_Number, Section_Course_Number, Section_Professor_SSN),
	foreign key(Section_Course_Number) references COURSE(Course_Number),
	foreign key(Section_Professor_SSN) references PROFESSOR(Professor_SSN)
);

/* Didn't have any course enrollment? I've moved "Course_number_has" into this enrollment model */
CREATE TABLE ENROLLMENT
(
	Enrollment_CWID numeric(10) not null,
	Enrollment_Section_Number numeric(5) not null,
	Enrollment_Course_Number varchar(10) not null,
	Grade enum('A','A-','B+','B','B-','C+','C','C-','D+','D','D-','F') not null,
	primary key(Enrollment_Section_Number, Enrollment_CWID, Enrollment_Course_Number),
	foreign key(Enrollment_Section_Number) references SECTION(Section_Number),
	foreign key(Enrollment_CWID) references STUDENT(Student_CWID),
	foreign key(Enrollment_Course_Number) references COURSE(Course_Number)
);
