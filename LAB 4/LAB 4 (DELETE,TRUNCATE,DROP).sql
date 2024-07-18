USE CSE_3B_316

---PART A


--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
DELETE FROM DEPOSIT_DETAIL
WHERE AMOUNT >= 4000

--2. Delete all the accounts CHANDI BRANCH. 
DELETE FROM DEPOSIT_DETAIL 
WHERE BNAME = 'CHANDI'

--3. Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL
WHERE ANO > 105

--4. Delete all the records of Deposit_Detail table. (Use Truncate) 
TRUNCATE TABLE DEPOSIT_DETAIL

--5. Remove Deposit_Detail table. (Use Drop) 
DROP TABLE DEPOSIT_DETAIL


---PART B


CREATE TABLE EMPLOYEE_MASTER
( 
  EMP_NO INT,
  EMP_NAME VARCHAR(25),
  JOINING_DATE DATETIME,
  SALARY DECIMAL(8,2),
  CITY VARCHAR(20)
)

INSERT INTO EMPLOYEE_MASTER(EMP_NO,EMP_NAME,JOINING_DATE,SALARY,CITY)
VALUES
(101,'KEYUR','5-JAN-2002',12000,'RAJKOT'),
(102,'HARDIK','15-FEB-2004',14000,'AHMEDABAD'),
(103,'KAJAL','14-MAR-2006',15000,'BARODA'),
(104,'BHOOMI','23-JUNE-2005',12500,'AHMEDABAD'),
(105,'HARMIT','15-FEB-2004',14000,'RAJKOT'),
(106,'MITESH','25-SEP-2001',5000,'JAMNAGAR'),
(107,'MEERA',NULL,7000,'MORBI'),
(108,'KISHAN','6-FEB-2003',10000,NULL)

--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.  
DELETE FROM EMPLOYEE_MASTER
WHERE SALARY > 14000

--2. Delete all the Employees who belongs to ‘RAJKOT’ city. 
DELETE FROM EMPLOYEE_MASTER 
WHERE CITY = 'RAJKOT'

--3. Delete all the Employees who joined after 1-1-2007. 
DELETE FROM EMPLOYEE_MASTER 
WHERE JOINING_DATE > '1-JAN-2007'

--4. Delete the records of Employees whose joining date is null and Name is not null. 
DELETE FROM EMPLOYEE_MASTER 
WHERE JOINING_DATE IS NULL AND EMP_NAME IS NOT NULL

--5. Delete the records of Employees whose salary is 50% of 20000. 
DELETE FROM EMPLOYEE_MASTER 
WHERE SALARY = 0.5 * 20000

--6. Delete the records of Employees whose City Name is not empty. 
DELETE FROM EMPLOYEE_MASTER
WHERE CITY IS NOT NULL

--7. Delete all the records of Employee_MASTER table. (Use Truncate) 
TRUNCATE TABLE EMPLOYEE_MASTER

--8. Remove Employee_MASTER table. (Use Drop)
DROP TABLE EMPLOYEE_MASTER