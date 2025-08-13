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

SELECT customer_id, customer_name, COUNT(_) AS total_rides
FROM uber_rides
WHERE city = 'Chennai' AND cancelled = FALSE
AND ride_date >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
GROUP BY customer_id, customer_name
HAVING COUNT(_) >= 50;

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
OrderId ProductName OrderDate
1 Geitost 2008-11-11
2 Camembert Pierrot 2008-11-09
3 Mozzarella di Giovanni 2008-11-11
4 Mascarpone Fabioli 2008-10-29
Now we want to select the records with an OrderDate of "2008-11-11" from the table above.

We use the following SELECT statement:

SELECT \* FROM Orders WHERE OrderDate='2008-11-11'
The result-set will look like this:

OrderId ProductName OrderDate
1 Geitost 2008-11-11
3 Mozzarella di Giovanni 2008-11-11
Note: Two dates can easily be compared if there is no time component involved!

Now, assume that the "Orders" table looks like this (notice the added time-component in the "OrderDate" column):

OrderId ProductName OrderDate
1 Geitost 2008-11-11 13:23:44
2 Camembert Pierrot 2008-11-09 15:45:21
3 Mozzarella di Giovanni 2008-11-11 11:12:01
4 Mascarpone Fabioli 2008-10-29 14:56:59
If we use the same SELECT statement as above:

SELECT \* FROM Orders WHERE OrderDate='2008-11-11'
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

Aug 7 2025
Ip & Network
To configure a public IP for your system so you can host your ERP, you’ll need to go through three main steps:

1. Get a public IP from your ISP or hosting provider

2. Configure it on your system

3. Make it accessible from the internet (firewall, router, and DNS setup)

## For Windows

Go to Control Panel → Network and Sharing Center → Change adapter settings

Right-click your network adapter → Properties

Select Internet Protocol Version 4 (TCP/IPv4) → Properties

Set your public IP, subnet mask, default gateway, and DNS manually.

Save and restart networking.

## Make It Accessible

Even if you set a public IP, it won’t be reachable unless you open the right paths.

a. Router/Firewall Port Forwarding
If your ERP runs on port 8080 or 80/443:

Forward that port from your router to your system’s local IP.

On most routers: Login → Port Forwarding → Add Rule

External Port: 80 (or your ERP port)

Internal IP: Your machine’s LAN IP

Internal Port: Same as ERP port

## On Windows:

Open Windows Defender Firewall → Advanced Settings → Inbound Rules

Add a rule for your ERP port.

## c. Test Accessibility

From an external network (mobile data, not WiFi), open:

http://<YOUR_PUBLIC_IP>:<PORT>
If you see your ERP login page, it’s working.

## Optional – Use a Domain Name

Instead of typing your public IP, register a domain and point it to your IP using an A record in your DNS settings.

Example:

Domain: myerpcompany.com

A Record → Points to your static public IP.

## Security Note:

ERP systems usually store sensitive data. If you expose it to the public internet:

Always use HTTPS (SSL certificate – can use Let’s Encrypt for free).

Configure strong authentication.

Keep software up to date.

Consider reverse proxying through NGINX for extra protection.



Aug 8 2025

Vanilla JavaScript refers to the core JavaScript language without the use of any external libraries or frameworks like jQuery, React, or Vue.js. It represents the fundamental capabilities of JavaScript as a programming language for client-side web development.
AJAX (Asynchronous JavaScript and XML) is a technique that utilizes JavaScript to make asynchronous requests to a server without requiring a full page reload. It is not a programming language itself but rather a set of web development techniques that combine JavaScript, XML (or other data formats like JSON), and the XMLHttpRequest object (or the more modern Fetch API) to enable dynamic content updates on a webpage.
The key differences are:
Nature:
Vanilla JavaScript is the programming language itself, while AJAX is a technique or method that leverages JavaScript to achieve asynchronous communication with a server.
Scope:
Vanilla JavaScript encompasses all aspects of client-side scripting, including DOM manipulation, event handling, and logical operations. AJAX specifically focuses on enabling asynchronous data exchange with a server to update parts of a webpage without full reloads.
Purpose:
The purpose of Vanilla JavaScript is to provide the fundamental building blocks for interactive web pages. The purpose of AJAX is to enhance user experience by allowing for partial page updates and reducing server load by only fetching necessary data.
Implementation:
AJAX is implemented using JavaScript's built-in features like XMLHttpRequest or the Fetch API to send and receive data from a server. This implementation is done using Vanilla JavaScript or with the help of libraries that simplify AJAX calls.


Aug 9 2025

Intel:
Intel Core Ultra:
This is Intel's newest generation of laptop processors, with models like the Core Ultra 9, Core Ultra 7, and Core Ultra 5. 
Key Feature:
They include an NPU (Neural Processing Unit), which is a dedicated AI processor, making them well-suited for AI-powered tasks and workloads. 
Performance:
The Core Ultra series generally offers strong performance across various tasks, including content creation, gaming, and demanding computational workloads. 
Models:
The Core Ultra 9 185H and Core Ultra 7 165H are examples of high-end and mid-range options within the series. 
14th Gen:
Intel's 14th generation processors, like the Core i9-14900HX, are also available and offer high performance for demanding tasks. 


Aug 10 2025
SQL CREATE INDEX Statement
The CREATE INDEX statement is used to create indexes in tables.

Indexes are used to retrieve data from the database more quickly than otherwise. The users cannot see the indexes, they are just used to speed up searches/queries.

Note: Updating a table with indexes takes more time than updating a table without (because the indexes also need an update). So, only create indexes on columns that will be frequently searched against.



Aug 13 2025

SQL PRIMARY KEY Constraint
The PRIMARY KEY constraint is used to uniquely identify each record in a table.

Primary keys must contain unique values, and cannot contain NULL values.

Each table can have only ONE primary key. The primary key can be a single column or a combination of columns.