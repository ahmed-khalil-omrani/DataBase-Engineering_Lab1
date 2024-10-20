
---1:

select deptnum , deptname from dept
order by deptname; 

---2:
select EMPNUM from emp;

---3:
select empnum , empname , managerID from emp 
where deptnum=20;

---4:


select * from project
order by codeP;*/
---5:
select e.empnum , e.empname , namep from  PROJECT p, Participation par , emp e
where (p.CODEP=par.CODEP)and(par.empNum=e.empNUM)
GROUP by(e.empname , e.empnum , namep);

select p.codeP , e.empnum , e.empname from emp e , project p
GROUP BY(e.empnum , e.empname);

---6:

select job from emp 
where salary>13000;
---7:

select DISTINCT(job) from emp;

---8:

select empname from emp 
where salary<commission
---9:

select empname from emp
where commission=null;
---10:

select empName from emp
where empname like'_E%';
---11:

select DISTINCT(deptnum) from emp
where commission is not null;
---12:

select empname from emp 
where salary between 6000 and 10000;
---13: 

select empname from emp
where empNum not in (select empnum from Participation);

---14:
---15: