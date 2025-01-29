
---SET OPERATORS

---Part – A:

CREATE TABLE COMPUTER (
    ROLLNO INT,
    NAME VARCHAR(50)
);


INSERT INTO COMPUTER (ROLLNO, NAME) VALUES
(101, 'Ajay'),
(109, 'Haresh'),
(115, 'Manish');

CREATE TABLE ELECTRICAL (
    ROLLNO INT PRIMARY KEY,
    NAME VARCHAR(50)
);

INSERT INTO ELECTRICAL (ROLLNO, NAME) VALUES
(105, 'Ajay'),
(107, 'Mahesh'),
(115, 'Manish');

SELECT * FROM COMPUTER 
SELECT * FROM ELECTRICAL

--1. Display name of students who is either in Computer or in Electrical. 
SELECT NAME FROM COMPUTER 
UNION
SELECT NAME FROM ELECTRICAL

--2. Display name of students who is either in Computer or in Electrical including duplicate data. 
SELECT NAME FROM COMPUTER 
UNION ALL
SELECT NAME FROM ELECTRICAL

--3. Display name of students who is in both Computer and Electrical. 
SELECT NAME FROM COMPUTER 
INTERSECT
SELECT NAME FROM ELECTRICAL

--4. Display name of students who are in Computer but not in Electrical. 
SELECT * FROM COMPUTER 
EXCEPT
SELECT * FROM ELECTRICAL 

--5. Display name of students who are in Electrical but not in Computer. 
SELECT NAME FROM ELECTRICAL 
EXCEPT
SELECT NAME FROM COMPUTER

--6. Display all the details of students who are either in Computer or in Electrical. 
SELECT * FROM COMPUTER 
UNION
SELECT * FROM ELECTRICAL

--7. Display all the details of students who are in both Computer and Electrical.
SELECT * FROM COMPUTER 
INTERSECT
SELECT * FROM ELECTRICAL


---Part – B: 


CREATE TABLE EMP_DATA (
    EID INT,
    NAME VARCHAR(50)
);

INSERT INTO EMP_DATA (EID, NAME) VALUES
(1, 'Ajay'),
(9, 'Haresh'),
(5, 'Manish');

CREATE TABLE CUSTOMER (
    CID INT,
    NAME VARCHAR(50)
);

INSERT INTO CUSTOMER (CID, NAME) VALUES
(5, 'Ajay'),
(7, 'Mahesh'),
(5, 'Manish');

SELECT * FROM EMP_DATA 
SELECT * FROM CUSTOMER 

--1. Display name of persons who is either Employee or Customer. 
SELECT NAME FROM EMP_DATA
UNION
SELECT NAME FROM CUSTOMER

--2. Display name of persons who is either Employee or Customer including duplicate data. 
SELECT NAME FROM EMP_DATA
UNION ALL
SELECT NAME FROM CUSTOMER

--3. Display name of persons who is both Employee as well as Customer. 
SELECT NAME FROM EMP_DATA
INTERSECT
SELECT NAME FROM CUSTOMER

--4. Display name of persons who are Employee but not Customer. 
SELECT NAME FROM EMP_DATA
EXCEPT
SELECT NAME FROM CUSTOMER

--5. Display name of persons who are Customer but not Employee. 
SELECT NAME FROM CUSTOMER
EXCEPT
SELECT NAME FROM EMP_DATA



---Part – C:  
---Perform all the queries of Part-B but display ID and Name columns instead of Name only.



--1
SELECT * FROM EMP_DATA
UNION
SELECT * FROM CUSTOMER

--2
SELECT * FROM EMP_DATA
UNION ALL
SELECT * FROM CUSTOMER

--3
SELECT * FROM EMP_DATA
INTERSECT
SELECT * FROM CUSTOMER

--4
SELECT * FROM EMP_DATA
EXCEPT
SELECT * FROM CUSTOMER

--5
SELECT * FROM CUSTOMER
EXCEPT
SELECT * FROM EMP_DATA