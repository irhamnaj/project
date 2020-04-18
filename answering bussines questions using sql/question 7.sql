with 
	customer_data as
		(
			select 
				customer_id,
				first_name || ' ' || last_name as customer_name,
				email
			from
				customer
		)
select
	cd.customer_name as customer_names,
	cd.email as emails,
	count(distinct p.payment_id) as total_transaction
from
	customer_data cd
inner join payment p on p.customer_id = cd.customer_id
group by 1,2
having count(distinct p.payment_id) >= 40;


