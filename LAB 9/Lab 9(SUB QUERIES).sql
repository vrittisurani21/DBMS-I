
---SUB QUERIES

---Part – A: 

CREATE TABLE STUDENT_DATA (
    NO INT,
    NAME VARCHAR(50),
    CITY VARCHAR(50),
    DID INT,
);

INSERT INTO STUDENT_DATA (NO, NAME, CITY, DID) VALUES
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);

CREATE TABLE ACADEMIC (
    RNO INT,
    SPI DECIMAL(3, 1),
    BKLOG INT
);

INSERT INTO ACADEMIC (RNO, SPI, BKLOG) VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);

CREATE TABLE DEPARTMENT (
    DID INT,
    DNAME VARCHAR(50)
);

INSERT INTO DEPARTMENT (DID, DNAME) VALUES
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');

SELECT * FROM STUDENT_DATA
SELECT * FROM ACADEMIC 
SELECT * FROM DEPARTMENT


--1. Display details of students who are from computer department. 
SELECT * FROM STUDENT_DATA
WHERE DID=(SELECT DID FROM DEPARTMENT WHERE DNAME='Computer')

--2. Displays name of students whose SPI is more than 8. 
SELECT NAME FROM STUDENT_DATA
WHERE NO IN (SELECT RNO FROM ACADEMIC WHERE SPI>8)

--3. Display details of students of computer department who belongs to Rajkot city. 
SELECT * FROM STUDENT_DATA
WHERE DID IN (SELECT DID FROM DEPARTMENT WHERE DNAME='Computer')AND CITY='Rajkot'

--4. Find total number of students of electrical department. 
SELECT NAME FROM STUDENT_DATA
WHERE NO IN (SELECT RNO FROM ACADEMIC WHERE SPI>8)

--5. Display name of student who is having maximum SPI. 
SELECT NAME FROM STUDENT_DATA
WHERE NO IN (SELECT RNO FROM ACADEMIC where SPI IN (SELECT MAX(SPI)FROM ACADEMIC) )


--6. Display details of students having more than 1 backlog. 
SELECT NAME FROM STUDENT_DATA
WHERE NO IN (SELECT RNO FROM ACADEMIC where BKLOG >1 )


---Part – B: 


--1. Display name of students who are either from computer department or from mechanical department. 



--2. Display name of students who are in same department as 102 studying in. 



---Part – C: 



--1. Display name of students whose SPI is more than 9 and who is from electrical department. 



--2. Display name of student who is having second highest SPI. 



--3. Display city names whose students branch wise SPI is 9.2