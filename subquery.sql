use Library_Management_System

select issue_id, issue_date,expiryDate  from IssueStatuses 
where issued_cust =(select custumer_id from Custumers where customer_address = 'mansora'); 

select custumer_id, customer_name ,
(select max(DATEDIFF(day ,issue_date, expiryDate )) from IssueStatuses where Custumers.custumer_id=IssueStatuses.issued_cust) 
from Custumers;

select issue_id, return_date ,
(select expiryDate  from IssueStatuses where RerurnStatuses.issue_id=IssueStatuses.issue_id)  
from RerurnStatuses ;

