-- This SQL query retrieves the customer IDs, names, cities, and the total number of rides for customers in Chennai who have taken at least 50 rides in the last 5 months, excluding cancelled rides.




select customer_id, customer_name, city, count(*) AS total_rides from uber_rides
where city = 'Chennai' AND cancelled = false
and ride_date >= date_sub(current_date(), interval 5 month)
group by customer_id, customer_name, city
having count(*) >=50;
