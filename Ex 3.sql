---1:

select count(codeP) , empnum from participation
group by (empNum);
---2:
select count(codeP),(empnum) from participation
group by(empNum)
having(count(codeP) >2);
--3:
select count(codeP) from participation p , emp e
where (p.empnum = e.empnum) and(e.salary between 600 and 1000);*/
---4:
select count(codeP) from participation p , emp e
where (p.empNum=e.empNum)and(e.empNum= Max(select COUNT(empNum) group by (deptnum));

---5:
/*
select  e.managerID ,count( DISTINCT(p.codeP)) AS numberofprojects from PARTICIPATION p , EMP e
where e.managerID=p.empnum 
group by managerID*/
---6:
/*
select e.managerID AS manger, count(DISTINCT(p.codep) )AS numberofprojects from Participation p , emp e
where e.managerID=p.empnum
group by managerID
HAVING(count(DISTINCT(p.codep))<2 )
where((
select count(empnum) from emp e
where 
)>=5)*/
---7:
select codep , count(Distinct(empnum))As numberofemployes from Participation 
group by codep ;
---8:
select codep , count(Distinct(empnum))As numberofemployes from Participation 
group by codep
having(count(distinct(empnum))>2);
---9:
select p.codep , count(Distinct(empnum))As numberofemployes , nameP from Participation p , project pr
where (pr.nameP like 'A%' and pr.codep=p.codep)
group by (p.codep , pr.nameP) ;
---10:
select pr.codep , count(Distinct(empnum))As numberofemployes , nameP from Participation p ,project pr
where (pr.nameP like '%A%' and pr.nameP like '%B%' and pr.codep=p.codep)
group by (pr.codep , pr.nameP)  
HAVING(count(Distinct(empnum))<3)