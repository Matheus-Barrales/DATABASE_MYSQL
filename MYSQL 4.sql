use sakila;
select * from actor;
select * from actor first_name order by first_name;
select * from customer;
select customer.first_name, address.address, address.district, city.city, country.country
from customer, address, city, country
where customer.address_id = address.address_id
and address.city_id = city.city_id
and city.country_id = country.country_id
order by customer.first_name;								
select * from customer where first_name = 'Mary';
select * from customer where first_name = 'Barbara';
select * from film;
select * from payment where customer_id =104;
select * from payment;
select amount, sum(amount) as 'Mary gastou'
 from payment
 where customer_id = 1;
select * from store;
select * from rental where customer_id = 1;
select * from category;
select * from staff;
select * from inventory; 
select * from film_actor;
select * from country;
select film.title from inventory, rental, film
where customer_id = 1 
and rental.inventory_id = inventory.inventory_id
and inventory.film_id = film.film_id
order by film.title;
select * from 


 								
