--Create Sales Table
CREATE TABLE Sales
(
    SaleID INT PRIMARY KEY,
    StoreID INT,
    CustomerID INT,
    SaleDate DATE
);

--Inserting Values into Sales
DECLARE @i INT = 1;

WHILE @i <= 1200   -- (1000+ condition fulfilled)
BEGIN
    INSERT INTO Sales
    VALUES (
        @i,
        (ABS(CHECKSUM(NEWID())) % 25) + 1,   -- StoreID 1–25
        (ABS(CHECKSUM(NEWID())) % 300) + 1,  -- CustomerID 1–300
        DATEADD(DAY, - (ABS(CHECKSUM(NEWID())) % 730), GETDATE())
    );

    SET @i = @i + 1;
END;

SELECT * FROM Sales