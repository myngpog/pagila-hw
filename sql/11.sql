/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

select film_id, title, count(inventory.inventory_id) as count
from film
join inventory using (film_id)
where lower(title) like 'h%'
group by film_id, title
order by title desc;
