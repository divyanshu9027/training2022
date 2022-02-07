--Display all the information of the EMP table?
 SELECT 
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM
    emp;
 --Display unique Jobs from EMP table?
 SELECT
    DISTINCT job
 FROM
    emp;
    
 --List the emps in the asc order of their Salaries?
 SELECT
    ename,sal
FROM
    emp
ORDER BY
    Sal;
 --List the details of the emps in asc order of the Dptnos and desc of Jobs?
 SELECT
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM
    emp
ORDER BY
    deptno,job desc;
 
 --Display all the unique job groups in the descending order?
  SELECT
    DISTINCT job
 FROM
    emp
 ORDER BY
    job desc;
 
 --Display all the details of all ‘Mgrs’
  SELECT
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM
    emp
WHERE 
    job='MANAGER';
    
 
 --List the emps who joined before 1981
   SELECT
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM
    emp
WHERE
    hiredate<'01-01-1981';
 
 --List the Empno, Ename, Sal, Daily sal of all emps in the asc order of Annsal
 SELECT
    empno,ename,round(sal/30,2)
FROM
    emp
ORDER BY
    sal;
 --Display the Empno, Ename, job, Hiredate, Exp of all Mgrs
   SELECT empno, ename, job, hiredate,round((sysdate-hiredate)/365,2) 
   FROM emp 
   WHERE job='MANAGER';
    
 
 --List the Empno, Ename, Sal, Exp of all emps working for Mgr 7369
SELECT empno, ename, job, hiredate,round((sysdate-hiredate)/365,2)
FROM
    emp
WHERE 
    empno='7369';
    
 --Display all the details of the emps whose Comm  Is more than their Sal
SELECT
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM
    emp
WHERE
    comm>sal;
 
 --List the emps along with their Exp and Daily Sal is more than Rs 100
  SELECT
    empno,ename,round(sal/30,2),round((sysdate-hiredate)/365,2)
FROM
    emp
WHERE
    round(sal/30,2)>100;
 
 --List the emps who are either ‘CLERK’ or ‘ANALYST’ in the Desc order
 SELECT
    empno,ename,sal
FROM 
    emp
WHERE
    job='CLERK' OR job='ANALYST'
ORDER BY 
    job ;
 --List the emps who joined on 1-MAY-81,3-DEC-81,17-DEC-81,19-JAN-80 in asc order of seniority
 SELECT empno, ename, sal, deptno, hiredate 
 FROM emp 
 WHERE hiredate = '01-MAY-1981'or hiredate = '03-DEC-1981' or hiredate = '17-DEC-1981' or hiredate = '19-JAN-1980' ORDER BY round((sysdate-hiredate)/365,2);
 --List the emp who are working for the Deptno 10 or20
 SELECT
    empno,ename,deptno
FROM
    emp
WHERE 
    deptno in (10,20);  
 --List the emps who are joined in the year 81
   SELECT
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM
    emp
WHERE
    hiredate BETWEEN '01-01-1981'AND '31-12-1981';
 
 --List the emps Who Annual sal ranging from 22000 and 45000
 SELECT
    empno,ename,sal*12
FROM 
    emp
WHERE
    sal*12>=22000 and sal*12<=45000;
 --List the Enames those are having five characters in their Names
 SELECT ename
 FROM emp
 WHERE ename LIKE '_____';
 --List the Enames those are starting with ‘S’ and with five characters
 SELECT ename
 FROM emp
 WHERE ename LIKE 'S____'; 
 --List the emps those are having four chars and third character must be ‘r’
  SELECT ename
 FROM emp
 WHERE ename LIKE '__R_'; 
 --List the Five character names starting with ‘S’ and ending with ‘H’
   SELECT ename
 FROM emp
 WHERE ename LIKE 'S___H'; 
 --List the emps who joined in January
 SELECT empno,ename 
 FROM emp 
 WHERE hiredate LIKE '__-01-__';
 
 --List the emps whose names having a character set ‘ll’ together
 SELECT
    empno,ename
FROM
    emp
WHERE 
    ename LIKE '_LL__';
 --List the emps who does not belong to Deptno 20
 SELECT
    empno,ename,deptno
FROM
    emp
WHERE 
     deptno!=20;
 --List all the emps except ‘PRESIDENT’ & ‘MGR” in asc order of Salaries
  SELECT
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM
    emp
WHERE 
    job!='PRESIDENT' AND job!='MANAGER'
ORDER BY sal;    
 --List the emps whose Empno not starting with digit78
  SELECT
    empno,ename
FROM
    emp
WHERE 
    empno NOT LIKE '78%';
 --List the emps who are working under ‘MGR’
   SELECT
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM
    emp
WHERE 
     job='MANAGER';
 
 
 --List the emps who joined in any year but not belongs to the month of March
  SELECT empno,ename 
 FROM emp 
 WHERE hiredate not LIKE '__-03-__';
 --List all the Clerks of Deptno 20
 SELECT
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM
    emp
WHERE 
    job='CLERK' AND deptno=20;

 --List the emps of Deptno 30 or 10 joined in the year 1981
  SELECT
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM
    emp
WHERE 
    deptno IN(10,30) AND hiredate>'01-01-1981'AND hiredate<'31-12-1981';
 --Display the details of SMITH
 SELECT
    empno,ename,job,mgr,hiredate,sal,comm,deptno,branchno
FROM
    emp
WHERE 
    ename='SMITH'; 
 --Display the location of SMITH
 SELECT location from branch 
 WHERE branchno = (select branchno from emp where ename='SMITH');