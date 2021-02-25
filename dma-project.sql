CREATE TABLE student_data.FINAL_UNIVERSITY
(UNIVERSITYID INT(3) NOT NULL PRIMARY KEY,
UNIVERSITYNAME VARCHAR(40) NOT NULL, 
COURSENAME VARCHAR(50)
);
INSERT INTO FINAL_UNIVERSITY(UNIVERSITYID,UNIVERSITYNAME,COURSENAME) VALUES
('651', 'Northeastern University', 'Data Analytics Engineering'),
('205', 'University of Southern California', 'Computer Science'),
('673', 'University of British Columbia', 'Data Science'),
('542', 'Delft Institute of Technology' , 'Embedded Systems'),
('763', 'Trinity University' , 'Applied Computation');
select * from FINAL_UNIVERSITY;

CREATE TABLE student_data.STUDENT_SHORTLIST
(STUDENTID INT(3) NOT NULL ,
S_UNIVERSITYID INT(3) NOT NULL ,
PRIMARY KEY(STUDENTID,S_UNIVERSITYID),
COURSENAME VARCHAR(40) ,
COUNTRY VARCHAR(40) ,
UNIVERSITYNAME VARCHAR(40) 
);
INSERT INTO STUDENT_SHORTLIST(STUDENTID,S_UNIVERSITYID,UNIVERSITYNAME,COURSENAME,COUNTRY) VALUES
('100','651', 'Northeastern University', 'Data Analytics Engineering','United States'),
('101','205', 'University of Southern California', 'Computer Science','United States'),
('102','673', 'University of British Columbia', 'Data Science','Canada'),
('103','542', 'Delft Institute of Technology' , 'Embedded Systems','Netherlands'),
('104','763', 'Trinity University' , 'Applied Computation','Ireland');
select * from STUDENT_SHORTLIST;

CREATE TABLE student_data.STUDENT_ADMITS
(STUDENTID INT(3) NOT NULL ,
A_UNIVERSITYID INT(3) NOT NULL ,
PRIMARY KEY(STUDENTID,A_UNIVERSITYID),
COURSENAME VARCHAR(40) ,
COUNTRY VARCHAR(40) ,
UNIVERSITYNAME VARCHAR(40) 
);
INSERT INTO STUDENT_ADMITS(STUDENTID,A_UNIVERSITYID,UNIVERSITYNAME,COURSENAME,COUNTRY) VALUES
('100','651', 'Northeastern University', 'Data Analytics Engineering','United States'),
('101','205', 'University of Southern California', 'Computer Science','United States'),
('102','673', 'University of British Columbia', 'Data Science','Canada'),
('103','542', 'Delft Institute of Technology' , 'Embedded Systems','Netherlands'),
('104','763', 'Trinity University' , 'Applied Computation','Ireland');
select * from STUDENT_ADMITS;

CREATE TABLE student_data.ACCOMODATION
(ADDRESS VARCHAR(50) NOT NULL PRIMARY KEY ,
TYPE_OF_ACCOMODATION VARCHAR(40),
RENT VARCHAR(10),
DISTANCE_UNIVERSITY VARCHAR(10) 
);
INSERT INTO ACCOMODATION(ADDRESS,TYPE_OF_ACCOMODATION,RENT,DISTANCE_UNIVERSITY) VALUES
('237 Park Drive, Boston','Twin Sharing', 'Northeastern University', 'Data Analytics Engineering','United States'),
('313 Slauson, Los Angeles','Private', 'University of Southern California', 'Computer Science','United States'),
('35 Kemano, British Columbia','Private', 'University of British Columbia', 'Data Science','Canada'),
('103 Burgwal, Delft','Twin Sharing', 'Delft Institute of Technology' , 'Embedded Systems','Netherlands'),
('11 Thomas St, Dublin','Triple ', 'Trinity University' , 'Applied Computation','Ireland');
select * from STUDENT_ADMITS;







CREATE TABLE student_data.FINAL_UNIVERSITY 
(UNIVERSITYID CHAR(3) NOT NULL PRIMARY KEY,
UNIVERSITYNAME VARCHAR(40) NOT NULL,
COURSENAME VARCHAR(50)
);
INSERT INTO FINAL_UNIVERSITY(UNIVERSITYID,UNIVERSITYNAME,COURSENAME) VALUES
('651', 'Northeastern University', 'Data Analytics Engineering'),
('205', 'University of Southern California', 'Computer Science'),
('673', 'University of British Columbia', 'Data Science'),
('542', 'Delft Intitute of Technology' , 'Embedded Systems'),
('763', 'Trinity University' , 'Applied Computation');
select * from FINAL_UNIVERSITY;


CREATE TABLE student_data.STUDENT_SHORTLIST
(STUDENTID CHAR(3) NOT NULL ,
S_UNIVERSITYID CHAR(3) NOT NULL ,
PRIMARY KEY(STUDENTID,S_UNIVERSITYID),
COURSENAME VARCHAR(40) ,
COUNTRY VARCHAR(40) ,
UNIVERSITYNAME VARCHAR(40) 
);
INSERT INTO STUDENT_SHORTLIST(STUDENTID,S_UNIVERSITYID,UNIVERSITYNAME,COURSENAME,COUNTRY) VALUES
('100','651', 'Northeastern University', 'Data Analytics Engineering','United States'),
('101','205', 'University of Southern California', 'Computer Science','United States'),
('102','673', 'University of British Columbia', 'Data Science','Canada'),
('103','542', 'Delft Institute of Technology' , 'Embedded Systems','Netherlands'),
('104','763', 'Trinity University' , 'Applied Computation','Ireland');
select * from STUDENT_SHORTLIST;

CREATE TABLE student_data.STUDENT_ADMITS
(STUDENTID INT(3) NOT NULL ,
A_UNIVERSITYID INT(3) NOT NULL ,
PRIMARY KEY(STUDENTID,A_UNIVERSITYID),
COURSENAME VARCHAR(40) ,
COUNTRY VARCHAR(40) ,
UNIVERSITYNAME VARCHAR(40) 
);
INSERT INTO STUDENT_ADMITS(STUDENTID,A_UNIVERSITYID,UNIVERSITYNAME,COURSENAME,COUNTRY) VALUES
('100','651', 'Northeastern University', 'Data Analytics Engineering','United States'),
('101','205', 'University of Southern California', 'Computer Science','United States'),
('102','673', 'University of British Columbia', 'Data Science','Canada'),
('103','542', 'Delft Institute of Technology' , 'Embedded Systems','Netherlands'),
('104','763', 'Trinity University' , 'Applied Computation','Ireland');
select * from STUDENT_ADMITS;

CREATE TABLE student_data.STUDENT_VISA
(INTERVIEWID CHAR(4) NOT NULL,
STUDENTID CHAR(3) NOT NULL,
PRIMARY KEY(INTERVIEWID,STUDENTID),
INTERVIEWDATE DATE,
LOCATION VARCHAR(40),
RESULT VARCHAR(40)
);

INSERT INTO STUDENT_VISA(INTERVIEWID,STUDENTID,INTERVIEWDATE,LOCATION,RESULT) VALUES
('3657', '100', '2017-03-22','CHENNAI','PASS'),
('7832', '101', '2018-02-16','HYDERABAD','FAIL'),
('2651', '102', '2019-01-14','DUBAI','PASS'),
('9732', '103' , '2018-04-21','MUMBAI','PASS'),
('8623', '104' , '2017-12-03','DELHI','PASS');

select * from STUDENT_VISA;

CREATE TABLE student_data.VACCINATION_STUDENT
(VACCINENAME VARCHAR(40) NOT NULL,
STUDENTID CHAR(3) NOT NULL,
PRIMARY KEY(VACCINENAME,STUDENTID),
LATEST_VACCINE_DATE DATE,
NUMBER_OF_DOSES INT
);

INSERT INTO VACCINATION_STUDENT(VACCINENAME,STUDENTID,LATEST_VACCINE_DATE,NUMBER_OF_DOSES) VALUES
('HEPATITIS-B', '100', '2019-12-19','3'),
('MENINGOCOCCAL', '101', '2018-07-13','1'),
('MMR', '102', '2019-01-14','2'),
('TDaP', '103' , '2017-11-10','1'),
('VARICELLA', '104' , '2018-10-04','2');
select * from VACCINATION_STUDENT;

CREATE TABLE student_data.ACCOMODATION
(ADDRESSID CHAR(4) NOT NULL PRIMARY KEY,
ADDRESS VARCHAR(40),
ACCOMODATION_TYPE VARCHAR(40),
RENT_USD INT,
DISTANCE_FROM_UNI_MILES INT
);
INSERT INTO ACCOMODATION(ADDRESSID,ADDRESS,ACCOMODATION_TYPE,RENT_USD,DISTANCE_FROM_UNI_MILES) VALUES
('A12R', '433 MELNEA CASS BLVD', '2 BHK 1 BATH APARTMENT','3500','0.7'),
('U34L', '231  PARK DRIVE', '4 BHK 2 BATH APARTMENT','4000','2'),
('G89D', '501 FOREST AVE', '3 BHK 1.5 BATH APARTMENT','2800','2.5'),
('S76H', '535 EVERETT AVE' , '4 BHK 3 BATH INDEPENDENT HOUSE','4500','1.7'),
('P43G', '350 BEAL ST' , '2 BHK 1.5 BATH','1800','2.2');
select * from ACCOMODATION;

CREATE TABLE student_data.STUDENT
(STUDENTID INT(3) NOT NULL PRIMARY KEY,
FIRST_NAME VARCHAR(40),
LAST_NAME VARCHAR(40),
foreign key(UNIVERSITYID) references final_university(UNIVERSITYID)
ON delete cascade ON update cascade,
foreign key(ADDRESSID) references ACCOMODATION(ADDRESSID)
ON delete cascade ON update cascade
);

INSERT INTO STUDENT(STUDENTID,FIRST_NAME,LAST_NAME,UNIVERSITYID,ADDRESSID) VALUES
('100', 'Rohit', 'Kumar','651','A12R'),
('101', 'VAIBHAV', 'IYER','205','U34L'),
('102', 'AKSHITA', 'RAVI','673','G89D'),
('103', 'ANUSHKA' , 'SHARMA','542','S76H'),
('104', 'MANAS' , 'SINGH','763','P43G');
select * from STUDENT;

CREATE TABLE student_data.STUDENT_PROFILE
(PROFILEID INT(3) NOT NULL PRIMARY KEY,
LOR VARCHAR(10),
GRE INT(3),
TOEFL INT(3),
WORK_EX VARCHAR(10),
EXTRA_CURRICULAR VARCHAR(40),
GPA INT(10),
ADMISSION_TIME VARCHAR(10),
foreign key(STUDENTID) references STUDENT(STUDENTID)
ON delete cascade ON update cascade
);

INSERT INTO STUDENT_PROFILE(PROFILEID,LOR,GRE,TOEFL,WORK_EX,EXTRA_CURRICULAR,GPA,ADMISSION_TIME,STUDENTID) VALUES
('100', 'Rohit', 'Kumar','651','A12R'),
('101', 'VAIBHAV', 'IYER','205','U34L'),
('102', 'AKSHITA', 'RAVI','673','G89D'),
('103', 'ANUSHKA' , 'SHARMA','542','S76H'),
('104', 'MANAS' , 'SINGH','763','P43G');
select * from STUDENT_PROFILE;
