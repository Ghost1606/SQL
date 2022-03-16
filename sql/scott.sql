select all job, deptno
from emp;

select DISTINCT job, deptno
from emp;

select ename, sal, sal*12+comm, comm
from emp;

SELECT ename, sal, sal*12+comm as annsal, comm
from emp;

select * from emp order by sal;

select * from emp order by sal desc;

select * from emp order by deptno asc, sal desc;

--5Àå

select * from emp where deptno = 30;

select * from emp where deptno = 30 and job = 'SALESMAN';

select * from emp where deptno = 30 or job = 'CLERK';

select * from emp where empno = 7499 and deptno = 30;

select * from emp where deptno = 20 or job = 'SALESMAN';

select * from emp where sal * 12 = 36000;

select * from emp where sal >= 3000;

select * from emp where ename >= 'F';

select * from emp where ename <= 'FORZ';

select * from emp where sal != 3000;

select * from emp where not sal = 3000;

select * from emp where job in ('MANAGER', 'SALESMAN', 'CLERK'); --or ¹®

select * from emp where job not in ('MANAGER', 'SALESMAN', 'CLERK'); --!= , <>, ^=¹®
