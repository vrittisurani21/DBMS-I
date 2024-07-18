CREATE DATABASE CSE_3B_316

---LAB 1

CREATE TABLE DEPOSIT 
(
  ACTNO INT,
  CNAME VARCHAR(50),
  BNAME VARCHAR(50),
  AMOUNT DECIMAL(8,2),
  ADATE DATETIME 
)
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
(101,'ANIL','VRCE',1000.00,'1-MAR-95')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
(102,'SUNIL','AJNI',5000.00,'4-JAN-96')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
(103,'MEHUL','KAROLBAGH',3500.00,'17-NOV-95')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
(104,'MADHURI','CHANDI',1200.00,'17-DEC-95')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
(105,'PRAMOD','M.G.ROAD',3000.00,'27-MAR-96')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
(106,'SANDIP','ANDHERI',2000.00,'31-MAR-96')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
(107,'SHIVANI','VIRAR',1000.00,'5-SEP-95')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
(108,'KRANTI','NEHRU PLACE',5000.00,'2-JULY-95')
INSERT INTO DEPOSIT(ACTNO,CNAME,BNAME,AMOUNT,ADATE)
VALUES
(109,'MINU','POWAI',7000.00,'10-OCT-95')



CREATE TABLE BRANCH
(
  BNAME VARCHAR(50),
  CITY VARCHAR(50)
)
INSERT INTO BRANCH (BNAME,CITY)
VALUES
('VRCE','NAGPUR')
INSERT INTO BRANCH (BNAME,CITY)
VALUES
('AJNI','NAGPUR')
INSERT INTO BRANCH (BNAME,CITY)
VALUES
('KAROLBAGH','DELHI')
INSERT INTO BRANCH (BNAME,CITY)
VALUES
('CHANDI','DELHI')
INSERT INTO BRANCH (BNAME,CITY)
VALUES
('DHARAMPETH','NAGPUR')
INSERT INTO BRANCH (BNAME,CITY)
VALUES
('M.G.ROAD','BANGLORE')
INSERT INTO BRANCH (BNAME,CITY)
VALUES
('ANDHERI','BOMBAY')
INSERT INTO BRANCH (BNAME,CITY)
VALUES
('VIRAR','BOMBAY')
INSERT INTO BRANCH (BNAME,CITY)
VALUES
('NEHRU PALACE','DELHI')
INSERT INTO BRANCH (BNAME,CITY)
VALUES
('POWAI','BOMBAY')



CREATE TABLE CUSTOMERS
(
	CNAME	VARCHAR(50),
    CITY	VARCHAR(50)
)

--INSERT INTO table_name
--VALUES
--('value1','value2')
--('value3','value4')


INSERT INTO CUSTOMERS
VALUES
('ANIL', 'CALCUTTA'),
('SUNIL', 'DELHI'), 
('MEHUL', 'BARODA'), 
('MANDAR', 'PATNA'), 
('MADHURI','NAGPUR'), 
('PRAMOD','NAGPUR'), 
('SANDIP','SURAT'),
('SHIVANI','BOMBAY'),
('KRANTI', 'BOMBAY'),
('NAREN', 'BOMBAY')


CREATE TABLE BORROW
(
	LOANNO	INT,
	CNAME	VARCHAR(50),
	BNAME	VARCHAR(50),
	AMOUNT	DECIMAL(8,2)
)


INSERT INTO BORROW
VALUES
(201, 'ANIL', 'VRCE', 1000.00), 
(206,'MEHUL', 'AJNI', 5000.00),
(311,'SUNIL', 'DHARAMPETH', 3000.00), 
(321,'MADHURI', 'ANDHERI' ,2000.00), 
(375,'PRMOD', 'VIRAR' ,8000.00), 
(481,'KRANTI', 'NEHRU PLACE', 3000.00)

---LAB 2
---PART A

--1. Retrieve all data from table DEPOSIT.  
SELECT* FROM DEPOSIT

--2. Retrieve all data from table BORROW. 
SELECT *FROM BORROW

--3. Retrieve all data from table CUSTOMERS.
SELECT * FROM CUSTOMERS

--4. Display Account No, Customer Name & Amount from DEPOSIT.
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT

--5. Display Loan No, Amount from BORROW.
SELECT LOANNO,AMOUNT FROM BORROW

--6. Display loan details of all customers who belongs to ‘ANDHERI’ branch from borrow table. 
SELECT * FROM BORROW
WHERE BNAME='ANDHERI'

--7. Give account no and amount of depositor, whose account no is equals to 106 from deposit table.  
SELECT ACTNO,AMOUNT FROM DEPOSIT
WHERE ACTNO=106

--8. Give name of borrowers having amount greater than 5000 from borrow table.  
SELECT BNAME FROM BORROW
WHERE AMOUNT > 5000.00

--9. Give name of customers who opened account after date '1-12-96' from deposit table.  
SELECT CNAME FROM DEPOSIT
WHERE ADATE >'1-DEC-96'

--10. Display name of customers whose account no is less than 105 from deposit table.
SELECT  CNAME FROM DEPOSIT
WHERE ACTNO<105

--11. Display name of customer who belongs to either ‘NAGPUR’ or ‘DELHI’ from customer table. (OR & IN) 
SELECT CNAME FROM CUSTOMERS 
WHERE CITY='NAGPUR' OR CITY='DELHI'
SELECT CNAME FROM CUSTOMERS 
WHERE CITY IN ('NAGPUR','DELHI')

--12. Display name of customers with branch whose amount is greater than 4000 and account no is less than 
--105 from deposit table. 
SELECT BNAME,CNAME FROM DEPOSIT
WHERE AMOUNT>4000 AND ACTNO<105

--13. Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow 
--table. (AND & BETWEEN) 
SELECT * FROM BORROW 
WHERE AMOUNT >= 3000 AND AMOUNT <= 8000
SELECT * FROM BORROW 
WHERE AMOUNT BETWEEN 3000 AND 8000

--14. Find all depositors who do not belongs to ‘ANDHERI’ branch from deposit table. 
SELECT * FROM DEPOSIT 
WHERE BNAME != 'ANDHERI'

--15. Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’ 
--Or ‘M.G.ROAD’ and Account No is less than 104 from deposit table. 
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT 
WHERE BNAME IN ('AJNI','KAROLBAGH','M.G.ROAD') AND ACTNO < 104


---PART B

--1. Display all the details of first five customers from deposit table. 

--2. Display all the details of first three depositors whose amount is greater than 1000. 

--3. Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to 
--‘ANDHERI’ from borrow table. 

--4. Retrieve all unique cities using DISTINCT. (Use Customers Table) 

--5. Retrieve all unique branches using DISTINCT. (Use Branch Table)


---PART C

--1. Retrieve top 50% record from table BORROW. 

--2. Display top 10% amount from table DEPOSIT.

--3. Display top 25% customer who deposited more than 5000. 

--4. Retrieve first 10% Loan Amounts.

--5. Retrieve all unique customer names with city. 

--6. Retrieve all Loan records with one more column in Loan Amount as 10% extra amount.

--7. Retrieve all odd/even value loan number from Borrow table. 