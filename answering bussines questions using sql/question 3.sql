select 
	staff.staff_id as no_staff,
	count(distinct payment.payment_id) as total_handle_payment,
	sum(payment.amount) as total_amount
from
	staff
inner join payment on payment.staff_id = staff.staff_id
group by no_staff;
