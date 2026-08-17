-- Question 1
SELECT * 
FROM employee 
WHERE gender = 'Female';


-- Question 2
SELECT * 
FROM employee 
WHERE name LIKE 'P%';


-- Question 3
SELECT job_grade, MAX(salary) AS max_salary 
FROM employee 
GROUP BY job_grade;


-- Question 4
SELECT 
    CASE 
        WHEN gender = 'Male' THEN 'Mr. '
        WHEN gender = 'Female' THEN 'Miss '
    END 
    || UPPER(name)
    || ' with job grade ' || job_grade
    || ' earns RM ' || salary
    || ' monthly and yearly income is RM ' || (salary * 12)
    || '.' AS result
FROM employee 
WHERE name IN ('Peter', 'Polly');