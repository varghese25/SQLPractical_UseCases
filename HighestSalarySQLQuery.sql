
select Top 1 EmpName,Salary as 'highest salary' from --/* -- Highest Salary Used SubQuery and used alise name for salary -*/
(
select Top 1 EmpName,Salary from Emp Order By Salary Desc
)
Emp Order By Salary Asc


select * from EMP --/* -- select table


select Top 1 EmpName,Salary as 'II highest salary' from --/* --II Highest Salary Used SubQuery and used alise name for salary -*/
(
select Top 2 EmpName,Salary from Emp Order By Salary Desc
)
Emp Order By Salary Asc