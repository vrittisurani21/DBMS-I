USE CSE_3B_316

CREATE TABLE STUDENT 
(
  STU_ID INT,
  FIRST_NAME VARCHAR(25),
  LAST_NAME VARCHAR(25),
  WEBSITE VARCHAR(50),
  CITY VARCHAR(25),
  ADDRESS VARCHAR(100)
)

INSERT INTO STUDENT
VALUES
(1011,'KEYUR','PATEL','technothenet.com','RAJKOT','A-303''VASANT KUNJ'',RAJKOT'),
(1022,'HARDIK','SHAH','digminecraft.com','AHEMEDABAD','"RAM KRUPA",RAIYA ROAD'),
(1033,'KAJAL','TRIVEDI','bigacticities.com','BARODA','RAJ BHAVAN PLOT,NEAR GARDEN'),
(1044,'BHOOMI','GAJERA','checkyourmath.com','AHEMEDABAD','"JIG''S HOME",NAROL'),
(1055,'HARMIT','MITEL','@me.darshan.com','RAJKOT','B-55,RAJ RESIDENCY'),
(1066,'ASHOK','JANI','NULL','BARODA','A502,CLUB HOUSE BUILDING')

SELECT* FROM STUDENT

---PART A

--1. Display the name of students whose name starts with ‘k’. 
SELECT FIRST_NAME FROM STUDENT 
WHERE FIRST_NAME LIKE 'K%'

--2. Display the name of students whose name consists of five characters. 
SELECT FIRST_NAME FROM STUDENT 
WHERE FIRST_NAME LIKE '_____'

--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
SELECT FIRST_NAME,LAST_NAME FROM STUDENT 
WHERE CITY LIKE '_____A'

--4. Display all the students whose last name ends with ‘tel’. 
SELECT * FROM STUDENT 
WHERE LAST_NAME LIKE '%TEL'

--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.
SELECT * FROM STUDENT 
WHERE FIRST_NAME LIKE 'HA%T'

--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.
SELECT * FROM STUDENT 
WHERE FIRST_NAME LIKE 'K_Y%'

--7. Display the name of students having no website and name consists of five characters.
SELECT FIRST_NAME,LAST_NAME FROM STUDENT 
WHERE WEBSITE LIKE 'NULL' AND FIRST_NAME LIKE'_____'

--8. Display all the students whose last name consist of ‘jer’.
SELECT * FROM STUDENT 
WHERE LAST_NAME LIKE '%JER%'

--9. Display all the students whose city name starts with either ‘r’ or ‘b’. 
SELECT * FROM STUDENT 
WHERE CITY LIKE '[R,B]%'

--10. Display all the name students having websites. 
SELECT FIRST_NAME,LAST_NAME FROM STUDENT
WHERE WEBSITE NOT LIKE 'NULL'

--11. Display all the students whose name starts from alphabet A to H.
SELECT * FROM STUDENT 
WHERE FIRST_NAME LIKE '[A,B,C,D,E,F,G,H]%'

--12. Display all the students whose name’s second character is vowel.
SELECT * FROM STUDENT 
WHERE FIRST_NAME LIKE '_[A,E,I,O,U]%'

--13. Display the name of students having no website and name consists of minimum five characters.
SELECT FIRST_NAME FROM STUDENT 
WHERE WEBSITE LIKE 'NULL' AND FIRST_NAME LIKE '_____%'

--14. Display all the students whose last name starts with ‘Pat’.   
SELECT * FROM STUDENT 
WHERE LAST_NAME LIKE 'PAT%'

--15. Display all the students whose city name does not starts with ‘b’. 
SELECT * FROM STUDENT 
WHERE CITY NOT LIKE 'B%'

---PART B

--1. Display all the students whose name starts from alphabet A or H.
SELECT * FROM STUDENT 
WHERE FIRST_NAME LIKE '[A,H]%'

--2. Display all the students whose name’s second character is vowel and of and start with H.
SELECT * FROM STUDENT 
WHERE FIRST_NAME LIKE 'H[A,E,I,O,U]%'

--3. Display all the students whose last name does not ends with ‘a’.
SELECT * FROM STUDENT 
WHERE LAST_NAME NOT LIKE '%A'

--4. Display all the students whose first name starts with consonant. 
SELECT * FROM STUDENT 
WHERE FIRST_NAME NOT LIKE '[A,E,I,O,U]%'

--5. Display all the students whose website contains .net 
SELECT * FROM STUDENT 
WHERE WEBSITE LIKE '%.net%'

---PART C

--1. Display all the students whose address consist of -. 
SELECT * FROM STUDENT 
WHERE ADDRESS LIKE '%-%'

--2. Display all the students whose address contains single quote or double quote.
SELECT * FROM STUDENT 
WHERE ADDRESS LIKE '%''%' OR ADDRESS LIKE '%"%'

--3. Display all the students whose website contains @. 
SELECT * FROM STUDENT 
WHERE WEBSITE LIKE '%@%'

--4. Display all the names those are either four or five characters. 
SELECT FIRST_NAME FROM STUDENT 
WHERE FIRST_NAME LIKE '____' OR FIRST_NAME LIKE '_____'