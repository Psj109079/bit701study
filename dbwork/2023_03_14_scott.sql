-- emp ���̺� ��ü �÷� ��ȸ * = ���̺� ��ü �÷� ���
select * from emp;
-- emp ���̺� �ִ� ������ ������ ���(���� ������ �ѹ���)
select DISTINCT job from emp;
-- �÷��� ��Ī�� ����
select ename as "�����", job as "����" from emp;
-- as����, ��Ī�� ���� �߰��� ������ ���� �� " ���� ����
select ename "���� �����", job ���� from emp;
--����: empno �� 7369,7566 �ΰ��� ������ Ȯ��
select * from emp where empno = 7369 or empno = 7566;
-- SMITH,WARD �� ������ ��� (��Ī ���� ���� ���ڴ� ��� ''��)
select * from emp where ename = 'SMITH' or ename = 'WARD';
-- in ������ (or �����ڷ� ��ȸ�ϴ°�� in ���ε� ��ȸ ����)
select * from emp where ename in ('SMITH', 'WARD', 'SCOTT', 'FORD');
select * from emp where empno in (7369, 7654, 7788, 7876);
-- and �������� ��ȸ�ϴ� ���
select ename,job,sal,comm from emp where sal >= 1500 and sal <= 3000;
-- ���� sql���� between���� ��ȸ ����
select ename, job, sal, comm from emp where sal between 1500 and 3000;
-- ������ MANAGER�� ����� sal�� 2000 �̻��λ��
select * from emp where job = 'MANAGER' and sal >= 2000;
-- comm �� null �� ��츸 ���
select * from emp where comm is null;
-- comm �� null �� �ƴ� ��츸 ���
select * from emp where comm is not null;
-- ename �� A�� �����ϴ� ������ ��ȸ
select * from emp where ename like 'A%';
-- ename �� S�� ������ ������ ��ȸ
select * from emp where ename like '%S';
-- ename �� A �� S�� �����ϴ� ������ ��ȸ
select * from emp where ename like 'A%' or ename like 'S%';
-- ename �� 2��°�� 3��° ���ڰ� A�λ�� ��ȸ
select * from emp where ename like '_A%' or ename like '__A%';
-- job �� MANAGER �� ANALYST �� SAL �� 2500 �̻��� ����� ��ȸ
select * from emp where (job = 'MANAGER' or job = 'ANALYST') and SAL >= 2500;
-- in ���� ����
select * from emp where job in ('MANAGER', 'ANALYST') and sal >= 2500;
-- SCOTT �� ������ ���� ������ �޴� ����� ��ȸ (�������� - SUBQUERY)
select * from emp where sal = (select sal from emp where ename = 'SCOTT');
-- ALLEN �� ������ ���� ������ ���� ����� ��ȸ
select * from emp where job = (select job from emp where ename = 'ALLEN');
-- console �� ��� �� ���̺���� dual
-- ppt 48������ �����Լ� �� - �����Լ�
select abs(-6), abs(6) from dual; -- abs: ���밪, ������ ����� ���
select ceil(2.35), ceil(2.11), ceil(2) from dual; -- ������ �ø� ���� ��ȯ
select floor(2.35), floor(2.11) from dual; -- ������ ���� ���� ��ȯ
select round(2.356, 1), round(2.223, 2) from dual; -- �Ҽ��� n° �ڸ������(�ݿø�)
select trunc(2.356, 1), trunc(2.223, 2) from dual; -- �Ҽ��� n° �ڸ����� ����(����)
select round(235678, -1), round(235678, -2) from dual; -- 235680, 235700
select power(2, 3), power(3, 4) from dual; -- 8, 81 ����
select mod(7, 2), mod(10, 2) from dual; -- ������ ���ϱ� 1, 0

-- ppt 49������ �����Լ� �� - �����Լ�
select concat('JAVA', 'SPRING') from dual; -- ���ڿ� ��ġ��
-- ���ڿ��� ��ĥ��� || �� ����
select 'JAVA' || 'SPRING' from dual;
-- table emp�� �غ���
select ename || '���� ������ ' || job || '�Դϴ�' message from emp; -- message �� �÷���
select ename, job abc from emp;
--table emp �� �غ���
select ename || '���� ������ ' || sal || '���� �Դϴ�' abc from emp;
select initcap(ename) from emp; -- ù���ڸ� �빮�ڷ� ���
select upper(ename) ename, lower(ename) from emp; -- �빮��, �ҹ��ڷ� ��ȯ �� ���
-- lpad, rpad: Ư�� ���ڷ� ä���
select lpad('happy', 10, '*') from dual;
select rpad('happy', 10, '*') from dual;
select ename, lpad(sal, 10, '0') from emp;
-- substr: ���ڿ� ����
select substr('Happy Day', 3, 3), substr('Happy Day', -3, 3) from dual;
--             3��°���ں��� 3����          �ڿ��� 3�������� 3����
select rpad(substr(ename, 1, 2), 5, '*') ename from emp;
select substr(ename, 1, 2) || '***' ename from emp;
-- length ���� ���ϱ�
select ename || '���� ���� ���̴� ' || length(ename) || '�����Դϴ�' �޼��� from emp;
-- replace: ��ġ
select replace('Hello Kitty', 't', '*') from dual;
-- instr: Ư�����ڿ��� ��ġ ���ϱ�
select instr('Good Day', 'Day') from dual; -- 6: 6��°���� �߰ߵ�
select instr('Good Day', 'happy') from dual; -- 0: ������� 0

select '*' || trim('      he llo        ') || '*' from dual; -- ���� ���� ����
select '*' || ltrim('      he llo        ') || '*' from dual; -- ���� ���鸸 ����
select '*' || rtrim('      he llo        ') || '*' from dual; -- ������ ���鸸 ����

-- sysdate = ���糯¥ ���ϱ�
select sysdate from dual;
-- ���� ��¥ ���ϱ�
select sysdate + 1 from dual;
-- ������ ��
select sysdate + 7 from dual;
select sysdate + 359 from dual;

select to_char(sysdate, 'yyyy-mm-dd') today from dual; -- 2023-03-14
select to_char(sysdate, 'yyyy-mm-dd am hh:mi;ss') today from dual; -- 2023-03-14 ���� 03:22:04
select to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss') today from dual; -- 2023-03-14 15:22:04
select to_char(sysdate, 'YYYY-MM-DD hh24:mi:ss') today from dual;
select to_char(2345678, 'L999,999,999')from dual; -- ���� ȭ�� ������ ���� ��2,345,678
select to_char(2345678, 'L000,000,000')from dual;
-- 9 = �ڸ����� ���� ������ ��Ÿ���� ����
-- 0 = �ڸ����� ���� ������ 0����ǥ��
select to_char(2345678, '$999,999,999')from dual; -- �޷� $2,345,678
select to_char(2.3, '0.00') from dual; -- 2.30 ���� �ڸ��� 0���� ä����

-- NVL: null�ϰ�� Ư�������� ���(Mysql ������ ifnull)
select nvl(mgr, 1000), nvl(comm, 0) from emp;
select sal + comm from emp; -- ���갪�� �ϳ��� null �ϰ�� ������� null
-- comm �� null �ϰ�� 10���� ���
select sal + nvl(comm, 10) pay from emp;
-- decode: ���� ���� ���� �ٸ� �� ���
select ename, deptno, decode(deptno,10,'����',20,'������',30,'��⵵',40,'���ֵ�') city from emp;

-- order ������� ���
select ename, sal from emp order by ename asc; -- ename �� ��������(asc ��������)
select ename, sal from emp order by sal desc; -- sal �� ��������

-- ���� �������� ���, ���� �����ϰ�� ������ ��������
select ename, job, sal from emp order by job, sal desc;
-- sal �� �������� ��½� sal �� 3��° ����ϹǷ� ����ȣ 3���� ����
select ename, job, sal from emp order by 3;

-- ���� 1500 - 3000 ������ ����ϴµ� �̸��� ��������
select ename, sal from emp where sal between 1500 and 3000 order by ename;

-- �׷��Լ�: ppt 57������
-- count, max, min, sum, avg
select count(*) from emp; -- emp �� ������ ����
select max(sal) from emp; -- �ְ�޿�
select min(sal) from emp; -- �����޿�
select sum(sal) from emp; -- �޿��� �հ�
select round(avg(sal), -1) from emp; -- �޿��� ���, 1�� �������� �ݿø�

-- group �� �Լ� ����
-- �� ������ �ο����� sal �� ����� ���غ���
select job ����, count(*) �ο���, round(avg(sal), -1) ��տ��� from emp group by job;

-- ���� ���������� �ο����� ���� �ͺ��� ���
select job ����, count(*) �ο���, round(avg(sal), -1) ��տ��� from emp group by job group by job order by 2;

-- ���� ���������� ������ �ο����� 3�� �̻��� �����͸� ���
-- �׷��Լ��� �̿��ؼ� ������ ��Ÿ������ having ����
select job ����, count(*) �ο���, round(avg(sal), -1) ��տ��� from emp group by job group by job having count(*) >= 3 order by 2;

-- �� �������� �ο����� �ְ���, ���������� ���(������ ��������)
select job ����, count(*) �ο���, max(sal) �ְ���, min(sal) �������� from emp group by job order by job; -- job == �÷���ȣ 1 == ���� 

-- ���� �������� �ݾ׾տ� ȭ������� ���̰� 3�ڸ� �ĸ� �߰�
select job ����, count(*) �ο���, to_Char(max(sal), 'L999,999') �ְ���, to_char(min(sal), 'L999,999') �������� from emp group by job order by job;

-- 1. emp���̺��� ename a�� s�� �����ϴ»�� ���(��ҹ��� �������)
select * from emp where lower(ename) like 'a%' or lower(ename) like 's%';
-- 2. emp���̺��� ename ���� �ι�° ���ڰ� 'A' �λ�� ���
select * from emp where ename like '_A%';
-- 3. job ���� ���� �������ϰ�� �ѹ����� ����Ͻÿ�
select job from emp group by job;
select distinct job from emp;
-- 4. job �������� �ο����� ���Ͻÿ�
select job ����, count(*) �ο� from emp group by job;
-- 5. job �������� sal �� ��ձ޿��� ���Ͻÿ�
select job ����, round(avg(sal), 0) ��ձ޿� from emp group by job;
-- 6. job �������� sal �� �ִ밪�� �ּҰ��� ���Ͻÿ�
select job ����, max(sal) �ִ�, min(sal) �ּ� from emp group by job;
-- 7. deptno �� 10�ΰ�� 'ȫ����'
-- 20 �ΰ�� '���ߺ�' 30�ΰ�� '������' �μ��� ���Ͽ�
-- ename, �μ� �� ����Ͻÿ�
select ename, decode(deptno,10,'ȫ����',20,'���ߺ�',30,'������') �μ� from emp;
-- 8. �޿�(sal)�� sal �� ��պ��� �� ���� ����� ename �� sal �� ����Ͻÿ�
select ename, sal from emp where sal > (select avg(sal) from emp);
-- 9. hiredate ���� ���� 5���� ����� ename �� hiredate �� ����Ͻÿ�
select ename, hiredate from emp where substr(hiredate, 5, 1) = 5;
select ename, hiredate from emp where to_char(hiredate, 'mm') = 5;
-- 10. SCOTT �� �޿��� �����ϰų� �� ���� �޴� ������ �޿��� ����϶�
select ename, sal from emp where sal >= (select sal from emp where ename = 'SCOTT');









