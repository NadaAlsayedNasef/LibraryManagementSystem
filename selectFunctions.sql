--Select Statements using Different Functions
use Library_Management_System;
select AVG (staff_salary) as avg_salary from Staff ;
select count (*) from IssueStatuses where issued_cust = 3;
select MAX (issue_date) from IssueStatuses ;
select MIN (issue_date) from IssueStatuses ;
select sum (staff_salary) from Staff;
Select * from Books;
SELECT issued_cust, issue_date, expiryDate FROM IssueStatuses WHERE day (issue_date) > day(15) ;
SELECT issued_cust, issue_date, expiryDate FROM IssueStatuses WHERE DATEDIFF(day ,issue_date, expiryDate )> 10 ;
SELECT issued_cust, issue_date, expiryDate FROM IssueStatuses WHERE DATEDIFF(month ,issue_date, expiryDate )= 1 ;
SELECT customer_address , upper(customer_address) from Custumers;
SELECT book_name , lower(book_name) from Books;
SELECT customer_address , substring (customer_address ,1, 4) from Custumers;
select customer_name from Custumers where len(customer_name)=3;
select * from IssueStatuses where expiryDate = getdate();
select book_name from Books ; 
select issued_cust from IssueStatuses where issued_bookISBN = 1234;
select distinct issued_cust from IssueStatuses where issue_staff = 1;
SELECT count (issued_cust) from IssueStatuses;
select book_name , book_auther from Books ; 
select customer_name , stuff(customer_name , 1 , 0 , 'customer ') from Custumers ;