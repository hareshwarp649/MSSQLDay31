--Uc1 create database
create database emp
use emp

--Uc2 create table
create table emp_Pay(
id int  identity(1,1) primary key,
Name varchar(200) not null,
salary float,
StartDate Date)

--Uc3 create CRUD Operation

insert into emp_Pay values ('Shivaji',12000,'2018-08-15')
insert into emp_Pay values ('Shahaji',15000,'2020-05-18')
insert into emp_Pay values ('Vande',18000,'2021-03-14')
insert into emp_Pay values ('Hari',22000,'2020-02-25')
insert into emp_Pay values ('Jay',32000,'2017-12-20')

--Uc4 added payroll service database
select * from emp_Pay

--Uc5 joined particular data range from pay roll service
select salary from emp_Pay where name='Shivaji'
select salary from emp_Pay where StartDate between CAST ('2021-01-01' as date) and GETDATE()

--Uc6 Add gender and update the row
alter table emp_Pay ADD gender varchar(10)
update emp_Pay set gender = 'F' where id=1;
update emp_Pay set gender ='F' where id=10;
update emp_Pay set gender ='M' where id=3;

--Uc7 find sum,avg, min, max, and number of male and female emp
Select * from emp_Pay;
Select SUM(SALARY) as TotalSalary WHERE gender ='M'
Select MAX(SALARY) FROM emp_Pay WHERE gender ='M'
Select AVG(SALARY) FROM emp_Pay WHERE gender ='M'
Select COUNT(SALARY) FROM emp_Pay WHERE gender ='M'

--Uc8 Adding Employee Additional Information
ALTER TABLE emp_Pay ADD PhoneNo BIGINT;
UPDATE emp_Pay SET PhoneNo = 8956418356 WHERE id = 320;
ALTER table emp_Pay ADD EmployeeAddress VARCHAR(100) NOT NULL DEFAULT 'INDIA';
ALTER TABLE emp_Pay ADD Department VARCHAR(30) NOT NULL DEFAULT 'Research';
UPDATE emp_Pay SET Department = 'Science' WHERE id = 210;
Select * FROM emp_Pay

--Uc9  ADD COLUMN FOT DEDUCTION TAXABLE PAY BASIC PAY NET PAY
Alter Table emp_Pay Add Basic_Bay BIGINT ;
Alter Table emp_Pay Add Deduction BIGINT;
Alter Table emp_Pay Add TaxablePay FLOAT NOT NULL DEFAULT 0.00;
ALTER TABLE emp_Pay ADD IncomeTax FLOAT NOT NULL DEFAULT 0.00;
ALTER TABLE emp_Pay ADD NetPay FLOAT NOT NULL DEFAULT 0.00;

--UC10 Adding Department of Terisa as Sales & Marketing Both
update emp_Pay set Department = 'Sales' where NAME = 'Terisa';
insert into emp_Pay
values
('Terisa',2000000,'2022-03-21','F',125251251252,'INDIA', 'Marketing',NULL,NUll,0.00,0.00,0.00);
select * from emp_Pay
delete from emp_Pay where id =430