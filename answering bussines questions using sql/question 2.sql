select 
	count(distinct film_id) as total_film
from 
	film
where rating = 'R' and (replacement_cost between 5 and 15);