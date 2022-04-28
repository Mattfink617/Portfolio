drop database Network;
create DATABASE Network;
use Network;
 

-- *** This SQL File is intended for MySQL and can be used on the latest version!


-- 1
create table Alumni
(
alum_ID      integer,
first_name   varchar(50) null,
last_name    varchar(50) null,
aState       varchar(50) null,
city         varchar(50) null,
street       varchar(50) null,
zip          integer(10) null,
phone        varchar(12) null,
email        varchar(50) null,
linkedIn     varchar(100) null,
notes_sec    varchar(1000) null,

constraint Alumni_PK primary key (alum_ID)
);

INSERT INTO Alumni (alum_ID, first_name, last_name, aState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES (245,'Bob', 'ozo', 'Washinton', 'Seattle', '1122 Pocklo Dr.',23444 , '234-443-4848', 'bobozo@gmail.com', 'https://www.linkedin.com/in/bob-ozo-0638a11a0/', '');

INSERT INTO Alumni( alum_ID, first_name, last_name, aState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES ( 534,'Tom', 'Smith', 'Minesota', 'Minneapolis', '455 low St.', 4848, '487-484-9583', 'smithtom@gmail.com', 'https://www.linkedin.com/in/tom-smith-0638a11a0/', '');

INSERT INTO Alumni( alum_ID, first_name, last_name, aState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES ( 324,'Amy', 'Tulip', 'Pennsylvania', 'Philadelphia', '7392 Algon ave.',19134 , '215-744-7223', 'amytulip@gmail.com', 'https://www.linkedin.com/in/amy-tulip-0638a11a0/', '');

INSERT INTO Alumni( alum_ID, first_name, last_name, aState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES ( 435,'Joe', 'McDonald', 'Minesota', 'Minneapolis', '5656 Snowfiled', 33421, '883-203-9032', 'joemcdonald@gmail.com', 'https://www.linkedin.com/in/joe-mcdonald-0638a11a0/', '');
	
INSERT INTO Alumni( alum_ID, first_name, last_name, aState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES ( 122,'becky', 'Good', 'california', 'Los Angeles', '24 Bel-Air ', 88, '330-585-5829', 'becygood@gmail.com', 'https://www.linkedin.com/in/becky-good-0638a11a0/', '');
	

	
	
	
-- 2
create table GuessSpeakers
(
guest_ID     integer,
first_name   varchar(50) null,
last_name    varchar(50) null,
aState       varchar(50)null,
city         varchar(50)null,
street       varchar(50)null,
zip          integer(10)null,
phone        varchar(12)null,
email        varchar(50)null,
linkedIn     varchar(100)null,
notes_sec    varchar(1000)null,

CONSTRAINT GuessSpeakers_PK primary key (guest_ID)
);

INSERT INTO GuessSpeakers( guest_ID, first_name, last_name, aState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES (1829 ,'Tim', 'Ann', 'Washinton', 'Seattle', '928 Pocklo Dr.',5453 , '575-242-4657', 'annwashinton@gmail.com', 'https://www.linkedin.com/in/ann-washinton-0638a11a0/', '');

INSERT INTO GuessSpeakers( guest_ID,first_name, last_name, aState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES ( 3738,'Ship', 'Reck', 'Minesota', 'Minneapolis', '49384 low St.',26464 , '478-493-5933', 'reckship@gmail.com', 'https://www.linkedin.com/in/ship-reck-0638a11a0/', '');

INSERT INTO GuessSpeakers( guest_ID, first_name, last_name, aState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES ( 6965,'Jackie', 'Polvis', 'Pennsylvania', 'Philadelphia', '8291 Algon ave.',64644 , '585-394-5850', 'polvisjackie@gmail.com', 'https://www.linkedin.com/in/jackie-polvis-0638a11a0/', '');

INSERT INTO GuessSpeakers( guest_ID, first_name, last_name, aState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES ( 9482,'Megan', 'Fancy', 'Minesota', 'Minneapolis', '1126 Snowfiled', 87857, '109-493-4953', 'meganfancy@gmail.com', 'https://www.linkedin.com/in/megan-fancy-0638a11a0/', '');

INSERT INTO GuessSpeakers( guest_ID, first_name, last_name, aState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES (1093 ,'Rob', 'Usin', 'california', 'Los Angeles', '474 Bel-Air', 2134, '958-595-4933', 'robusin@gmail.com', 'https://www.linkedin.com/in/rob-usin-0638a11a0/', '');	
	



-- 3
create table Students
(
stu_ID       integer,
first_name   varchar(50) null,
last_name    varchar(50) null,
sState       varchar(50)null,
city         varchar(50)null,
street       varchar(50)null,
zip          integer(10)null,
phone        varchar(12)null,
email        varchar(50)null,
linkedIn     varchar(100)null,
notes_sec    varchar(1000)null, 

constraint Students_PK primary key (stu_ID)
);

INSERT INTO Students (stu_ID, first_name, last_name, sState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES ( 1332,'Isaiah', 'Yokes', 'Washinton', 'Seattle', '38 staples', 232, '553-242-4657', 'isaiahyokes@gmail.com', 'https://www.linkedin.com/in/isaiah-yokes-0638a11a0/', '');

INSERT INTO Students (stu_ID, first_name, last_name, sState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES ( 34543,'Tomus', 'Yolo', 'Minesota', 'Minneapolis', '8448 row St.', 34345, '484-493-5933', 'tomusyolo@gmail.com', 'https://www.linkedin.com/in/tomus-yolo-0638a11a0/', '');
	
INSERT INTO Students (stu_ID, first_name, last_name, sState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES ( 534,'Kanye', 'West', 'Pennsylvania', 'Philadelphia', '485 rlgon ave.',7668 , '958-394-5850', 'kaynewest@gmail.com', 'https://www.linkedin.com/in/kayne-west-0638a11a0/', '');
	
INSERT INTO Students (stu_ID, first_name, last_name, sState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES ( 4565,'Morgan', 'Freeman', 'Minesota', 'Minneapolis', '9548 tnowfiled',1222 , '999-493-4953', 'morganfreeman@gmail.com', 'https://www.linkedin.com/in/morgan-freeman-0638a11a0/', '');
	
INSERT INTO Students (stu_ID, first_name, last_name, sState, city, street, zip, phone, email, linkedIn, notes_sec)
    VALUES ( 46534,'Charlie', 'Highpitch', 'california', 'Los Angeles', '0494 rl-Air', 5656, '857-985-8929', 'highpitchcharlie@gmail.com', 'https://www.linkedin.com/in/charlie-highpitch-0638a11a0/', '');





-- 4
create table StudentMajor
(
major_ID 		integer,
M_type  		varchar(50),
major_Name     	varchar(50),
start_date 		date,
graduation_date date,
Sid_FK  		integer,
notes_sec  		varchar(1000) null,

constraint StudentMajor_PK primary key (major_ID),

constraint StudentMajor_FK foreign key (Sid_FK)
	REFERENCES Students (stu_ID)
);

INSERT INTO StudentMajor (major_ID, M_type, major_Name,start_date ,graduation_date,sid_FK,notes_sec)
    VALUES (660 , 'Bachelor', 'B.S','2018/04/09' , '2022/04/09', 1332, '');
	
INSERT INTO StudentMajor (major_ID, M_type, major_Name,start_date ,graduation_date,sid_FK,notes_sec)
    VALUES (455 , 'Mastor', 'Computer Science','2019/04/09' , '2023/04/09', 34543, '');
	
INSERT INTO StudentMajor (major_ID, M_type, major_Name,start_date ,graduation_date,sid_FK,notes_sec)
    VALUES ( 344, 'PHD', 'Education', '2020/04/09' , '2024/04/09',534 , '');
	
INSERT INTO StudentMajor (major_ID, M_type, major_Name,start_date ,graduation_date,sid_FK,notes_sec)
    VALUES ( 454, 'PHD', 'Music', '2017/04/09', '2021/04/09', 4565, '');
	
INSERT INTO StudentMajor (major_ID, M_type, major_Name,start_date ,graduation_date,sid_FK,notes_sec)
    VALUES ( 356, 'Bachelor', 'Computer Science','2018/04/09' , '2022/04/09', 46534, '');





-- 5 
create table GuestSpeaker_History
(
guestNum        integer,
speech_date     date not null,
speach_length   varchar(50),
guest_ID_FK     integer not null,
notes_sec       varchar(1000),

CONSTRAINT GuessSpeaker_History_PK primary key (guestNum),

constraint GuessSpeaker_History_FK foreign key (guest_ID_FK)
	REFERENCES GuessSpeakers(guest_ID)
);

INSERT INTO GuestSpeaker_History (guestNum, speech_date, speach_length, guest_ID_FK, notes_sec)
    VALUES ( 123, '2004/04/09', '50 min', 1829, '');
	
INSERT INTO GuestSpeaker_History (guestNum, speech_date, speach_length, guest_ID_FK, notes_sec)
    VALUES ( 124, '2004/04/09', '20 min',3738 , '');

INSERT INTO GuestSpeaker_History (guestNum, speech_date, speach_length, guest_ID_FK, notes_sec)
    VALUES ( 125, '2004/04/09', '1 hour 5 min',6965 , '');

INSERT INTO GuestSpeaker_History (guestNum, speech_date, speach_length, guest_ID_FK, notes_sec)
    VALUES ( 126, '2004/04/09', '30 min',9482 , '');

INSERT INTO GuestSpeaker_History (guestNum, speech_date, speach_length, guest_ID_FK, notes_sec)
    VALUES ( 127, '2004/04/09', '32 min', 1093, '');





-- 6 
create table Internships
(
Intern_num       integer,
company          varchar(50),
intern_length    varchar(50),
buisness_Type    varchar(150), -- What type of business is it? EX. Retail, Clothing, etc.
alum_referal_FK  integer null,
stu_ID_FK        integer,
notes_sec        varchar(1000),

constraint  Internships_PK primary key (Intern_num),

constraint Internships_FK1 foreign key (alum_referal_FK)
	REFERENCES Alumni (alum_ID),
	
constraint Internships_FK2 foreign key (stu_ID_FK)
	REFERENCES Students (stu_ID)
);

INSERT INTO Internships (Intern_num, company, intern_length, buisness_Type, alum_referal_FK, stu_ID_FK, notes_sec)
    VALUES ( 1, 'Bimbo Bakers', '1 year', 'Manufacturing',245 ,1332 , '');
	
INSERT INTO Internships (Intern_num, company, intern_length, buisness_Type, alum_referal_FK, stu_ID_FK, notes_sec)
    VALUES ( 2, 'Google', '6 months', 'Information Technology',122 , 34543, '');

INSERT INTO Internships (Intern_num, company, intern_length, buisness_Type, alum_referal_FK, stu_ID_FK, notes_sec)
    VALUES (3 , 'Home Depot', '1 year', 'Retail', 245, 534, '');

INSERT INTO Internships (Intern_num, company, intern_length, buisness_Type, alum_referal_FK, stu_ID_FK, notes_sec)
    VALUES (4 , 'Apple Inc.', '6 months', 'Information Technology',435 ,1332 , '');

INSERT INTO Internships (Intern_num, company, intern_length, buisness_Type, alum_referal_FK, stu_ID_FK, notes_sec)
    VALUES ( 5, 'Amazon', '1 year', 'Retail', 122,534 , '');





-- 7 
create table AlumEmployment
(
alum_Job_ID    integer,
company        varchar(50),
buisness_Type  varchar(150),
hiredate       date,
salary         integer,
alum_ID_FK     integer,
notes_sec      varchar(1000),

constraint AlumEmployment_PK primary key (alum_Job_ID),

constraint 	AlumEmployment_FK foreign key (alum_ID_FK)
	REFERENCES Alumni (alum_ID)
);

INSERT INTO AlumEmployment (alum_Job_ID, company, buisness_Type, hiredate, salary, alum_ID_FK, notes_sec)
    VALUES ( 7574, 'Apple Inc', 'Information Technology', '2016/04/09', 235000,245, '');
	
INSERT INTO AlumEmployment (alum_Job_ID, company, buisness_Type, hiredate, salary, alum_ID_FK, notes_sec)
    VALUES ( 4343, 'Google', 'Information Technology','2012/04/09', 354000, 534, '');
	
INSERT INTO AlumEmployment (alum_Job_ID, company, buisness_Type, hiredate, salary, alum_ID_FK, notes_sec)
    VALUES (242 , 'Walmart', 'Retail','2019/04/09', 90000,324, '');
	
INSERT INTO AlumEmployment (alum_Job_ID, company, buisness_Type, hiredate, salary, alum_ID_FK, notes_sec)
    VALUES (2434 , 'Comcast', 'ISP', '2020/11/09', 120000, 435, '');
	
INSERT INTO AlumEmployment (alum_Job_ID, company, buisness_Type, hiredate, salary, alum_ID_FK, notes_sec)
    VALUES (2423 , 'Verizon', 'ISP', '2017/06/09', 150000, 122, '');





-- 8 
create table Alumni_Degrees
(
alumD_ID        integer not null, 
institution     varchar(50) not null,
degree_Type     varchar(50) not null, -- PHD, Masters, Bachlores, Associates
date_recieved   date not null,
alum_ID_FK      integer not null,
notes_sec       varchar(1000),

constraint Alumni_Degrees_PK primary key (alumD_ID),

constraint 	Alumni_Degrees_FK foreign key (alum_ID_FK)
	REFERENCES Alumni(alum_ID)
);

INSERT INTO Alumni_Degrees (alumD_ID, institution, degree_Type, date_recieved, alum_ID_FK, notes_sec)
    VALUES ( 343, 'Drexel University', 'PHD', '2012/04/09',245 , '');

INSERT INTO Alumni_Degrees (alumD_ID, institution, degree_Type, date_recieved, alum_ID_FK, notes_sec)
    VALUES ( 696, 'Cairn University', 'Masters','2009/04/09' , 534, '');
	
INSERT INTO Alumni_Degrees (alumD_ID, institution, degree_Type, date_recieved, alum_ID_FK, notes_sec)
    VALUES ( 495, 'Temple University', 'Bachelors', '2013/04/09',324 , '');
	
INSERT INTO Alumni_Degrees (alumD_ID, institution, degree_Type, date_recieved, alum_ID_FK, notes_sec)
    VALUES (404 , 'Cairn University', 'Masters', '2006/04/09' , 435, '');
	
INSERT INTO Alumni_Degrees (alumD_ID, institution, degree_Type, date_recieved, alum_ID_FK, notes_sec)
    VALUES (504 , 'Havard University', 'PHD', '2014/04/09', 122, '');






-- 9
create table Guest_Degrees
(
guestD_ID     integer, 
institution   varchar(50),
degree_Type   varchar(50), -- PHD, Masters, Bachlores, Associates
date_recieved date,
guest_ID_FK   integer,
notes_sec     varchar(1000),

constraint Guest_Degrees_PK primary key (guestD_ID),

constraint Guest_Degrees_FK foreign key (guest_ID_FK)
	REFERENCES GuessSpeakers (guest_ID)
);

INSERT INTO  Guest_Degrees(guestD_ID, institution, degree_Type, date_recieved, guest_ID_FK, notes_sec)
    VALUES ( 454, 'Drexel University', 'PHD', '2012/04/09',1829 , '');
	
INSERT INTO  Guest_Degrees(guestD_ID, institution, degree_Type, date_recieved, guest_ID_FK, notes_sec)
    VALUES (232 , 'Cairn University', 'Masters','2009/04/09' , 3738, '');
	
INSERT INTO  Guest_Degrees(guestD_ID, institution, degree_Type, date_recieved, guest_ID_FK, notes_sec)
    VALUES ( 435, 'Temple University', 'Bachelors', '2013/04/09', 6965, '');
	
INSERT INTO  Guest_Degrees(guestD_ID, institution, degree_Type, date_recieved, guest_ID_FK, notes_sec)
    VALUES ( 686, 'Cairn University', 'Masters','2006/04/09' ,9482 , '');
	
INSERT INTO  Guest_Degrees(guestD_ID, institution, degree_Type, date_recieved, guest_ID_FK, notes_sec)
    VALUES ( 898, 'Havard University', 'PHD', '2014/04/09', 1093, '');
