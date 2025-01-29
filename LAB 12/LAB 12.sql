
SELECT * FROM PERSON
SELECT * FROM DEPT


---PART A


--1. Find all persons with their department name & code. 

SELECT PERSON.PersonName,DEPT.DepartmentName,DEPT.DepartmentCode
FROM PERSON JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID


--2. Find the person's name whose department is in C-Block. 

SELECT PERSON.PersonName,DEPT.Location
FROM PERSON JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
WHERE DEPT.Location='C-Block'


--3. Retrieve person name, salary & department name who belongs to Jamnagar city. 

SELECT PERSON.PersonName,PERSON.Salary,DEPT.DepartmentName
FROM PERSON JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
WHERE PERSON.City='JAMNAGAR'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city. 

SELECT PERSON.PersonName,PERSON.Salary,DEPT.DepartmentName
FROM PERSON JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
WHERE PERSON.City != 'RAJKOT'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001. 

SELECT PERSON.PersonName
FROM PERSON JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
WHERE PERSON.JoiningDate>'1-AUG-2001'

--6. Find details of all persons who belong to the computer department.

SELECT *
FROM PERSON LEFT JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
WHERE DEPT.DepartmentName='COMPUTER'

--7. Display all the person's name with the department whose joining date difference with the current date 
--is more than 365 days. 

SELECT PERSON.PersonName,  PERSON.JoiningDate
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
WHERE  DATEDIFF(DAY,PERSON.JoiningDate,GETDATE())>365


--8. Find department wise person counts. 

SELECT DEPT.DEPARTMENTNAME, COUNT(PERSON.PERSONNAME) AS PERSON_COUNT
FROM PERSON JOIN DEPT
ON PERSON.DEPARTMENTID = DEPT.DEPARTMENTID
GROUP BY DEPT.DEPARTMENTNAME;


--9. Give department wise maxmum & minimum salary with department name. 

SELECT DEPT.DEPARTMENTNAME, MAX(PERSON.SALARY) AS MAX_SALARY, MIN(PERSON.SALARY) AS MIN_SALARY
FROM PERSON JOIN DEPT
ON PERSON.DEPARTMENTID = DEPT.DEPARTMENTID
GROUP BY DEPT.DEPARTMENTNAME;


--10. Find city wise total, average, maximum and minimum salary. 

SELECT PERSON.CITY, MAX(PERSON.SALARY) AS MAX_SALARY, MIN(PERSON.SALARY) AS MIN_SALARY, SUM(PERSON.SALARY) AS TOTAL_SALARY, AVG(PERSON.SALARY) AS AVG_SALARY
FROM PERSON JOIN DEPT
ON PERSON.DEPARTMENTID = DEPT.DEPARTMENTID
GROUP BY PERSON.CITY;


--11. Find the average salary of a person who belongs to Ahmedabad city. 

SELECT AVG(SALARY) AS AVG_SALARY
FROM PERSON
WHERE CITY = 'AHMEDABAD';


--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In 
--single column) 

SELECT CONCAT(PERSON.PERSONNAME, ' LIVES IN ', PERSON.CITY, ' AND WORKS IN ', DEPT.DEPARTMENTNAME, ' DEPARTMENT. ') AS PERSON_DETAILS
FROM PERSON JOIN DEPT
ON PERSON.DEPARTMENTID = DEPT.DEPARTMENTID;


---PART B


--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In 
--single column) 

SELECT PERSON.PersonName+'earns'+PERSON.City+ 'FROM   '+DEPT.DepartmentName+'depeartment monthly.'
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID


--2. Find city & department wise total, average & maximum salaries. 

SELECT MAX(PERSON.Salary)AS MAX,MIN(PERSON.Salary)AS MIN,AVG(PERSON.Salary) AS AVG,SUM(PERSON.Salary)AS TOTAL,DEPT.DepartmentName
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
GROUP BY DEPT.DepartmentName, PERSON.City


--3. Find all persons who do not belong to any department. 

SELECT *
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
where DEPT.DepartmentName= null


--4. Find all departments whose total salary is exceeding 100000.

SELECT *
FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID=DEPT.DepartmentID
where PERSON.Salary>100000

---PART C


--1. List all departments who have no person. 



--2. List out department names in which more than two persons are working. 



--3. Give a 10% increment in the computer department employee’s salary. (Use Update) 