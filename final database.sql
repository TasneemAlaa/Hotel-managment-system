create database hotelFINALL21666

 

 

create table person (

NID int not null,

Fname varchar(20) not null,

Lname varchar(20),

City varchar (20),

Street varchar(20),

 

constraint Person_PK PRIMARY KEY (NID)

);

 

create table person_phone (

NID int not null,

Phone varchar(20) not null,

 

constraint phone_pk PRIMARY KEY (NID,Phone)

);

 

create table person_email (

NID int not null,

Email varchar(20) not null,

 

constraint ph_pk PRIMARY KEY (NID,Email)

);

 

create table Manager(

NID int not null,

Office_Num int,

 

constraint manager_PK PRIMARY KEY (NID)

);

 

create table Department (

Dept_ID int not null ,

Dept_Name varchar(13) ,

MGR_SSN int,

 

constraint Dept_PK primary key (Dept_ID)

);

 

create table Employee(

NID int not null,

salary int not null,

Dno int,

 

constraint employee_PK PRIMARY KEY (NID),

constraint employee_FK FOREIGN KEY (DNO) references Department (Dept_ID)

);

 

create table installment(

GID int,

confirmation_code int not null,

end_date varchar(10),

startt_date varchar(10),

detail varchar(25),

 

constraint installment_pk primary key(confirmation_code)

);

 

create table Guest(

NID int not null,

member_since varchar(20),

 

constraint guest_PK PRIMARY KEY (NID)

);

 

create table Chef(

NID int not null,

secret_recipe varchar(50),

 

constraint chef_PK PRIMARY KEY (NID)

);

 

Create table installment_loyalty_program(

LPname varchar(20),

Voucher varchar(10),

Exclusive_card varchar(20),

Code int,

constraint PLP_PK primary key(Exclusive_card, Code),

constraint PLP_FK foreign key (Code) references installment (confirmation_code)

);

 

create table facility(

Flocation varchar(20),

Fdiscription varchar(20),

Facility_name varchar(20),

FID int not null,

constraint Facility_PK primary key (FID)

);

 

create table restaurant(

RID int not null,

Rname varchar(20),

Rdetail varchar(20),

Nation_ID int,

 

constraint resturant_PK primary key (RID),

constraint rest_FK foreign key (Nation_ID) references Chef (NID)

);

 

create table room(

Room_ID int not null,

Rfloor int,

Rdescription varchar(25),

constraint room_PK primary key (Room_ID)

);

 

create table Eventt (

EID int not null ,

Ename varchar (15) not null,

ELocation varchar (15) not null,

Age_Restriction int,

EDate varchar(15) not null ,

EDuration varchar(10) not null ,

Etype varchar(12) ,

Eprice int not null ,

constraint Event_PK primary key (EID)

);

 

Create table Works_for ( 

Event_ID int ,

National_ID int ,

Hourss int,

 

constraint Works_for_fk1

foreign key (Event_ID) references Eventt(EID),

constraint Works_for_fk2

foreign key (National_ID) references Employee(NID)

);

 

create table handles(

NatID int ,

conf_code int,

 

constraint Emp_installment_FK1

foreign key (NatID) references employee(NID),

constraint Emp_installment_fk2

foreign key (conf_code) references installment (confirmation_code)

);

 

create table handle(

N_ID int,

Room_No int,

 

constraint handles_fk1

foreign key (N_ID) references employee(NID),

constraint handles_fk2

foreign key (Room_No) references Room (Room_ID)

);

 

create table eats_in(

G_NID int,

Rest_ID int,

 

constraint eats_in_fk1

foreign key (G_NID) references Guest(NID),

constraint eats_in_fk2

foreign key (Rest_ID) references restaurant (RID)

);

 

create table enjoys(

Guest_nid int,

Fac_id int,

constraint enjoys_fk1 foreign key (Guest_nid) references Guest(NID),

constraint enjoys_fk2 foreign key (Fac_id) references facility(FID)

);

 

create table participates(

Ev_ID int,

Nat_ID int,

 

constraint participates_fk1 foreign key (Ev_ID) references Eventt (EID) ,

constraint participates_fk2 foreign key (Nat_ID) references Guest (NID)

);

 

create table goes_to(

guestid int,

roomid int,

 

constraint goes_fk1 foreign key (guestid) references Guest (NID),

constraint goes_fk2 foreign key (roomid) references Room (Room_ID)

);

 

  alter table employee

  drop constraint employee_FK;

 

  alter table works_for

  drop constraint Works_for_fk1;

 

  alter table works_for

  drop constraint Works_for_fk2;

 

   alter table participates

  drop constraint participates_fk1;

 

  alter table participates

  drop constraint participates_fk2;

 

  alter table handle

  drop constraint handles_fk1;

 

  alter table handle

  drop constraint handles_fk2;

 

  alter table goes_to

  drop constraint goes_fk1;

 

  alter table goes_to

  drop constraint goes_fk2;

 

  alter table handles

  drop constraint Emp_installment_FK1;

 

  alter table handles

  drop constraint Emp_installment_fk2;

 

  alter table enjoys

  drop constraint enjoys_fk1;

 

  alter table enjoys

  drop constraint enjoys_fk2;

 

  alter table restaurant

  drop constraint rest_FK;

 

  alter table eats_in

  drop constraint eats_in_fk1;

 

  alter table eats_in

  drop constraint eats_in_fk2;

 

  alter table installment_loyalty_program

  drop constraint PLP_FK;

 

 

  -- Person values --

 

  INSERT INTO person

  VALUES (1, 'Habiba', 'Khaled', 'Nasr City' ,NULL);

 

  INSERT INTO person

  VALUES (2, 'Haya', 'Gamal', 'Rehab' ,NULL);

 

  INSERT INTO person

  VALUES (3, 'Salma', 'Tarek', 'Madinaty' ,NULL);

 

  INSERT INTO person

  VALUES (4, 'Tasneem', 'Alaa', 'Nasr City' ,NULL);

 

  INSERT INTO person

  VALUES (5, 'Hagar', 'Magdy', 'Tagamoa' ,NULL);

 

  INSERT INTO person

  VALUES (6, 'Omar', 'Mohamed', 'Sheraton' ,NULL);

 

  INSERT INTO person

  VALUES (7, 'Mohamed', 'Alaa', 'Maadi' ,NULL);

 

  INSERT INTO person

  VALUES (8, 'Ahmed', 'Omar', 'Maadi' ,NULL);

 

  INSERT INTO person

  VALUES (9, 'Khaled', 'Mohamed', 'Nasr City' ,NULL);

 

  INSERT INTO person

  VALUES (10, 'Ghada', 'Salah', 'Tagamoa' ,NULL);

 

  INSERT INTO person

  VALUES (11, 'Maram', 'Magdy', 'Sheraton' ,NULL);

 

  INSERT INTO person

  VALUES (12, 'Salah', 'Ahmed', 'Madinaty' ,NULL);

 

  INSERT INTO person

  VALUES (13, 'Shereen', 'Abdullah', 'Nasr City' ,NULL);

 

  INSERT INTO person

  VALUES (14, 'Nada', 'Alaa', 'Nasr City' ,NULL);

 

  INSERT INTO person

  VALUES (15, 'Fatma', 'Bahaa', 'Maadi' ,NULL);

 

  INSERT INTO person

  VALUES (16, 'Shaimaa', 'Mahmoud', 'Tagamoa' ,NULL);

 

  INSERT INTO person

  VALUES (17, 'Mariam', 'Osama', 'Sheraton' ,NULL);

 

  INSERT INTO person

  VALUES (18, 'Mostafa', 'Enan', 'Tagamoa' ,NULL);

 

  INSERT INTO person

  VALUES (19, 'Muhtady', 'Hany', 'Nasr City' ,NULL);

 

  INSERT INTO person

  VALUES (20, 'Ahmed', 'Mostafa', 'Maadi' ,NULL);

 

  INSERT INTO person

  VALUES (21, 'Mohamed', 'Khaled', 'Sheraton' ,NULL);

 

  INSERT INTO person

  VALUES (22, 'Mariam', 'Ali', 'Nasr City' ,NULL);

 

  --Person_Phone values--

  Insert into person_phone

  Values (1, '1234');

 

  Insert into person_phone

  Values (2, '5678');

 

  Insert into person_phone

  Values (3, '0145');

 

  Insert into person_phone

  Values (4, '5567');

 

  Insert into person_phone

  Values (5, '7821');

 

  Insert into person_phone

  Values (6, '2568');

 

  Insert into person_phone

  Values (7, '5123');

 

  Insert into person_phone

  Values (8, '7815');

 

  --Person_Email values--

  Insert into person_email

  Values (1, 'Habiba@hotel.com');

 

  Insert into person_email

  Values (2, 'Haya@hotel.com');

 

  Insert into person_email

  Values (3, 'Salma@hotel.com');

 

  Insert into person_email

  Values (4, 'Tasneem@hotel.com');

 

  Insert into person_email

  Values (5, 'Hagar@hotel.com');

 

  Insert into person_email

  Values (6, 'Omar@hotel.com');

 

  Insert into person_email

  Values (7, 'Mohamed@hotel.com');

 

  Insert into person_email

  Values (8, 'Ahmed@hotel.com');

 

  --Employee Values--

  Insert into Employee

  Values (1, '10000',5);

 

  Insert into Employee

  Values (2, '7000',6);

 

  Insert into Employee

  Values (3, '12000',4);

 

  Insert into Employee

  Values (5, '8000',3);

 

  Insert into Employee

  Values (7, '20000',1);

 

  Insert into Employee

  Values (8, '17000',2);

 

  Insert into Employee

  Values (9, '5000',3);

 

  Insert into Employee

  Values (10, '7000',3);

 

  Insert into Employee

  Values (11, '6000',3);

 

  Insert into Employee

  Values (4, '5500',3);

 

  Insert into Employee

  Values (6, '8000',1);

 

  Insert into Employee

  Values (12, '1000',6);

 

  Insert into Employee

  Values (13, '2000',4);

 

  Insert into Employee

  Values (14, '2500',5);

 

  Insert into Employee

  Values (15, '3000',2);

 

  Insert into Employee

  Values (16, '3500',6);

 

  --Manager Values--

  Insert into Manager

  Values (3, 201);

 

  Insert into Manager

  Values (5, 202);

 

  Insert into Manager

  Values (7, 203);

 

  Insert into Manager

  Values (8, 204);

 

  Insert into Manager

  Values (1, 205);

 

  Insert into Manager

  Values (2, 2016);

 

  -- Chef Values--

  Insert into Chef

  Values (9, 'Pumpkin cheesecake');

 

  Insert into Chef

  Values (10, 'Squash soup');

 

  Insert into Chef

  Values (11, 'Sweet potato pie');

 

  Insert into Chef

  Values (4, 'Zesty onion rings');

 

  --Installments values--

  Insert into installment

  Values (17,189306,'22/10/2019','2/10/2019','cash');

 

  Insert into installment

  Values (18,189307,'25/9/2019','2/9/2019','cash');

 

  Insert into installment

  Values (19,189308,'17/1/2019','10/1/2019','credit');

 

  Insert into installment

  Values (20,189309,'28/12/2018','22/12/2018','credit');

 

  Insert into installment

  Values (21, 189310,'20/10/2018','15/10/2018','cash');

 

  Insert into installment

  Values (22,189311,'20/9/2018','22/9/2018','cash');

 

  --facility values--

  Insert into facility

  Values ('Bulding G',null,'Gym',101);

 

  Insert into facility

  Values ('Bulding A',null,'Gym',102);

 

  Insert into facility

  Values ('Bulding B',null,'spa',103);

 

  Insert into facility

  Values ('Bulding D',null,'Golf court',104);

 

  Insert into facility

  Values ('Bulding H',null,'Night club',105);

 

  Insert into facility

  Values ('Bulding H',null,'Aqua park',106);

 

  --Room values--

  Insert into room

  Values (101, 2, 'Executive suite' );

 

  Insert into room

  Values (102, 3, ' Superior room' );

 

  Insert into room

  Values (103, 4, 'Standard room' );

 

  Insert into room

  Values (104, 5, 'Deluxe room' );

 

  Insert into room

  Values (105, 4, 'suite' );

 

  Insert into room

  Values (106, 7, 'Junior suite' );

 

  --Guest values--

  Insert into Guest

  Values (17,'2018' );

 

  Insert into Guest

  Values (18,'2019' );

 

  Insert into Guest

  Values (19,'2019');

 

  Insert into Guest

  Values (20,'2018');

 

  insert into Guest

  values(21,'2018');

 

  insert into Guest

  values(22,'2019');

 

  --Department values--

  Insert into Department

  Values( 1, 'HR',7);

 

  Insert into Department

  Values ( 2, 'PR',8);

 

  Insert into Department

  Values (3, 'Culinary', 5);

 

  Insert into Department

  Values (4, 'Finance', 3);

 

  Insert into Department

  Values (5, 'Accounting', 1);

 

  Insert into Department

  Values (6, 'Marketing', 2);

 

  --Event values--

  Insert into Eventt

  Values (1, 'Birthday','Swimming Pool', 21,'22/1/2020','2hrs',null, 5000);

 

  Insert into Eventt

  Values (2, 'Wedding','Hall', 40,'21/4/2020','3hrs',null, 10000);

 

  Insert into Eventt

  Values (3, 'Birthday','Beach', 17,'5/5/2021','2hrs',null, 2000);

 

  Insert into Eventt

  Values (4, 'Wedding','Green Area', 50,'6/7/2020','5hrs',null, 5000);

 

  Insert into Eventt

  Values (5, 'Engagment','Beach', 50,'6/7/2020','4hrs',null, 8000);

 

  Insert into Eventt

  Values (6, 'Prom','Hall', 21,'28/7/2020','4hrs',null, 10000);

 

  --works_for values--

  Insert into Works_for

  Values( 1,9,10 );

 

  Insert into Works_for

  Values (2,10,11);

 

  Insert into Works_for

  Values (4,11,12);

 

  Insert into Works_for

  Values (5,1,13);

 

  Insert into Works_for

  Values (3,2,14);

 --participates values--

  Insert into participates

  Values (5,22);

 

  Insert into participates

  Values (1,19);

 

  Insert into participates

  Values (3,18);

 

  Insert into participates

  Values (2,17);

 

  Insert into participates

  Values (4,21);

 

  --handle values--

  insert into handle

  values(15,101);

 

  insert into handle

  values(14,102);

 

  insert into handle

  values(13,103);

 

  insert into handle

  values(6,104);

 

  insert into handle

  values(12,105);

 

  insert into handle

  values(16,106);

 

  --goes to--

  insert into goes_to

  values(17,101);

 

  insert into goes_to

  values(18,102);

 

  insert into goes_to

  values(19,103);

 

  insert into goes_to

  values(20,104);

 

  insert into goes_to

  values(21,105);

 

  insert into goes_to

  values(22,106);

 

  --handles table--

  insert into handles

  values (6,189306);

 

  insert into handles

  values (12,189307);

 

  insert into handles

  values (13,189308);

 

  insert into handles

  values (14,189309);

 

  insert into handles

  values (15,189310);

 

  insert into handles

  values (16,189311);

 

  --enjoys table--

  insert into enjoys

  values (17,101);

 

  insert into enjoys

  values (18,102);

 

  insert into enjoys

  values (null,103);

 

  insert into enjoys

  values (null,101);

 

  insert into enjoys

  values (null,102);

 

  insert into enjoys

  values (22,106);

 

  insert into enjoys

  values (20,105);

 --resturant values--

  insert into restaurant

  values (100,'Asian','Chinese food',9);

 

  insert into restaurant

  values (101,'Mahraja','Indian food',10);

 

  insert into restaurant

  values (102,'Sea Club', 'Seafood',9);

 

  insert into restaurant

  values (103,'Oriental', 'Egyptian food',11);

 

  insert into restaurant

  values (104,'Thai', 'Thailand food',4);

 

  insert into restaurant

  values (105,'Ciao','Italian food',11);

 

  --- eats_in values ---

  insert into eats_in

  values (17,105);

 

  insert into eats_in

  values (18,105);

 

  insert into eats_in

  values (19,100);

 

  insert into eats_in

  values (20,101);

 

  insert into eats_in

  values(21,102);

 

  insert into eats_in

  values (22,103);

 

  --- Loyalty_Program Values ---

  insert into installment_loyalty_program

  values ('A class', 'kmj102li','kyt104hay',189306);

 

  insert into installment_loyalty_program

  values ('B class', 'mks103ler', 'hys102mny',189310);

 

  insert into installment_loyalty_program

  values ('A class', 'kmj108ewu','kyt109wqe',189307);

 

  insert into installment_loyalty_program

  values ('C class',null,'mew193uew',189309);

 

insert into installment_loyalty_program

values ('B class',null,'qwe111poi',189311);

 

 

alter table employee

add constraint  employee_FK FOREIGN KEY (DNO) references Department (Dept_ID) ;

 

alter table Department

add constraint Dept_fk foreign key (MGR_SSN) references Manager (NID);

 

alter table installment

add constraint installment_FK foreign key (GID) references Guest (NID);

 

alter table restaurant

add constraint rest_FK foreign key (Nation_ID) references Chef (NID);

 

alter table Works_for

add constraint Works_for_fk1 foreign key (Event_ID) references Eventt(EID);

 

alter table Works_for

add constraint Works_for_fk2 foreign key (National_ID) references Employee(NID) ;

 

alter table eats_in

add constraint eats_in_fk1 foreign key (G_NID) references Guest(NID);

 

alter table eats_in

add constraint eats_in_fk2 foreign key (Rest_ID) references restaurant (RID);

 

alter table handles

add constraint Emp_installment_FK1 foreign key (NatID) references employee(NID);

 

alter table handles

add constraint Emp_installment_fk2 foreign key (conf_code) references installment (confirmation_code);

 

alter table handle

add constraint handles_fk1 foreign key (N_ID) references employee(NID);

 

alter table handle

add constraint handles_fk2 foreign key (Room_No) references Room (Room_ID);

 

alter table enjoys

add constraint enjoys_fk1 foreign key (Guest_nid) references Guest(NID);

 

alter table enjoys

add constraint enjoys_fk2 foreign key (Fac_id) references facility(FID);

 

alter table participates

add constraint participates_fk1 foreign key (Ev_ID) references Eventt (EID) ;

 

alter table participates

add constraint participates_fk2 foreign key (Nat_ID) references Guest (NID) ;

 

alter table goes_to

add constraint goes_fk1 foreign key (guestid) references Guest (NID);

 

alter table goes_to

add constraint goes_fk2 foreign key (roomid) references Room (Room_ID);

 

alter table installment_loyalty_program

add constraint PLP_FK foreign key (Code) references installment (confirmation_code);

 

---- Salma Tarek 184847 Queries ----

 

---Retrieve the number of Employees ID and the average salary of employees working in each department along with the department name --

 

select avg(Salary) as 'Average salary',count (NID) as ' Number of Employees', Dept_Name

from Employee join Department

on Dept_ID=Dno

group by Dept_Name;

 

-----Retrieve the minimum duration of a wedding event----

select min (Eduration) as 'Minimum Duration'

from Eventt

where Ename='wedding';

 

----- Retrieve the guests ID who don't enjoy the hotel's facility -----

Select NID as ' Guest National ID '

from guest

where  not exists ( select *

                    from enjoys

where Guest_nid= NID );

 

----- Retrieve the number ID of the employee whose salary is greater than that of employee working in department 4----

 

select count (NID) AS 'Number of Employee National Id '

from Employee

where Salary > All ( select salary

                         from Employee

where Dno ='4');

----Retrieve the name of the events having the maximum number of hours ------

Select Ename as' Event Name '

from Eventt, Works_for

where EID=Event_ID AND Hourss IN (select max(Hourss)

                                   from Works_for);

 

  ----- Haya Gamal 182081 Queries -----

 

--- Select guest id and full name who participated in events that took place at 2020 and cost at least 5000 ---

select guest.NID,fname+' '+lname as 'Guest Name'

from guest,person

where guest.nid=person.NID and guest.nid in (select nat_ID

from participates

where Ev_ID in (select EID

from eventt

where EDate like'%2020' and Eprice>=5000));

 

--- Select  name of chef and his secretrecipe for the restaurant that has no guests ---

select rname,nid,secret_recipe

from restaurant, chef

where nid=Nation_ID and not exists( select *

from eats_in

where Rest_ID=rid);

 

--- Group and count guests thathave same loyalty programs class ---

select lpname,count (code) as 'Number of Guests'

from installment_loyalty_program

group by lpname;

 

--- Select employee's phone number and IDs that handle rooms of floor number '5'---

 

select phone, employee.NID

from person_phone, Employee

where person_phone.NID=Employee.NID

  and Employee.nid in (select n_id

  from handle,room

  where Rfloor='5');

 

  --- Retrieve guests IDs and confirmation codes of their installments who have vouchers as well as retrieve that of who hasn't--

 

  select gid,confirmation_code,voucher

  from installment full outer join installment_loyalty_program

  on confirmation_code=code;

 

  ---- Habiba Khaled 186918 Queries ----

  ----Retrieve the number of guests that eats in each restaurant, Name of the restaurant and its ID----

  Select Rest_ID, Rname, count(G_NID) AS 'Number of People'

from eats_in, restaurant

where Rest_ID= RID

Group by Rest_ID, Rname;

 

----Retrieve the full names of employees and their IDs that do not work in any event----

Select Fname+ ' ' +Lname As 'Employee Name', Employee.NID

From person, Employee

Where person.NID = Employee.NID AND Not exists(

Select *

from Works_for

where National_ID = Employee.NID);

 

----Retrieve the name, National ID and Email of every Person that has Email----

Select Fname+' '+Lname As 'Employee Name', person.NID, Email

From person join person_email

On person.NID = person_email.NID;

 

----Retrieve Guests' names and National IDs that have loyalty programs----

Select Distinct s.Fname+ ' ' +s.Lname As 'Guest Name' , e.NID

From person s, Guest e, installment

Where s.NID= e.NID AND e.NID in (

select GID

from installment_loyalty_program

Where confirmation_code = Code);

 

----Retrieve all the employee names and their corresponding managers----

Select emp.Fname+' '+ emp.Lname as 'Employee Name', m.Fname+ ' ' + m.Lname as 'Manager Name'

from person emp, person m, Employee s,Manager c

where emp.NID = s.NID And m.NID in (

select c.NID

Where emp.NID != c.NID) And s.Dno in(

Select k.Dno

From Employee k

where k.NID = c.NID);

 

---- Tasneem Alaa 189306 Queries ----

--Retrieve Name and Type of Event. If Event has no type, null values will be returned as Event type, and retrieve National ID of Guest who participates in the Events.--

SELECT Ename  AS 'Event name', Etype  AS 'Event type', Nat_ID as 'Guest ID'

FROM Eventt  RIGHT OUTER JOIN participates

ON EID=Ev_ID;

 

--Retrieve First and last name of Employees who lives in’ Maadi’, also retrieve city and IDs of employees.--

select e.Fname+ ' ' + e.Lname as 'Employees names',  City, NID as 'Employee ID'

from person e

where e.NID in (select NID from Employee where City='Maadi');

 

-- Retrieve National ID of Guests who enjoys Facilities located in ‘Building H’, also retrieve Facility Name.--

select NID, Facility_name

from Guest, facility

where NID in(select guest_nid from enjoys

where Flocation='Bulding H'

AND Fac_id=FID);

 

--Retrieve National ID of Guests who participates in Events its age restriction LESS THAN 40, also retrieve Event name and age restriction as well.--

select distinct Nat_ID'Guest ID' , Ename as'Event Name', Age_Restriction

from Eventt, participates

where Nat_ID IN (select Nat_ID from participates where Age_Restriction<40

AND Ev_ID=EID);

 

--Retrieve First and Last name of Guests who goes to their rooms also retrieve their rooms IDs.--

select p.Fname+' ' + Lname as'Guest Name' ,roomid

from person p, goes_to

where p.NID in (select g.NID from Guest g where g.NID=guestid);

 

--          Hagar Magdy 185138 Queries     --

-- retrieve the national ID of guests who enjoy the gym facility --

select NID, Facility_name

from Guest, Facility

where NID in(

select Guest_nid from enjoys

    where Facility_name='Gym'

    and Fac_id=FID);

 

              -- retrirve the number of guests who pay in cash--

select count(GID) as'guests who pay in cash'

from Installment

where GID in(

select NID from Guest

where Detail='cash'

);

 

--retrieve all facility names and their corresponding description even if they have no description--

SELECT Facility_name  AS 'Facility name',

Fdiscription  AS 'Facility Description',

Guest_NID as 'Guest ID'

FROM Facility  RIGHT OUTER JOIN Enjoys

ON FID=Fac_id

;

 

-- retrieve the id of the employee who worked on the confirmation code number '189306'--

select conf_code, NatID as'employee who works on this confirmation code'

from handles

where conf_code='189306';

 

--retrieve the national ID of guests who are participating in events on date 22/1/2020--

 

select Nat_ID as 'Guests participating on Events on date 22/1/2020'

from participates

where Ev_ID in(

select EID

from Eventt

where EDate ='22/1/2020');