-- consultas utilizando where
-- where se ultiliza para filtrar registros
-- utilizamos el esquema 'sakila' que viene por defecto al instalar MYSQL

-- ejercicios : muestra las peliculas donde rental-tale sea igual o mayor que 4 de 
-- la tabla flile
select title, rental_rate from film where rental_rate >= 4;

-- muestra los actores que se llamen ED de la tabla actores
select * from actor where first_name = 'ED';

-- muestra los ID de los paises de chile y francia 
select * from country where country in ('Chile','France');

-- between se utiliza para filtrar registros en un rango
-- puede ser caracteres, numericos o fechas
-- ejercicio: muestra  las rentas que se hicieron entre 2005-05-01 y 2005-06-01
select * from rental where rental_date between  '2005-05-01' and '2005-06-01';

-- like se utiliza para buscar un patron especifico en una columna 

--  like 'a%' valores que empiezen con a 
--  like '%a' valores que terminen con a
--  like '%or%' encuentra cualquier valor que tenga "or" en cualquier posicion
--  like '_r%' encuentra cualquier valor que tenga "r" en la segunda posicion
--  like 'a_%' encuentra cualquier valor que comience con "a" y tenga al menos 2 caracteres de longitud
--  like 'a__%' encuentra cualquier valor que comience "a" y tenga al menos 3 caracteres de longitud
--  like 'a%o' encuentra cualquier valor que comience "a" y termine con "o"

-- ejercicio : muestra los actores que empiezen con J y en otra consulta muestra los actores que terminen con E
select * from actor where first_name like 'J%';
select * from actor where first_name like '%E';

-- el operador AND muestra un registro si todas las condiciones separadas por AND  son verdaderas
-- ejercicio: muestra los actores donde su nombre empiece J y su apellido con c 
select * from actor where first_name like 'J%' and last_name like 'C%'; 

-- el operador OR muestra un registro si alguna de las condiciones separadas por OR es verdadera
-- ejercicio: muestra los actores donde su nombre empiece con Z o su apellido con P 
select * from actor where first_name like 'Z%' or  last_name like 'P%';

-- el operador NOT muestra un registro si la(s) condicion(es) no es verdadera
-- ejercicio: muestra los registros pero que no aparezca brazil
select * from country where not country ='brazil';

-- 11) actores que contengan "ON"  en su nombre
select * from actor where first_name like '%ON%';

-- 12) actores que contengan una 'O' en su nombre y una 'AN' en su apellido
select * from actor where first_name like '%O%' and last_name like '%AN%';

-- 13) actores que contengan dos "O" en su nombre y en su apellido una 'A'
select * from actor where first_name like '%O%O%' and last_name like '%A%';

-- 14) actores donde su tercera letra sea 'B'
select * from actor where first_name like '__B%';

-- 15) ciudades que empiezan con 'A'
select * from city where city like 'A%';

-- 16) ciudades que acaban con 'S'
select * from city where city like '%S';

-- 17) peliculas con una duracion entre 80 y 100
select * from film where length between 80 and 100;

-- 18) peliculas con un rental-rate entre 1-3
select * from film where rental_rate between 1 and 3 ;

-- 19) peliculas con un rating de PG o  G
select * from film where rating in ('PG','G');

-- 20) cuantas ciudades tienen country 'Spain'
select count(*) as num_cities from city where country_id = (select country_id from country where country = 'Spain');
