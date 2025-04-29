-- creating a database
create database task6;
-- using the databaseAge
use  task6;
select * from online_shop;
-- extracting months from purchase date
select extract(month from purchase_date) as purchase_month 
from online_shop;
-- month wise total orders
select extract(month from purchase_date) as purchase_month,
count(*) as total_orders from online_shop
group by extract( month from purchase_date);
-- 
select sum(revenue_total) as total_revenue
 from online_shop;
 -- countind no of unique customerids
 select count(distinct ï»¿Customer_id) as total_customer_ids
 from online_shop;
 -- top three revenue generation
 select revenue_total from online_shop
 order by revenue_total desc
 limit 3;
 -- selecting which age persons did more shopping
 SELECT age, COUNT(*) AS top_age
FROM online_shop
GROUP BY age
order by top_age desc 
limit 5;
-- selecting which customer_id as purchased how many times
select ï»¿Customer_id,n_purchases 
 from online_shop
 group by ï»¿Customer_id,n_purchases
 order by n_purchases desc;

 