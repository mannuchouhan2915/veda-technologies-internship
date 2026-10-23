use veda_set ;
select * from northwind_order;

select product_id , count(*) from northwind_order
group by product_id ; 
-- this will give total count of products by their product id 

select product_id , sum(unit_price) from northwind_order 
group by product_id  having sum(unit_price)>1000;
-- this will give sum of unitprice of those product id their sum of unitprice must be greater then 1000

select order_id , count(quantity) from northwind_order 
group by order_id having count(quantity) >1;

select order_id , count(quantity) from northwind_order 
group by order_id having count(quantity)>max(quantity);

select order_id, sum(unit_price) from northwind_order
group by order_id having sum(unit_price)>avg(unit_price);

select order_id , count(quantity) from northwind_order 
group by order_id having count(quantity)>min(quantity);

select order_id , sum(unit_price) from northwind_order 
group by order_id having sum(unit_price)>max(unit_price);