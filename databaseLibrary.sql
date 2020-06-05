--CREATE DATABASE Library_Management_System;
use Library_Management_System;

CREATE TABLE Books(
	book_ISBN int not null primary key ,
	book_name nvarchar(max) not null ,
	book_auther nvarchar(max) not null ,
	book_publisher nvarchar(max) not null
);

CREATE TABLE Custumers(
	custumer_id int not null primary key identity ,
	customer_name nvarchar(max) not null ,
	customer_email nvarchar(max) not null ,
	customer_address nvarchar(max) not null
);

CREATE TABLE Staff(
	staff_id int not null primary key identity ,
	staff_name nvarchar(max) not null ,
	staff_position nvarchar(max) not null ,
	staff_salary int not null 
);

CREATE TABLE IssueStatuses(
	issue_id int not null primary key identity  ,
	issued_cust int not null ,
	issued_bookISBN int not null ,
	issue_date date not null ,
	expiryDate date not null , 
	issue_staff int not null ,
	CONSTRAINT issued_Cust Foreign Key (issued_cust ) References Custumers(custumer_id) ,
	CONSTRAINT issued_bookisbn Foreign Key (issued_bookISBN ) References Books(book_ISBN) ,
	CONSTRAINT staff_issue Foreign Key (issue_staff ) References Staff(staff_id)

);

CREATE TABLE RerurnStatuses(
	return_id int not null primary key identity , 
	returning_cust int not null ,
	issue_id int not null ,
	return_date date not null ,
	CONSTRAINT issued_rCust Foreign Key (returning_cust) References Custumers(custumer_id) ,
	CONSTRAINT issued_rDate Foreign Key (issue_id) References IssueStatuses(issue_id)
);