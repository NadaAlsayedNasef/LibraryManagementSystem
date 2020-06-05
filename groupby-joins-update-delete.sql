
use Library_Management_System


--Select Statements using Count and Group Functions 
select book_publisher , Count(*) from Books group by book_publisher;
select customer_address , Count(*) from Custumers group by customer_address order by 2 ;
select issue_staff , Count(*) from IssueStatuses group by issue_staff order by 2 DESC;

--Select Statements using Different Joins 
select[IssueStatuses].issue_id , issue_date , expiryDate , return_date from [IssueStatuses] join RerurnStatuses 
on [IssueStatuses].issue_id=[RerurnStatuses].issue_id;

select[IssueStatuses].issue_id , issue_date , expiryDate , return_date from [IssueStatuses] join RerurnStatuses 
on [IssueStatuses].issue_id=[RerurnStatuses].issue_id
where expiryDate<return_date;

select[IssueStatuses].issue_id , issue_date , expiryDate , return_date from [IssueStatuses] left join RerurnStatuses 
on [IssueStatuses].issue_id=[RerurnStatuses].issue_id
where expiryDate>return_date;

select[IssueStatuses].* , staff_name from [IssueStatuses] inner join Staff 
on [IssueStatuses].issue_staff=[Staff].staff_id;

select[IssueStatuses].* , staff_name from [IssueStatuses] right join Staff 
on [IssueStatuses].issue_staff=[Staff].staff_id
where staff_name = 'omar';

--Update Statement 
update Custumers set customer_name = 'Anas' where customer_name = 'Ali';
update Custumers set customer_address = 'kfr el sheikh' where customer_name = 'Anas';
update Books set book_auther = 'auther1' where book_ISBN = 2109;
update Staff set staff_salary = 4000 where staff_name = 'omar';
update Staff set staff_position = 'Library worker' where staff_position != 'manager';

--Delete Statement 
delete RerurnStatuses;
delete IssueStatuses where issued_cust = 4;
delete IssueStatuses where issue_date < '2019-12-18';
delete Books where book_publisher = 'pub5';
delete Custumers;


