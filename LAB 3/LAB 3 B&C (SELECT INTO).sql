USE CSE_3B_316

---PART B

CREATE TABLE EMPLOYEE
(
  NAME VARCHAR(50),
  CITY VARCHAR(50),
  AGE INT
)

INSERT INTO EMPLOYEE
VALUES
('JAY PATEL','RAJKOT',30),
('RAHUL DAVE','BARODA',35),
('JEET PATEL','SURAT',31),
('VIJAY RAVAL','RAJKOT',30)

--1. Create table Employee_detail from Employee with all the columns and data. 
SELECT * INTO EMPLOYEE_DETAIL FROM EMPLOYEE

--2. Create table Employee_data from Employee with first two columns with no data.
SELECT NAME,CITY INTO EMPLOYEE_DATA FROM EMPLOYEE
WHERE 1=0

--3. Create table Employee_info from Employee with no Data 
SELECT * INTO EMPLOYEE_INFO FROM EMPLOYEE
WHERE 1=3


---PART C

--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot 
INSERT INTO EMPLOYEE_INFO
SELECT * FROM EMPLOYEE 
WHERE CITY='RAJKOT'

-- 2. Insert the Data into Employee_info from Employee whose age is more than 32.
INSERT INTO EMPLOYEE_INFO
SELECT * FROM EMPLOYEE 
WHERE AGE>32
