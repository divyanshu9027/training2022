-- SELECT ALL COLUMNS FROM EMP

SELECT
    EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO, BRANCHNO
FROM
    EMP;

-- DISPLAY ALL EMPLOYEES WORKING IN DEPT 10 TO 20

SELECT
    EMPNO, ENAME, DEPTNO
FROM
    EMP
WHERE
    DEPTNO>=10 AND DEPTNO<=20; -- 0.023 SECONDS

SELECT
    EMPNO, ENAME, DEPTNO
FROM
    EMP
WHERE
    DEPTNO IN (10,20); -- 0.004 SECONDS

-- DISPLAY ALL EMP NOT WORKING IN DEPT 10 AND 20

SELECT
    EMPNO, ENAME, DEPTNO
FROM
    EMP
WHERE
    DEPTNO!=10 AND DEPTNO!=20; -- 0.08 SECONDS

SELECT
    EMPNO, ENAME, DEPTNO
FROM 
    EMP
WHERE
    DEPTNO NOT IN (10,20); -- 0.009 SECONDS

-- DISPLAY ALL EMP NOT WORKING IN ANY DEPT
SELECT 
    EMPNO, ENAME, DEPTNO
FROM
    EMP
WHERE
    DEPTNO NOT IN (10,20,30)
ORDER BY
    DEPTNO; --WRONG RESULT

SELECT
    EMPNO, ENAME, DEPTNO
FROM
    EMP
WHERE
    DEPTNO IS NULL; -- RIGTH

-- Display employee no,name,comm working department no 30 and earning some commission
SELECT
    EMPNO, ENAME, COMM, DEPTNO
FROM
    EMP
WHERE
    DEPTNO = 30 AND COMM > 0
ORDER BY
    COMM;

-- Display all employees not earning any commission
SELECT
    EMPNO, ENAME, COMM, DEPTNO
FROM 
    EMP
WHERE
    COMM = 0 OR COMM IS NULL;

-- Display all employees earning salary in range 1000 to 3000 including boundry values
SELECT
    EMPNO, ENAME, SAL, DEPTNO
FROM
    EMP
WHERE
    SAL BETWEEN 1000 AND 3000
ORDER BY
    SAL;

-- Display all employees earning salary not in range 1000 to 3000
SELECT
    EMPNO, ENAME, SAL, DEPTNO
FROM
    EMP
WHERE
    SAL NOT BETWEEN 1000 AND 3000
ORDER BY
    SAL;

-- Display all employees earning 5000 salary
SELECT
    EMPNO, ENAME, SAL, DEPTNO
FROM
    EMP
WHERE
    SAL=5000;

-- Display all employees NOT earning 5000salary 

SELECT
    EMPNO, ENAME, SAL, DEPTNO
FROM
    EMP
WHERE
    SAL!=5000
ORDER BY 
    SAL;

-- DISPLAY EMP NAMED SMITH
SELECT
    EMPNO, ENAME
FROM
    EMP
WHERE
    ENAME='SMITH';

-- Display all details of EMPLOYEE who's name starts with S

SELECT
    EMPNO, ENAME, SAL, COMM, DEPTNO, HIREDATE, BRANCHNO
FROM
    emp
WHERE
    ENAME LIKE 'S%';

-- Display all details of EMPLOYEE who's name DOESNT starts with S

SELECT
    EMPNO, ENAME, SAL, COMM, DEPTNO, HIREDATE, BRANCHNO
FROM
    EMP
WHERE
    ENAME NOT LIKE 'S%';

-- Display all details of EMPLOYEE who's name ends with S

SELECT
    EMPNO, ENAME, SAL, COMM, DEPTNO, HIREDATE, BRANCHNO
FROM
    EMP
WHERE
    ENAME LIKE '%S';

-- Display all details of EMPLOYEE who's name contains LL

SELECT
    EMPNO, ENAME, SAL, COMM, DEPTNO, HIREDATE, BRANCHNO
FROM
    EMP
WHERE
    ENAME LIKE '%LL%';

SELECT
    EMPNO, ENAME, SAL, COMM, DEPTNO, HIREDATE, BRANCHNO
FROM
    EMP
WHERE
    ENAME LIKE '_LL__';

-- Display all details of EMPLOYEE who's name contains _

SELECT
    EMPNO, ENAME, SAL, COMM, DEPTNO, HIREDATE, BRANCHNO
FROM
    EMP
WHERE
    ENAME LIKE '%\_%'; --WRONG, THERE IS NO IMPLICIT ESCAPE CHARACTER IN ORACLE

SELECT
    EMPNO, ENAME, SAL, COMM, DEPTNO, HIREDATE, BRANCHNO
FROM
    EMP
WHERE
    ENAME LIKE '%\_%' ESCAPE '\'; -- EXPLICIT ESCAPE CHARACTER DECLARATION
-- DISPLAY COUNT OF ALL EMP
SELECT 
    COUNT(*), COUNT(EMPNO), COUNT(DEPTNO) -- COUNT(*) COUNTS NULL VALUES, COUNT(DEPTNO) DOESN'T COUNT NULL VALUES
FROM
    EMP;

-- Display max,min,sum,avg salary of employees

SELECT
    MAX(SAL), MIN(SAL), SUM(SAL), AVG(SAL)
FROM
    EMP;

-- Display department wise count of employees

SELECT
    DEPTNO, COUNT(EMPNO)
FROM
    EMP
GROUP BY
    DEPTNO
ORDER BY
    COUNT(EMPNO);

-- Display job wise count of employees and order by job

SELECT
    JOB, COUNT(EMPNO)
FROM
    EMP
GROUP BY
    JOB
ORDER BY
    JOB;

SELECT
    JOB, COUNT(EMPNO)
FROM
    EMP
GROUP BY
    JOB
ORDER BY
    COUNT(EMPNO);

-- Display department wise max,min,avg salary

SELECT
    DEPTNO, MAX(SAL),MIN(SAL), ROUND(AVG(SAL),2)
FROM
    EMP
GROUP BY
    DEPTNO 
ORDER BY
    DEPTNO; --CASE DEPTNO WHEN NULL THEN 0 ELSE DEPTNO END

-- Display department wise max,min,avg salary where avg(sal)<2500

SELECT
    DEPTNO, MAX(SAL), MIN(SAL), ROUND(AVG(SAL),2)
FROM
    EMP
GROUP BY 
    DEPTNO
HAVING
    AVG(SAL)<2500;

-- USING NVL

SELECT
    empno,ename,sal,comm,sal+comm,sal+nvl(comm,0)
FROM
    emp
ORDER BY comm;

SELECT
    empno,ename,sal,comm,
    case
        when comm is null or comm=0
                then 100
        when comm >0
                then comm
    end as UPDATED_COMMISSION ,
    SAL+case
        when comm is null or comm=0
                then 100
        when comm >0
                then comm
    end as Total_salary
    
FROM 
    emp
ORDER BY
    comm;

-- SUB QUERIES

-- display the employees details such as empno,ename and sal, who are earning more than avg salary
SELECT
    EMPNO, ENAME, SAL
FROM
    EMP
WHERE
    SAL > (SELECT AVG(SAL) FROM EMP)
ORDER BY SAL;

-- Display empno,ename,deptno for all employees working in 'ACCOUNTING'

SELECT
    EMPNO, ENAME, DEPTNO
FROM
    EMP
WHERE
    DEPTNO = (SELECT DEPTNO FROM DEPT WHERE DNAME='ACCOUNTING');

-- Display empno,ename,deptno for all employees from department having employee earning salary > avg(salary)

SELECT 
    empno,ename,deptno
FROM
    emp
WHERE
    deptno IN (SELECT       deptno     FROM         emp
            WHERE         sal>(SELECT avg(sal) FROM emp))
            and
            sal>(SELECT avg(sal) FROM emp)
ORDER BY
    deptno;

-- Display empno,ename,deptno for employee earning greater than any from employees of dept 30

SELECT
    EMPNO, ENAME, DEPTNO, SAL 
FROM
    EMP
WHERE
    SAL > ANY(SELECT SAL FROM EMP WHERE DEPTNO = 30) AND DEPTNO !=30
ORDER BY SAL;