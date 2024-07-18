USE CSE_3B_316

---PART A

CREATE TABLE CRICKET
(
  NAME VARCHAR(50),
  CITY VARCHAR (50),
  AGE INT
)

INSERT INTO CRICKET
VALUES
('SACHIN TENDULKAR','MUMBAI',30),
('RAHUL DRAVID', 'BOMBAY',35),
('M.S.DHONI', 'KHARKHAND',31),
('SURESH RAINA', 'GUJARAT',30)

--1. Create table Worldcup from cricket with all the columns and data.  
SELECT * INTO WORLDCUP FROM CRICKET

--2. Create table T20 from cricket with first two columns with no data.
SELECT NAME,CITY INTO T20 FROM CRICKET
WHERE 1=0

--3. Create table IPL From Cricket with No Data
SELECT * INTO IPL FROM CRICKET
WHERE 1=2