-------------------------------------------------
-- LOGICAL OPERATORS
-------------------------------------------------


USE HR;

-- BETWEEN 
SELECT * FROM EMP WHERE SAL>=1000 AND SAL<=2500;
SELECT * FROM EMP WHERE SAL BETWEEN 1000 AND 2500;
SELECT * FROM EMP WHERE HIRE_DATE BETWEEN '1981-02-20' AND '1981-02-22';

-- OR
SELECT * FROM EMP WHERE JOB='CLERK' OR JOB='SALESMAN';
SELECT * FROM EMP WHERE JOB IN ('CLERK', 'SALESMAN');
SELECT * FROM EMP WHERE SAL IN (800, 1250, 1600);

-- use parantheses to override operator precedance
SELECT * FROM EMP 
WHERE 
	SAL BETWEEN 1000 AND 3000
    OR JOB IN ('SALESMAN', 'CLERK')
    AND COMM = 1400;
    
-- This is equivalent to using the = operator
SELECT * FROM COUNTRIES.COUNTRIES WHERE NAME LIKE 'AUSTRALIA;';

-- Searches for records where the name contains 'British'
SELECT * FROM COUNTRIES.COUNTRIES WHERE NAME LIKE '%BRITISH%
