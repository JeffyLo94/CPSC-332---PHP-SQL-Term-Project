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

/* Example SQL Table -> more needs to be added*/
