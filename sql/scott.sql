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

--5��

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

select * from emp where job in ('MANAGER', 'SALESMAN', 'CLERK'); --or ��

select * from emp where job not in ('MANAGER', 'SALESMAN', 'CLERK'); --!= , <>, ^=��

select ename, sal*12+nvl(comm, 0) --null���� 0���� �ٲ���
from emp;

select ename, sal
from emp
where sal between 800 and 3000;

select ename, sal
from emp
where sal >= 800
and sal <= 3000;

select ename, sal
from emp
WHERE ename LIKE 'S%'; --ù���ڰ� S�� ��� ã��

select ename, sal
from emp
WHERE ename LIKE '_L%'; --�̸��� �ι�° ���ڰ� L�� ��� ã��

select ename, sal
from emp
where ename like '%AM%'; --�̸� �߿� AM�� �� �ִ� ��� ã��

select ename, sal
from emp
where ename not like '%AM%'; --�̸� �߿� AM�� �� ��� ���� ��� ã��

select ename, sal, job
from emp
where job not like 'SALE%';

select ename, job, COMM
from emp
where comm is null; --null�� ã�� ���� is�� ���

select ename, job, comm
from emp
where comm is not null;

select EMPNO, ENAME, SAL, DEPTNO
from emp
where DEPTNO = 10
UNION --������
select EMPNO, ENAME, SAL, DEPTNO
from emp
where DEPTNO = 20;

select EMPNO, ENAME, SAL, DEPTNO
from emp
INTERSECT --������
select EMPNO, ENAME, SAL, DEPTNO
from emp
where DEPTNO = 20; --��� ���� ����

--6��
select ename, lower(ename), initcap(ename), length(ename) -- lower �ҹ��ڷ� ��ȯ, initcap ù ���ڸ� �빮��, length ���� ����
from emp;

select ename, lengthb(ename), lengthb('�λ�����б�') -- lengthb�� ������ 1����Ʈ �ѱ��� 2����Ʈ
from emp;

select ename, substr(ename, 1), substr(ename,2,3) --(enmae,2,3) �ι�° ���� ���� 3���ڸ� ���
from emp
where substr(ename,2,1) = 'L';

select instr('HELLO!HELLO', 'L'),
       instr('HELLO!HELLO', 'H',6)
from dual; --����Ŭ���� ���� ���̺� (���� ���̺�)

select replace('010-1234-5678', '-', ' '), --replace ã�� �ٲٱ�
       replace('010-1234-5678', '-'),
       replace('010-1234-5678', '-', '.')
from dual;

select lpad('oracle',10,'#'),
       rpad('oracle',10,' ')
from dual;

select concat(empno,ename),
       empno || ename,
       empno || '_' ||ename,
       concat('_',concat(empno,ename))
from emp;

select round(1234.5678) as round,
       round(1234.5678, 0) as round_0,
       round(1234.5678, 1) as round_1, --��° �ڸ����� �ݿø� �ϰ� �Ҽ��� ���ڸ� ��
       round(1234.5678, 2) as round_2, --����° �ڸ����� �ݿø� �ϰ� �Ҽ��� ���ڸ� ��
       round(1234.5678, -1) as round_3,
       round(1234.5678, -2) as round_4
from dual;

select trunc(1234.5678) as trunc, --����
       trunc(1234.5678, 0) as trunc_0,
       trunc(1234.5678, 1) as trunc_1,
       trunc(1234.5678, 2) as trunc_2,
       trunc(1234.5678, -1) as trunc_3,
       trunc(1234.5678, -2) as trunc_4
from dual;

select ceil(1.1),
       ceil(1.6),
       floor(1.1),
       floor(1.6),
       ceil(-1.1),
       floor(-1.1)
from dual;

select mod(10,2), --������
       mod(11,2)
from dual;

select abs(1), --���밪
       abs(-1)
from dual;

select sysdate, sysdate+1, sysdate-1, (sysdate+100)-1,
       add_months(sysdate,3),add_months(sysdate,-3),add_months(sysdate,120)
from dual;

select empno, ename, hiredate,
       add_months(hiredate,360) as work10year --add_months(������,������)
from emp;

select empno, ename, hiredate
from emp
where add_months(hiredate,480) > sysdate;