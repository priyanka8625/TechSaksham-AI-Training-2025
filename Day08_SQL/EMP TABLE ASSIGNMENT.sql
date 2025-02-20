CREATE TABLE EMP (
	EMPID INT,
    ENAME VARCHAR(255),
    JOB VARCHAR(255),
    HIREDATE DATE,
    SALARY DOUBLE
);

INSERT INTO EMP (EMPID, ENAME, JOB, HIREDATE, SALARY) VALUES
(101, 'John Doe', 'Manager', '2020-05-15', 75000),
(102, 'Jane Smith', 'Analyst', '2021-08-20', 65000),
(103, 'Robert Brown', 'Developer', '2019-11-10', 55000),
(104, 'Emily Davis', 'HR', '2018-06-25', 48000),
(105, 'Michael Johnson', 'Sales Executive', '2022-01-15', 50000),
(106, 'Sarah White', 'Consultant', '2017-09-30', 70000),
(107, 'David Miller', 'Clerk', '2023-04-10', 40000),
(108, 'Chris Wilson', 'Project Manager', '2016-12-05', 90000);

SELECT * FROM EMP;

/*
write a query that retrieves the following columns from the EMP table:
•	JOB
•	ENAME
•	SAL
•	HIREDATE
*/
SELECT JOB, ENAME, SALARY, HIREDATE FROM EMP;

/*
write a query that retrieves the following columns (in uppercase) from the EMP table:
•	ENAME as EMPLOYEE_NAME
•	JOB as JOB_TITLE
•	SAL as MONTHLY_SALARY
*/
SELECT ENAME EMPLOYEE_NAME, JOB AS JOB_TITLE, SALARY MONTHLY_SALARY FROM EMP;

/*
Please write a query that displays the top 5 salaries in descending order. 
In your result return all columns from the EMP table.
*/
SELECT * FROM EMP ORDER BY SALARY DESC LIMIT 5;