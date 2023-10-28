SELECT *
FROM Customer;
SELECT State
FROM Customer;
SELECT LastName,
  OrderID
FROM Customer
  JOIN Orders ON Orders.CustomerID = Customer.CustomerID;
SELECT Customer.CustomerID,
  FirstName,
  LastName,
  SUM(TotalDue)
FROM Customer
  JOIN Orders ON Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.CustomerID,
  FirstName,
  LastName
ORDER BY SUM(TotalDue) DESC
LIMIT 10;