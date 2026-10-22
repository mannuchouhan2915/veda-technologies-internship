use veda_set;

-- 1 
select * from northwind_order ;
--  this querry show all the rows of northwind dataset 

-- 2 
select * from northwind_order
where quantity >50;
-- this querry gives all the rows of quantity which is greater then 50  

-- 3
select product_id , unit_price , discount from 
northwind_order where product_id >30;
-- this return product_id , unit_price and discount only for the ids greater then 30


-- 4
select unit_price , discount from northwind_order 
where unit_price > (select avg(unit_price) from northwind_order );
-- it return the unitprice and discount of only those products which unit price is greater then average unit price 


--  5
select * from northwind_order 
where quantity between 10 and 30 ;
-- it will return those rows in which quantity is between 10 and 30 only 


--  6
select * from northwind_order 
where quantity in (50,100) ;
-- it will return those rows having quantity only 50 and 100 


-- 7
select product_id , sum(quantity) from northwind_order
group by product_id  ;
-- it will return sum of quantity by their product id 

-- 8
select product_id , avg(unit_price ) from northwind_order
group by product_id  ;
-- it will return avg unitprice of all product ids 


-- 9
select product_id , sum(quantity) from northwind_order
where product_id > 50 
group by product_id  ;
-- it will return sum of quantity of product id which is greater then 50 

-- 10
select product_id , avg(unit_price) from northwind_order
where unit_price > (select avg(unit_price) from northwind_order )
group by product_id  ;
-- it will return those product id their unitprice must be greater by avg unitprice 


-- 11
select * from northwind_order 
where product_id like(5);
-- it will return those rows of product id 5 

-- 12
select * from northwind_order 
where quantity like (05 ) ;
-- it will return those rows of quantity 15 