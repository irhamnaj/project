select 
	store.store_id as id_store,
	count(film.film_id) as total_film
from 
	store
inner join staff on staff.store_id = store.store_id 
inner join rental on rental.staff_id = staff.staff_id 
inner join inventory on inventory.inventory_id = rental.inventory_id 
inner join film on film.film_id = inventory.film_id 
group by store.store_id;