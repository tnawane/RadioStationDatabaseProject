----NATURAL JOIN-----
SELECT LAST_NAME, FIRST_NAME, CURRENT_POSITION, SALARY
FROM EMPLOYEE NATURAL JOIN PRESENTER;

---JOIN USING----
SELECT LAST_NAME,FIRST_NAME,PROGRAM_NAME,STARTING_TIME
FROM EMPLOYEE JOIN PROGRAM_ USING (EMP_ID);
-----------------------------------------------------------

----SUBQUERY----------------


SELECT MUSIC.prog_id,program_name,artist_name,genre 
FROM program_ JOIN music ON program_.prog_id = music.prog_id 
WHERE genre IN (SELECT genre FROM employee WHERE genre='HIPHOP');

--SELECT emp_id,prog_id,program_duration,program_name
--FROM program_
--WHERE program_duration IN (SELECT program_duration FROM program_ WHERE program_duration > 1)
--ORDER BY program_duration ;

SELECT program_.emp_id,prog_id,program_duration, program_name FROM program_ JOIN employee ON program_.emp_id = employee.emp_id
ORDER BY program_duration;

SELECT emp_id, last_name, first_name, gender
FROM employee
WHERE gender IN (SELECT gender FROM employee WHERE gender='FEMALE');

SELECT program_.emp_id,employee.last_name, employee.first_name, prog_id,program_duration, program_name, employee.gender 
FROM program_ JOIN employee ON program_.emp_id = employee.emp_id
WHERE gender IN (SELECT gender FROM employee WHERE gender='FEMALE');
