select 
	rating,
	round(avg(replacement_cost),3) as avg_rep_cost
from
	film
group by rating
order by avg_rep_cost desc;