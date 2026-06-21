--Create SalesDetails Table
CREATE TABLE SalesDetails
(
    SaleDetailID INT PRIMARY KEY,
    SaleID INT,
    ProductID INT,
    Quantity INT
);

--Inserting Values into SalesDetails
DECLARE @i INT = 1;

WHILE @i <= 3000   -- safe above 2500
BEGIN
    INSERT INTO SalesDetails
    VALUES (
        @i,
        (ABS(CHECKSUM(NEWID())) % 1200) + 1,  -- SaleID
        (ABS(CHECKSUM(NEWID())) % 100) + 1,   -- ProductID
        (ABS(CHECKSUM(NEWID())) % 5) + 1      -- Quantity 1–5
    );

    SET @i = @i + 1;
END;


SELECT * FROM SalesDetails