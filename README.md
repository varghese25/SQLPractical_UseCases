# ETL - Extract Transform Load (Unstructured Files like video, PDF , etc)
# ELT - Extract Load Transform (Structured Files)
 
#Data Lake, Where Unstructured Files stored 
#Data warehouse, Where structured files stored

#OLTP Online Transaction Processing (Data Engineer, ETL)
#OLAP Online Analytics Processing (Data Sciencentis Work)


#Aggreation 
#Normalization



CREATE TABLE uber_rides ( 
ride_id INT PRIMARY KEY, 
customer_id INT, 
customer_name VARCHAR(50), 
city VARCHAR(50), 
ride_date DATE, 
cancelled BOOLEAN 
); 
INSERT INTO uber_rides VALUES 
(1, 201, 'Mani', 'Chennai', '2025-04-01', FALSE), 
(2, 201, 'Mani', 'Chennai', '2025-04-02', FALSE), -- (add 48 more rows for Mani) 
(51, 202, 'Ravi', 'Chennai', '2025-04-01', FALSE), 
(52, 202, 'Ravi', 'Chennai', '2025-04-02', TRUE), -- (add additional data for variety) 
(100, 203, 'Arun', 'Coimbatore', '2025-04-01', FALSE);



SELECT customer_id, customer_name, COUNT(*) AS total_rides 
FROM uber_rides 
WHERE city = 'Chennai' AND cancelled = FALSE 
AND ride_date >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH) 
GROUP BY customer_id, customer_name 
HAVING COUNT(*) >= 50; 


July 18 2025
installed MySQL Latest version for ETL  


July 23 2025
Leard About Spark & Hadoop arcticture 