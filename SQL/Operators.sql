/*
Different SQL operators  : 
BETWEEN , ORDER , BY , IN , NOT IN, LIKE , ALIASE , DISTINCT , LIMIT , CASE:
= , < , > , <= , => , <> , != 
+ , - , * , / , % 
AND , OR , NOT , IN 

*/


SELECT * FROM staff;
SELECT * FROM school;
SELECT * FROM address_details;
SELECT staff_id , first_name from staff;
SELECT * FROM staff WHERE first_name <> 'Harmanpreet'; -- Not equal operator -> <>
SELECT * FROM staff WHERE staff_id = 103;
SELECT * FROM staff WHERE age >= 33;
SELECT * FROM staff ORDER BY dob ; -- Sorts in ascending
SELECT * FROM staff ORDER BY age DESC; -- Sorts in descending
SELECT * FROM school WHERE address_id BETWEEN 2 AND 4 ORDER BY school_id;
SELECT * from school WHERE board NOT IN('VTU','SSLC'); -- VTU and SSLC are case sensitive
SELECT * FROM staff WHERE last_name LIKE 'k%'; -- Gives whose last name starts with letter 'k'
SELECT * FROM staff WHERE first_name LIKE '%t'; -- Gives whose firts name ends with letter 't'
SELECT * FROM staff WHERE age > 32 AND gender = 'm';
SELECT * FROM staff WHERE age > 34 OR gender = 'f';
SELECT 6+3 ;
SELECT * FROM 
SELECT DISTINCT board FROM school; -- Gives all the list of distinct or different boards 
SELECT * FROM staff LIMIT 2; -- Displays only 2 rows

SELECT (first_name||' '||last_name) AS full_name FROM staff; -- Concating first and last name as full name

SELECT (first_name||' '||last_name) AS full_name , age, -- Here first and last name is displayed as "full_name"
  CASE  WHEN age >= 37 THEN 'SENIOR'
    WHEN age >= 32 AND age < 37 THEN 'JUNIOR'
    WHEN age < 32 THEN 'FRESHER'
  END AS "Employee Type"                               -- Here Whose case is satistified that will be displayed as "Employee Type"
FROM staff 
ORDER BY age;

SELECT * FROM staff;
SELECT * FROM school;



SELECT SC.school_id , ST.staff_id, (ST.first_name||' '||ST.last_name) as "Full Name", AD.street 
FROM school AS SC, staff AS ST, address_details AS AD 
WHERE SC.school_id = ST.school_id
AND   AD.address_id = ST.address_id
ORDER BY school_id;