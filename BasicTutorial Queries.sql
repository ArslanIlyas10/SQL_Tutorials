/* In these queries, you will be able 
to learn how to create tables 
and run different basic queries 
on them with easy to understandable examples */

Create table EmployeeDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

Create table EmplyeeSalary
(EmployeeID int,
JobtTitle varchar(50),
Salary int
)

insert into EmployeeDemographics values 
(1001,'Ali','Asghar',20,'Male'),
(1002,'Ibrahim','Ali',18,'Male'),
(1003,'Raza','Abbas',18,'Male'),
(1004,'Samiya','Ali',21,'Female'),
(1005,'Taha','Mobeen',22,'Male'),
(1006,'Saniya','Naz',23,'Female'),
(1007,'Iqra','Akram',22,'Female'),
(1008,'Haris','Waseem',21,'Male'),
(1009,'Zubair','Waqar',22,'Male'),
(1011,'Zampa','Adam',23,'Male')

insert into EmployeeDemographics(FirstName,LastName,Age,Gender) values 
('Amjad','Ali',24,'Male')

insert into EmplyeeSalary values
(1001,'Salesman',25000),
(1002,'Manager',45000),
(1003,'Accountant',35000),
(1004,'Assistant',25000),
(1005,'Consultant',40000),
(1006,'HR',50000),
(1007,'Regional Manager',65000),
(1008,'Product Manager',55000),
(1009,'Accountant',45000),
(1010,'Salesman',25000)

insert into EmplyeeSalary (JobtTitle, Salary) values
('HR Intern',26000)

select * 
from EmployeeDemographics
select * 
from EmplyeeSalary
select Top 5 *
from EmployeeDemographics
select distinct(Gender)
from EmployeeDemographics
select COUNT (LastName) AS LastNameCount
from EmployeeDemographics
select MAX (Salary) As MaxSalary
from EmplyeeSalary
select Min (Salary) As MinSalary
from EmplyeeSalary
select AVG(Salary) As AvgSalary
from EmplyeeSalary
select *
from [BasicTutorial ].dbo.EmplyeeSalary

/* Where Statement 
(=, <>, <, > , AND, OR, Like, null, not null, in) */

Select * 
from EmployeeDemographics
where FirstName='Ali'

Select * 
from EmployeeDemographics
where FirstName <>'Ali'

Select * 
from EmployeeDemographics
where Age <=22 

Select * 
from EmployeeDemographics 
where age= 22 and gender='Female'

Select * 
from EmplyeeSalary 
where Salary>25000 Or JobtTitle='Accountant'

Select * 
from EmplyeeSalary
where JobtTitle like '%r%'

Select * 
from EmplyeeSalary
where JobtTitle is NOT Null 

Select * 
from EmployeeDemographics
where FirstName in ('Ali', 'Taha')

/* Group By & Order By */

select Gender, COUNT(Gender)
from EmployeeDemographics
group by Gender

select Gender,AGE, COUNT(Gender)
from EmployeeDemographics
where age <=21
group by Gender,Age

select Gender,AGE, COUNT(Gender) as GenderCount
from EmployeeDemographics
where age <=21
group by Gender,Age
order by GenderCount Desc

select * 
from EmployeeDemographics
order by Age, Gender

select * 
from EmployeeDemographics
order by Age Desc, Gender Desc
