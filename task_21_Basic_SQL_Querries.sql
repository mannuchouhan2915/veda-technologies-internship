-- create database veda_set ;
-- use veda_set;
select * from northwind_order_details limit 10 ;
-- this above querry output shows the 10 rows or dataset  

select count(*) from northwind_order_details;
-- this querry shows the total count rows of dataset

select * from northwind_order_details
where  product_id = 11;
-- this querry shows all the rows of product id 11 

select * from northwind_order_details
where quantity > 10 and discount <0.25; 
-- this above querry shows the rows of qunatity >10 and discount<0.25

select * from northwind_order_details
order by product_id asc;
-- this querry output arrange product_id in ascending order 
 
SELECT *
FROM northwind_order_details
WHERE quantity BETWEEN 5 AND 15;
-- this querry shows the rows of quantity only between 5 and 15 

SELECT product_id, quantity, discount
FROM northwind_order_details
WHERE quantity > 10
ORDER BY quantity DESC;
-- this querry  filters rows first, then sorts the matching results by quantity from highest to lowest.  



