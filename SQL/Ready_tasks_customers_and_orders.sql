You need to write queries on the data from the tables, which will output all the necessary information


Table 1 – Customers
CustomerID	CompanyName Address	City    Country
ALFKI	Alfreds Futterkiste	Obere Str. 57	Berlin	Germany
ANATR	Ana Trujillo Emparedados y helados	Avda. de la Constitución 2222	México D.F.	Mexico
ANTON	Antonio Moreno Taquería	Mataderos  2312	México D.F.	Mexico
AROUT	Around the Horn	120 Hanover Sq.	London	UK
BERGS	Berglunds snabbköp	Berguvsvägen  8	Luleå	Sweden
BLAUS	Blauer See Delikatessen	Forsterstr. 57	MannheimCity	Germany
BLONP	Blondesddsl père et fils	24, place Kléber	StrasbourgCity	France
BOLID	Bólido Comidas preparadas	C/ Araquil, 67	MadridCity	Spain


Table 2 – Orders
OrderID	CustomerID	OrderDate	OrderSum
10355	AROUT	15.11.1996	10000
10365	ANTON	27.11.1996	15000
10381	LILAS	12.12.1996	20000
10436	BLONP	05.02.1997	17500
10442	ERNSH	11.02.1997	20000
10449	BLONP	18.02.1997	10000
10453	AROUT	21.02.1997	15000


1. Output the names of all companies that did not fulfil the order from 15.11.1996 - 18.02.1997 

SELECT CompanyName FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE OrderDate NOT BETWEEN '15-11-1996' AND '18-02-1997';


2. Bring up the names of supplier companies that are located in México D.F.

SELECT CompanyName FROM Customers
WHERE City = 'México D.F.';


3. Output only those orders that were placed from 12.12.1996 to 18.02.1997

SELECT * FROM Orders 
WHERE OrderDate BETWEEN '12-12-1996' AND '18-02-1997';


4. Output only those customers whose company name begins with 'An'

SELECT * FROM Customers
WHERE CompanyName LIKE 'An%';


5. Print the names of companies and the orders they have placed with an order amount greater than 17000. Use table join

SELECT Customers.CompanyName, Orders.OrderID 
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
WHERE Orders.OrderSum > 17000;


6. Output the following columns: supplier name, order amount. Sort the results by supplier in descending order

SELECT Customers.CompanyName, Orders.OrderSum
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID 
ORDER BY Customers.CompanyName DESC;


7. Output the following columns: supplier name, order date. Output in such a way that all customers from table 1 are shown in the result table

SELECT Customers.CompanyName, Orders.OrderDate
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

