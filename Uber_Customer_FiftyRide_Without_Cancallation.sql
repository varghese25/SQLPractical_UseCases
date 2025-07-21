-- create database ETL;
-- use etl;
-- CREATE TABLE uber_rides ( 
-- ride_id INT PRIMARY KEY, 
-- customer_id INT, 
-- customer_name VARCHAR(50), 
-- city VARCHAR(50), 
-- ride_date DATE, 
-- cancelled BOOLEAN 
-- ); 

-- select * from uber_rides;


-- INSERT INTO uber_rides VALUES 
-- (1, 201, 'Mani', 'Chennai', '2025-04-01', FALSE), 
-- (2, 201, 'Mani', 'Chennai', '2025-04-02', FALSE), -- (add 48 more rows for Mani) 
-- (3, 201, 'Mani', 'Chennai', '2025-04-03', FALSE),
-- (4, 201, 'Mani', 'Chennai', '2025-04-04', FALSE),
-- (5, 201, 'Mani', 'Chennai', '2025-04-05', FALSE),
-- (6, 201, 'Mani', 'Chennai', '2025-04-06', FALSE),
-- (7, 201, 'Mani', 'Chennai', '2025-04-07', FALSE),
-- (8, 201, 'Mani', 'Chennai', '2025-04-08', FALSE),
-- (9, 201, 'Mani', 'Chennai', '2025-04-09', FALSE),
-- (10, 201, 'Mani', 'Chennai', '2025-04-10', FALSE),
-- (11, 201, 'Mani', 'Chennai', '2025-04-11', FALSE),
-- (12, 201, 'Mani', 'Chennai', '2025-04-12', FALSE),
-- (13, 201, 'Mani', 'Chennai', '2025-04-13', FALSE),
-- (14, 201, 'Mani', 'Chennai', '2025-04-14', FALSE),
-- (15, 201, 'Mani', 'Chennai', '2025-04-15', FALSE),
-- (16, 201, 'Mani', 'Chennai', '2025-04-16', FALSE),
-- (17, 201, 'Mani', 'Chennai', '2025-04-17', FALSE),
-- (18, 201, 'Mani', 'Chennai', '2025-04-18', FALSE),
-- (19, 201, 'Mani', 'Chennai', '2025-04-19', FALSE),
-- (20, 201, 'Mani', 'Chennai', '2025-04-20', FALSE),
-- (21, 201, 'Mani', 'Chennai', '2025-04-21', FALSE),
-- (22, 201, 'Mani', 'Chennai', '2025-04-22', FALSE),
-- (23, 201, 'Mani', 'Chennai', '2025-04-23', FALSE),
-- (24, 201, 'Mani', 'Chennai', '2025-04-24', FALSE),
-- (25, 201, 'Mani', 'Chennai', '2025-04-25', FALSE),
-- (26, 201, 'Mani', 'Chennai', '2025-04-26', FALSE),
-- (27, 201, 'Mani', 'Chennai', '2025-04-27', FALSE),
-- (28, 201, 'Mani', 'Chennai', '2025-04-28', FALSE),
-- (29, 201, 'Mani', 'Chennai', '2025-04-29', FALSE),
-- (30, 201, 'Mani', 'Chennai', '2025-04-30', FALSE),
-- (31, 201, 'Mani', 'Chennai', '2025-05-01', FALSE),
-- (32, 201, 'Mani', 'Chennai', '2025-05-02', FALSE),
-- (33, 201, 'Mani', 'Chennai', '2025-05-03', FALSE),
-- (34, 201, 'Mani', 'Chennai', '2025-05-04', FALSE),
-- (35, 201, 'Mani', 'Chennai', '2025-05-05', FALSE),
-- (36, 201, 'Mani', 'Chennai', '2025-05-06', FALSE),
-- (37, 201, 'Mani', 'Chennai', '2025-05-07', FALSE),
-- (38, 201, 'Mani', 'Chennai', '2025-05-08', FALSE),
-- (39, 201, 'Mani', 'Chennai', '2025-05-09', FALSE),
-- (40, 201, 'Mani', 'Chennai', '2025-05-10', FALSE),
-- (41, 201, 'Mani', 'Chennai', '2025-05-11', FALSE),
-- (42, 201, 'Mani', 'Chennai', '2025-05-12', FALSE),
-- (43, 201, 'Mani', 'Chennai', '2025-05-13', FALSE),
-- (44, 201, 'Mani', 'Chennai', '2025-05-14', FALSE),
-- (45, 201, 'Mani', 'Chennai', '2025-05-15', FALSE),
-- (46, 201, 'Mani', 'Chennai', '2025-05-16', FALSE),
-- (47, 201, 'Mani', 'Chennai', '2025-05-17', FALSE),
-- (48, 201, 'Mani', 'Chennai', '2025-05-18', FALSE),
-- (49, 201, 'Mani', 'Chennai', '2025-05-19', FALSE),
-- (50, 201, 'Mani', 'Chennai', '2025-05-20', FALSE);


-- INSERT INTO uber_rides VALUES 
-- (51, 202, 'Ravi', 'Chennai', '2025-04-01', FALSE), -- (add additional data for variety) 
-- (52, 202, 'Ravi', 'Chennai', '2025-04-02', TRUE),
-- (53, 203, 'Priya', 'Mumbai', '2025-04-01', TRUE),
-- (54, 203, 'Priya', 'Mumbai', '2025-04-02', FALSE),
-- (55, 203, 'Priya', 'Mumbai', '2025-04-03', TRUE),
-- (56, 204, 'Anil', 'Delhi', '2025-04-01', FALSE),
-- (57, 204, 'Anil', 'Delhi', '2025-04-02', FALSE),
-- (58, 204, 'Anil', 'Delhi', '2025-04-03', TRUE),
-- (59, 204, 'Anil', 'Delhi', '2025-04-04', TRUE),
-- (60, 205, 'Divya', 'Bangalore', '2025-04-01', TRUE),
-- (61, 205, 'Divya', 'Bangalore', '2025-04-02', FALSE),
-- (62, 205, 'Divya', 'Bangalore', '2025-04-03', FALSE),
-- (63, 206, 'Karthik', 'Hyderabad', '2025-04-01', FALSE),
-- (64, 206, 'Karthik', 'Hyderabad', '2025-04-02', TRUE),
-- (65, 206, 'Karthik', 'Hyderabad', '2025-04-03', TRUE),
-- (66, 207, 'Meena', 'Kolkata', '2025-04-01', TRUE),
-- (67, 207, 'Meena', 'Kolkata', '2025-04-02', FALSE),
-- (68, 207, 'Meena', 'Kolkata', '2025-04-03', TRUE),
-- (69, 208, 'Vikram', 'Pune', '2025-04-01', FALSE),
-- (70, 208, 'Vikram', 'Pune', '2025-04-02', FALSE),
-- (71, 209, 'Sneha', 'Chandigarh', '2025-04-01', TRUE),
-- (72, 209, 'Sneha', 'Chandigarh', '2025-04-02', TRUE),
-- (73, 210, 'Arjun', 'Ahmedabad', '2025-04-01', FALSE),
-- (74, 210, 'Arjun', 'Ahmedabad', '2025-04-02', TRUE),
-- (75, 210, 'Arjun', 'Ahmedabad', '2025-04-03', TRUE),
-- (76, 211, 'Neha', 'Indore', '2025-04-01', FALSE),
-- (77, 211, 'Neha', 'Indore', '2025-04-02', TRUE),
-- (78, 211, 'Neha', 'Indore', '2025-04-03', FALSE),
-- (79, 212, 'Ajay', 'Nagpur', '2025-04-01', TRUE),
-- (80, 212, 'Ajay', 'Nagpur', '2025-04-02', FALSE),
-- (81, 213, 'Rekha', 'Jaipur', '2025-04-01', FALSE),
-- (82, 213, 'Rekha', 'Jaipur', '2025-04-02', FALSE),
-- (83, 214, 'Suresh', 'Bhopal', '2025-04-01', TRUE),
-- (84, 214, 'Suresh', 'Bhopal', '2025-04-02', TRUE),
-- (85, 215, 'Tina', 'Surat', '2025-04-01', FALSE),
-- (86, 215, 'Tina', 'Surat', '2025-04-02', TRUE),
-- (87, 215, 'Tina', 'Surat', '2025-04-03', TRUE),
-- (88, 216, 'Ramesh', 'Kochi', '2025-04-01', TRUE),
-- (89, 216, 'Ramesh', 'Kochi', '2025-04-02', FALSE),
-- (90, 217, 'Pooja', 'Coimbatore', '2025-04-01', FALSE),
-- (91, 217, 'Pooja', 'Coimbatore', '2025-04-02', TRUE),
-- (92, 217, 'Pooja', 'Coimbatore', '2025-04-03', FALSE),
-- (93, 218, 'Nikhil', 'Mysore', '2025-04-01', TRUE),
-- (94, 218, 'Nikhil', 'Mysore', '2025-04-02', FALSE),
-- (95, 218, 'Nikhil', 'Mysore', '2025-04-03', FALSE),
-- (96, 219, 'Swathi', 'Vizag', '2025-04-01', TRUE),
-- (97, 219, 'Swathi', 'Vizag', '2025-04-02', FALSE),
-- (98, 220, 'Gopal', 'Madurai', '2025-04-01', TRUE),
-- (99, 220, 'Gopal', 'Madurai', '2025-04-02', TRUE),
-- (100, 203, 'Varghese', 'Coimbatore', '2025-04-01', FALSE); 


select * from uber_rides;
select customer_id, customer_name,city, count(*) ride_count from uber_rides
group by customer_id, customer_name,city
Having count(*) >=50;


-- SELECT customer_id, customer_name, COUNT(*) AS total_rides FROM uber_rides 
-- WHERE city = 'Chennai' AND cancelled = FALSE 
-- AND ride_date >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH) 
-- GROUP BY customer_id, customer_name 
-- HAVING COUNT(*) >= 50;

select customer_id, customer_name, city, count(*) AS total_rides from uber_rides
where city = 'Chennai' AND cancelled = false
and ride_date >= date_sub(current_date(), interval 5 month)
group by customer_id, customer_name, city
having count(*) >=50;




