--KPI Cards Query
--Total Revenue
SELECT SUM(P.Price * SD.Quantity) AS Revenue
FROM Products P
JOIN SalesDetails SD
	ON P.ProductID = SD.ProductID

--Total Customers
SELECT COUNT(DISTINCT CustomerID) AS TotalCustomers
FROM Sales

--Average Transcation value
SELECT SUM(P.Price * SD.Quantity) / COUNT(DISTINCT (S.SaleID)) AS AverageTranscation 
FROM Products P
JOIN SalesDetails SD
	ON P.ProductID = SD.ProductID
JOIN Sales S
	ON S.SaleID = SD.SaleID

--DashBoard Visulization
--Revenue By Store
SELECT ST.StoreName, SUM(P.Price * SD.Quantity) AS StoreRevenue
FROM Sales S
JOIN Stores ST
	ON S.StoreID = ST.StoreID
JOIN SalesDetails SD
	ON S.SaleID = SD.SaleID
JOIN Products P
	ON SD.ProductID = P.ProductID
GROUP BY ST.StoreName 
ORDER BY StoreRevenue DESC


--Revenue By Category
SELECT P.Category , SUM(P.Price * SD.Quantity) AS CategoryRevenue 
FROM Sales S
JOIN SalesDetails SD
	ON S.SaleID = SD.SaleID
JOIN Products P
	ON SD.ProductID = P.ProductID
GROUP BY P.Category
ORDER BY CategoryRevenue DESC

--Monthly Revenue Trend Line
SELECT
DATENAME(MONTH, SaleDate) AS MonthNo,
SUM(p.Price * sd.Quantity) AS Revenue
FROM Sales s
JOIN SalesDetails sd
ON s.SaleID = sd.SaleID
JOIN Products p
ON sd.ProductID = p.ProductID
GROUP BY DATENAME(MONTH, SaleDate)
ORDER BY Revenue DESC;


--Revenue For Year
SELECT
DATENAME(YEAR, SaleDate) AS YearNo,
SUM(p.Price * sd.Quantity) AS Revenue
FROM Sales s
JOIN SalesDetails sd
ON s.SaleID = sd.SaleID
JOIN Products p
ON sd.ProductID = p.ProductID
GROUP BY DATENAME(YEAR, SaleDate)
ORDER BY Revenue DESC;


--Top 10 Product
SELECT TOP 10 P.ProductName, SUM(SD.Quantity) AS QtySold
FROM Sales S
JOIN SalesDetails SD
	ON S.SaleID = SD.SaleID
JOIN Products P
	ON SD.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY QtySold DESC


--Revenue By Region
SELECT ST.Region, SUM(P.Price * SD.Quantity) as Revenue
FROM Sales S
JOIN SalesDetails SD
	ON S.SaleID = SD.SaleID
JOIN Products P
	ON SD.ProductID = P.ProductID
JOIN Stores ST
	ON ST.StoreID = S.StoreID
GROUP BY ST.Region
