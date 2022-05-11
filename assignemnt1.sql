Use AdventureWorks2019

Go
--1. Write a query that retrieves the columns ProductID, Name, Color and ListPrice from the Production.Product table, with no filter. 
SELECT ProductID, Name, Color , ListPrice
FROM Production.Product

--2. Write a query that retrieves the columns 
--ProductID, Name, Color and ListPrice from the 
--Production.Product table,excluding the rows that ListPrice is 0.
SELECT ProductID, Name, Color , ListPrice
FROM Production.Product
Where ListPrice != 0

--3. Write a query that retrieves the columns ProductID, Name,
--Color and ListPrice from the Production.Product table, the rows that are not NULL for the Color column.
SELECT ProductID, Name, Color , ListPrice
FROM Production.Product
Where Color Is Not Null

--4. Write a query that retrieves the columns ProductID, Name,
--Color and ListPrice from the Production.Product table,
--the rows that are not NULL for the column Color, and the column ListPrice has a value greater than zero.
SELECT ProductID, Name, Color , ListPrice
FROM Production.Product
Where Color Is Not Null And ListPrice >0

--5. Write a query that concatenates the columns Name and Color
--from the Production.Product table by excluding the rows that are null for color.
SELECT Concat(Name ,Color) AS NameColor
FROM Production.Product
Where Color Is Not Null

--6. Write a query that generates the following result set from
--Production.Product:
--NAME: LL Crankarm  --  COLOR: Black
--NAME: ML Crankarm  --  COLOR: Black
--NAME: HL Crankarm  --  COLOR: Black
--NAME: Chainring Bolts  --  COLOR: Silver
--NAME: Chainring Nut  --  COLOR: Silver
--NAME: Chainring  --  COLOR: Black
SELECT  Name, Color 
FROM Production.Product
Where  Name Like '%Crankarm'OR Name Like 'Chainring%'

--7.Write a query to retrieve the to the columns ProductID and Name from the Production.Product table filtered by ProductID from 400 to 500 using between
SELECT ProductID, Name
FROM Production.Product
Where ProductID Between 400 And 500

--8. Write a query to retrieve the to the columns  ProductID,
--Name and color from the Production.Product table restricted to the colors black and blue
SELECT ProductID, Name,Color
FROM Production.Product
Where Color ='Black' OR Color='Blue'

--9. Write a query to get a result set on products that begins with the letter S. 
Select Name
From Production.Product
Where Name Like 'S%'

--10. Write a query that retrieves the columns Name and ListPrice
--from the Production.Product table. Your result set should look 
--something like the following. Order the result set
SELECT Name,  ListPrice
FROM Production.Product
Where Name Like'A%' OR Name Like 'S%'



--11. Write a query so you retrieve rows
--that have a Name that begins with the letters SPO,
--but is then not followed by the letter K. 
--After this zero or more letters can exists. Order the result set by the Name column.
SELECT Name
FROM Production.Product
Where Name Like'SPO[^K]%' 


--12. Write a query that retrieves the unique combination of
--columns ProductSubcategoryID and Color from the Production.Product table.
--We do not want any rows that are NULL.in any of the two columns in the result. 
--(Hint: Use IsNull)

Select ProductSubcategoryID ,Color
From Production.Product
Where ProductSubcategoryID Is Not Null And Color Is Not Null
