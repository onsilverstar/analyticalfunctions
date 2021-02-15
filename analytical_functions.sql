
select DEPTNO, EMPNO, ENAME , SAL, rank() over(order by SAL) as row_rank from employees4;
select DEPTNO, EMPNO, ENAME , SAL, dense_rank() over(order by SAL) as row_dense_rank from employees4;
select DEPTNO, EMPNO, ENAME , SAL, LAG(sal, 1, 0) OVER (ORDER BY sal) AS sal_prev, SAL - LAG(sal, 1, 0) OVER (ORDER BY sal) AS sal_diff from employees4;
select DEPTNO, EMPNO, ENAME , SAL, LEAD(sal, 1, 0) OVER (PARTITION BY deptno ORDER BY sal) AS sal_next
FROM   employees4;