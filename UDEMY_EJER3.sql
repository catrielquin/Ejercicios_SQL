-- consultas utilizando funciones de agregacion
-- la funcion sum() devuelve suma total de una columna numerica

-- ejercicio: calcula la suma de ventas entre los dias 10 y 25 de mayo del 2005

select sum(amount) from payment where payment_date between '2005-05-10' and '2005-05-25';

-- la funcion count() devuelve el numero de filas que coinciden con un criterio especifico
-- ejercicio: cuantos registros tienes en la tabla CUSTOMER  donde FIRST_NAME empieze con 'A'
select count(first_name) from customer where first_name like 'Z%';

-- la funcion AVG() devuelve el valor promedio de una columna numerica
-- ejercicio: calcula el promedio de renta entre los dias 10 y 25 de mayo del 2005
select avg(amount) from payment where payment_date between '2005-05-10' and '2005-05-25';

-- la funcion MIN() devuelve el valor mas pequeño de la columna seleccionada
-- la funcion MAX() devuelve el valor mas grande de la columna seleccionada

-- ejercicio: muestra la duracion mas pequeña de una pelicula y la mas grande
select max(length) from film;
select min(length) from film;

-- group by se usa a menudo con funciones agregadas(count(), max(), min(),sum(), avg())
-- para agrupar el conjunto de resultados por una o mas columnas.

-- ejercicios: haz un conteo del numero de peliculas agrupadas por raiting
select rating, count(film_id) from film group by rating;

-- la clausula having se agrego a sql porque la palabra clave where no se puede
-- con funciones de agrupacion

-- ejercicios: muestra los clientes que tengan mas de 25 de rentas
select first_name, count(RENTAL_ID) from customer C inner join rental r on c.customer_id = r.customer_id
group by first_name having count(rental_id)>25;

-- 21)  media de duracion de pelicula con la categoria PG 
select avg(length) as media_duracion from film where rating='pg';

-- 22) cuantas peliculas ha realizado el actor ED CHASE.
select a.first_name , a.last_name , count(*) from actor a 
inner join film_actor fa on a.actor_id = fa.actor_id
inner join film f on f.film_id = fa.film_id
where a.first_name = 'ED' and a.last_name = 'CHASE' group by a.first_name, a.last_name;

-- 23) numero de peliculas de cada rating
select rating , count(*) from film group by rating;

-- 24) pelicula con menor duracion.
select min(length) as menor_duracion from film;

-- 25) muestra la suma de pagos despues del 2006
select sum(payment.amount) as 'total de pagos despues del 2006' from payment 
where payment_date >= '2006-01-01';
