create database SCHOOL;
use school;
create table CourseMaster
(
  CID INT PRIMARY KEY,
  CourseName VARCHAR(40) NOT NULL,
  Category CHAR(1) NOT NULL CHECK(Category IN('B','M','A')) ,
  Fee SmallMoney CHECK(Fee>=0) NOT NULL
  );

  create table StudentMaster
  (
    SID tinyint PRIMARY KEY,
	StudentName VARCHAR(40) NOT NULL,
	Origin CHAR(1) CHECK(Origin IN('L','F') ) NOT NULL,
	type CHAR(1) CHECK(type IN('U','G')) NOT NULL
	);

	CREATE TABLE EnrollmentMaster 
	(
    CID INT NOT NULL,
    SID TINYINT NOT NULL,
    DOE DATETIME NOT NULL,
    FWF BIT NOT NULL,
    Grade CHAR(1) CHECK (Grade IN ('O', 'A', 'B', 'C')),
    FOREIGN KEY (CID) REFERENCES CourseMaster (CID),
    FOREIGN KEY (SID) REFERENCES StudentMaster (SID)
    );

	INSERT INTO CourseMaster([CID],[CourseName],[Category],[Fee]) VALUES (100,'Java','A',17);
	INSERT INTO CourseMaster([CID],[CourseName],[Category],[Fee]) VALUES (101,'Python','B',175),
	(103,'SQL','M',678),
	(104,'Data Structures','M',89),
	(105,'Algorithms','A',67),
	(106,'Flowchart','M',899),
	(107,'CN','B',980),
	(108,'FLAT','M',768),
	(109,'CD','A',456),
	(110,'DAA','B',564),
	(111,'MFCS','M',543);
	select * from CourseMaster;
INSERT INTO StudentMaster([SID],[StudentName],[Origin],[type]) VALUES (200,'Sid','L','U');
INSERT INTO StudentMaster([SID],[StudentName],[Origin],[type]) VALUES (201,'Kaira','F','G'),
(202,'Mishra','F','U'),
(203,'Amit','F','G'),
(204,'Sagar','F','U'),
(205,'Raha','L','G'),
(206,'Samath','F','U'),
(207,'Agarwal','F','G'),
(208,'Kash','F','U'),
(209,'Maaya','F','G'),
(210,'Mahi','F','U'),
(211,'sana','F','U'),
(212,'Somya','F','G'),
(213,'Karthik','F','U'),
(214,'Fara','F','G');

INSERT INTO EnrollmentMaster([CID],[SID],[DOE],[FWF],[Grade]) VALUES(101,203,'2022-08-07',0,'O');
INSERT INTO EnrollmentMaster([CID],[SID],[DOE],[FWF],[Grade]) VALUES(101,202,'2021-09-12',1,'A');
INSERT INTO EnrollmentMaster([CID],[SID],[DOE],[FWF],[Grade]) VALUES(102,203,'2020-05-2',1,'C');
INSERT INTO EnrollmentMaster([CID],[SID],[DOE],[FWF],[Grade]) VALUES(103,204,'2002-06-012',0,'B');
INSERT INTO EnrollmentMaster([CID],[SID],[DOE],[FWF],[Grade]) VALUES(101,205,'2006-09-1',1,'A');
INSERT INTO EnrollmentMaster([CID],[SID],[DOE],[FWF],[Grade]) VALUES(105,204,'2021-07-05',0,'A');
INSERT INTO EnrollmentMaster([CID],[SID],[DOE],[FWF],[Grade]) VALUES(101,206,'2003-02-09',1,'C');
INSERT INTO EnrollmentMaster([CID],[SID],[DOE],[FWF],[Grade]) VALUES(107,204,'2005-07-08',0,'A');
INSERT INTO EnrollmentMaster([CID],[SID],[DOE],[FWF],[Grade]) VALUES(109,202,'2021-09-012',1,'O');
INSERT INTO EnrollmentMaster([CID],[SID],[DOE],[FWF],[Grade]) VALUES(100,209,'2020-07-04',0,'A');

select * from EnrollmentMaster;
