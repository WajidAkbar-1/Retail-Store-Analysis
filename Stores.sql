--Create Stores Table
CREATE TABLE Stores
(
    StoreID INT PRIMARY KEY,
    StoreName VARCHAR(100),
    City VARCHAR(50),
    Region VARCHAR(50)
);

--Inserting Values into Stores

INSERT INTO Stores VALUES (1,'Alfa Store','Peshawar','North');
INSERT INTO Stores VALUES (2,'Metro Mart','Karachi','South');
INSERT INTO Stores VALUES (3,'City Center','Lahore','Central');
INSERT INTO Stores VALUES (4,'Super Shop','Islamabad','North');
INSERT INTO Stores VALUES (5,'Bazaar Hub','Quetta','West');
INSERT INTO Stores VALUES (6,'Green Mart','Faisalabad','Central');
INSERT INTO Stores VALUES (7,'Smart Store','Multan','South');
INSERT INTO Stores VALUES (8,'Urban Shop','Peshawar','North');
INSERT INTO Stores VALUES (9,'Royal Mart','Karachi','South');
INSERT INTO Stores VALUES (10,'Daily Needs','Lahore','Central');
INSERT INTO Stores VALUES (11,'Family Store','Islamabad','North');
INSERT INTO Stores VALUES (12,'Value Mart','Quetta','West');
INSERT INTO Stores VALUES (13,'Mega Store','Faisalabad','Central');
INSERT INTO Stores VALUES (14,'Easy Shop','Multan','South');
INSERT INTO Stores VALUES (15,'Fresh Mart','Peshawar','North');
INSERT INTO Stores VALUES (16,'Prime Store','Karachi','South');
INSERT INTO Stores VALUES (17,'Best Buy','Lahore','Central');
INSERT INTO Stores VALUES (18,'Quick Shop','Islamabad','North');
INSERT INTO Stores VALUES (19,'One Stop','Quetta','West');
INSERT INTO Stores VALUES (20,'Local Mart','Faisalabad','Central');
INSERT INTO Stores VALUES (21,'Budget Store','Multan','South');
INSERT INTO Stores VALUES (22,'Express Mart','Peshawar','North');
INSERT INTO Stores VALUES (23,'Super Saver','Karachi','South');
INSERT INTO Stores VALUES (24,'Mega Value','Lahore','Central');
INSERT INTO Stores VALUES (25,'Smart Buy','Islamabad','North');


SELECT * FROM Stores