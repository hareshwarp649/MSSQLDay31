--Uc1 create database

create database Address_Book1
use Address_Book1

--Uc1 create table
create table AddreBook1(
FirstName varchar(20),
LastName varchar(20),
Address varchar(20),
City varchar(20),
State varchar(20),
Zip BIGINT,
PhoneNumber BIGINT);

--UC-3-INSERT_NEW_CONTACT_IN_ADDRESS_BOOK
Insert into AddreBook1(FirstName,LastName,Address,City,State,Zip,PhoneNumber)
values ('Shivaji','Deshpande','Nanded','dhule','Karnatak','897670','7865453456');
Select * from AddreBook1
alter table AddreBook1 add Email varchar(222)

--UC4-Ability To Edit Existing Contact
update  AddreBook1 set zip=442565 where FirstName='nikita';
Select * from AddreBook1

--Uc5-Delete record from Table
delete from AddreBook1 where FirstName='gaurav';
Select * from AddreBook1

--Uc6-Retrive record base on City or State
select * from AddreBook1 where city='Nashik' AND state='Maharashtra'
select * from AddreBook1 where city='Tango' or state='Karnatak'

--Uc7-Calculate the size of the record by state 
select count(city) from AddreBook1;
select count(state) from AddreBook1;

--Uc8-Retrive Record based on City
select city from AddreBook1 order by FirstName;

--Uc9-Adding Type of contact
alter table AddreBook1 add bookType varchar(20);
Select * from AddreBook1

update AddreBook1 set bookType ='myself' where FirstName='Vidhya'; 
update AddreBook1 set bookType ='friend' where FirstName='Devidas';
update AddreBook1 set bookType ='brother' where FirstName='Namdev';

--Uc10--
select count(Type) from AddreBook1;


--UC-11-Ability To Add Person To Both Family And Friend
insert into AddreBook1(FirstName)values ('shrawani')
Select * from AddreBook1
update AddreBook1 set Type ='sis' where FirstName='shrawani';
update AddreBook1 set Type ='ybrother' where FirstName='agastya';
