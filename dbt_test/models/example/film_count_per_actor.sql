SELECT actor.first_name
     , actor.last_name
     , count(f.title)::SMALLINT
FROM public.actor
JOIN film_actor fa ON actor.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
GROUP BY 1,2