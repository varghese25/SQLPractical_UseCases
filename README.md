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

July 28 2025
Learn about Hive & Grandmother expired on this Day

July 29 2025
Learn about DDL & went house viewing (Signet)

July 30 2025
Learn about 
SQL Hosting
If you want your web site to be able to store and retrieve data from a database, your web server should have access to a database-system that uses the SQL language.

If your web server is hosted by an Internet Service Provider (ISP), you will have to look for SQL hosting plans.

The most common SQL hosting databases are MS SQL Server, Oracle, MySQL, and MS Access.

July 31 2025

SQL Injection
SQL injection is a code injection technique that might destroy your database.

SQL injection is one of the most common web hacking techniques.

SQL injection is the placement of malicious code in SQL statements, via web page input.



Aug 01 2025

SQL CREATE VIEW Statement
In SQL, a view is a virtual table based on the result-set of an SQL statement.

A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.

You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.

A view is created with the CREATE VIEW statement. 

CREATE VIEW Syntax
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
Note: A view always shows up-to-date data! The database engine recreates the view, every time a user queries it.


Aug 2 2025SQL 

Dates
The most difficult part when working with dates is to be sure that the format of the date you are trying to insert, matches the format of the date column in the database.

As long as your data contains only the date portion, your queries will work as expected. However, if a time portion is involved, it gets more complicated.

SQL Date Data Types
MySQL comes with the following data types for storing a date or a date/time value in the database:

DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
YEAR - format YYYY or YY
SQL Server comes with the following data types for storing a date or a date/time value in the database:

DATE - format YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
SMALLDATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: a unique number
Note: The date types are chosen for a column when you create a new table in your database!

SQL Working with Dates
Look at the following table:

Orders Table
OrderId	ProductName	OrderDate
1	Geitost	2008-11-11
2	Camembert Pierrot	2008-11-09
3	Mozzarella di Giovanni	2008-11-11
4	Mascarpone Fabioli	2008-10-29
Now we want to select the records with an OrderDate of "2008-11-11" from the table above.

We use the following SELECT statement:

SELECT * FROM Orders WHERE OrderDate='2008-11-11'
The result-set will look like this:

OrderId	ProductName	OrderDate
1	Geitost	2008-11-11
3	Mozzarella di Giovanni	2008-11-11
Note: Two dates can easily be compared if there is no time component involved!

Now, assume that the "Orders" table looks like this (notice the added time-component in the "OrderDate" column):

OrderId	ProductName	OrderDate
1	Geitost	2008-11-11 13:23:44
2	Camembert Pierrot	2008-11-09 15:45:21
3	Mozzarella di Giovanni	2008-11-11 11:12:01
4	Mascarpone Fabioli	2008-10-29 14:56:59
If we use the same SELECT statement as above:

SELECT * FROM Orders WHERE OrderDate='2008-11-11'
we will get no result! This is because the query is looking only for dates with no time portion.

Tip: To keep your queries simple and easy to maintain, do not use time-components in your dates, unless you have to!

Aug 03 2025
SQL AUTO INCREMENT Field
Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.

Often this is the primary key field that we would like to be created automatically every time a new record is inserted.
Syntax for MySQL
The following SQL statement defines the "Personid" column to be an auto-increment primary key field in the "Persons" table:

CREATE TABLE Persons (
    Personid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
);
MySQL uses the AUTO_INCREMENT keyword to perform an auto-increment feature.

By default, the starting value for AUTO_INCREMENT is 1, and it will increment by 1 for each new record.

To let the AUTO_INCREMENT sequence start with another value, use the following SQL statement:

ALTER TABLE Persons AUTO_INCREMENT=100;
To insert a new record into the "Persons" table, we will NOT have to specify a value for the "Personid" column (a unique value will be added automatically):

INSERT INTO Persons (FirstName,LastName)
VALUES ('Lars','Monsen');
The SQL statement above would insert a new record into the "Persons" table. The "Personid" column would be assigned a unique value. The "FirstName" column would be set to "Lars" and the "LastName" column would be set to "Monsen".


Aug 6 2025

VPS document 