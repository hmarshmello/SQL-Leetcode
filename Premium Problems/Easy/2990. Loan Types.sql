select user_id
from sessions
group by user_id
having 	sum(loan_type = 'Refinance') > 0 and 
	sum(loan_type = 'Mortgage') > 0
order by 1;