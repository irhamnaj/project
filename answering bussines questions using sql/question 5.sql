with 
	customer_data as
		(
			select 
				distinct customer_id,
				first_name || ' ' || last_name as customer_name,
				email
			from
				customer
		)
select
	customer_data.customer_name as customer_names,
	customer_data.email as emails,
	sum(payment.amount) as total_amount
from
	customer_data
inner join payment on payment.customer_id = customer_data.customer_id
group by customer_names, emails 
order by total_amount desc
limit 5;

