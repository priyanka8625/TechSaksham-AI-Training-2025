-------------------------------------------------
-- LOGICAL OPERATORS
-------------------------------------------------


USE HR;

-- BETWEEN 
SELECT * FROM EMP WHERE SAL>=1000 AND SAL<=2500;
SELECT * FROM EMP WHERE SAL BETWEEN 1000 AND 2500;
SELECT * FROM EMP WHERE HIRE_DATE BETWEEN '1981-02-20' AND '1981-02-22';