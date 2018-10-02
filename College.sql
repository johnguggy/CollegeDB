CREATE DATABASE College;  
GO  

use College;
Go

create table Students (
	Students_ID int identity(1,1) Primary Key Clustered not null,
	FName varchar (20) not null,
	LName varchar(10) not null,
	SSN int,
	Address varchar (10),
	City varchar(15),
	State varchar(15),
	zip int,
	phone# varchar(30),
	Classes_ID int,
	Foreign Key (Classes_ID) References Students(Students_ID) on delete no action
	);

create table Classes (
	Classes_ID int identity(1,1) Primary Key Clustered not null,
	Title varchar(15),
	Number int,
	Department varchar(15),
	Scores_ID int,
	Foreign Key (Scores_ID) References Classes(Classes_ID) on delete no action
	);

create table Scores (
	Scores_ID int identity(1,1) Primary Key Clustered not null,
	HW int,
	Quiz int,
	Exam int,
	Lab int,
	Description varchar(30),
	Assigned DateTime,
	Due DateTime,
	Submitted DateTime,
	Earned_Points int,
	Possible_Points int
	);

insert into Students (Fname, LName, SSN, Address, City, State, zip, phone#, Classes_ID)
Values ('Kurt', 'Russell', 555-55-55-55, 'River Road', 'Lakewood', 'Ohio', 44107, '216-555-5555', 1),
	   ('Bob', 'Newman', 666-66-66-66, 'Pond Drive', 'Avon Lake', 'Ohio', 44012, '216-444-4444', 2),
	   ('Jane', 'Doe', 777-77-77-77, 'Creek Lane', 'Cleveland', 'Ohio', 44115, '261-888-8888', 3);

insert into Classes (Title, Number, Department, Scores_ID)
Values ('Algebra 1', 101, 'Math', 1),
	   ('Film 3', 304, 'Digital Media', 2),
	   ('Graphic Design', 101, 'Technology', 3);

insert into Scores (HW, Quiz, Exam, Lab, Description, Assigned, Due, Submitted, Earned_Points, Possible_Points)
Values (10, 7, 10, 9, 'Great!', '10-01-2018', '10-05-2018', '10-02-2018', 36, 40),
	   (9, 6, 10, 8, 'Good!', '10-01-2018', '10-05-2018', '10-02-2018', 33, 40),
	   (6, 8, 5, 10, 'See me after class!', '10-01-2018', '10-05-2018', '10-02-2018', 29, 40);