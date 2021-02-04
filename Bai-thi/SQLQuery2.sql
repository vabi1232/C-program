CREATE DATABASE SellingPoint
GO
USE SellingPoint
GO

CREATE TABLE Categories
(
	CateID char(6) PRIMARY KEY,
	CateName nvarchar(100) NOT NULL,
	Description nvarchar(200)
)
GO
INSERT INTO Categories VALUES (1,'RAM','abc'),
							  (2,'CPU','def'),
							  (3,'HDD','ghi')
GO
SELECT * FROM Categories
GO
							

CREATE TABLE Parts 
(		
	PartID int PRIMARY KEY IDENTITY,
	PartName nvarchar(100) NOT NULL,
	CateID char(6),
	Description nvarchar(1000),
	Price money NOT NULL DEFAULT '0',
	Quantity int DEFAULT '0',
	Warranty int DEFAULT '1',
	Photo nvarchar(200) DEFAULT 'photo/nophoto.png',
	CONSTRAINT C_ID FOREIGN KEY (CateID) REFERENCES Categories(CateID)
)
GO
INSERT INTO Parts VALUES ('AAA', 1, '1A', 100, 111, 1111,'photo/nophoto.png'),
						 ('BBB', 2, '2A', 200, 222, 2222,'photo/nophoto.png'),
						 ('CCC', 3, '3A', 300, 333, 3333,'photo/nophoto.png')
GO
SELECT * FROM Parts
GO

--4. List all parts in the store with price > 100$.
SELECT * FROM Parts
WHERE Price > 100
GO

--5. List all parts of the category ‘CPU’.
SELECT c.CateName,p.PartName
FROM Categories c
JOIN Parts p ON p.CateID=c.CateID
WHERE c.CateName='CPU'
GO

--6. Create a view v_Parts contains the following information (PartID, PartName, CateName, Price, Quantity) from table Parts and Categories.
CREATE VIEW V_Parts AS
SELECT P.PartID, P.PartName, C.CateName, P.Price, P.Quantity
FROM Parts P
JOIN Categories C ON C.CateID=P.CateID
GO

--7. Create a view v_TopParts about 5 parts with the most expensive price.