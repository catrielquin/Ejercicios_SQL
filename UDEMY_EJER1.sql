-- consulta utilizando select
-- distinct se utiliza para mostrar datos unicos de una columna

-- ejercicio: muestra los datos unicos de country /nombre_pais
use world;
select distinct (name) from country;

select id, name as nombre_pais from country;

-- 01) muestra film_id y title de la tabla film
use sakila;
select film_id, title from film;

-- 02) asigna un alias a title y escribe 'titulo de la pelicula' 
-- y a description y escribe ' descripcion de la pelicula' de la tabla film
use sakila;
select title as 'titulo de la pelicula', description as ' descripcion de la pelicula' from film;

-- 03) muestra los campos distintos de postal_code
select distinct postal_code from address;

-- 04) ejercicio. consulta la inicial de la columna country de la tabla country
select left (country,1) from country; 

-- 05) consulta la tabla country y muestra en mayusculas la columna country
select upper(country) from country;

-- 06) consulta la tabla country y muestra cuantos caracteres tienen los 
-- campos de la columnas country 
select length(country) from country;

-- 07) concatena country_id y country de la tabla country
select concat(country_id, country) from country;

-- 08) multiplica amount por el 19.58 que es el precio actual del dolar
-- de la tabla payment
select amount,(amount*19.58) from payment;

-- 09) redondea a 0 decimales la columna amount de la tabla payment
select amount, round(amount,0) from payment;

-- 10) muestra el valor de PI
select PI();