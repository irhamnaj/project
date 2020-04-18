select
	distinct film_id, 
	title,
	description,
	round(avg(rental_rate),3) as average_rental_rate
from film
where description like '%Astronaut%' or description like '%astronaut%'
group by film_id,title, description 
having round(avg(rental_rate),2) > 3;
