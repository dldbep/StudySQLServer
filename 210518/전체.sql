/*SELECT pc.ProductCategoryID
     , pc.Name
  FROM SalesLT.ProductCategory AS pc;*/    --필요 없어짐
 
 -- data수 295개
SELECT pd.Name, pd.ProductNumber
     , pd.Color, pd.StandardCost
	 , pd.ListPrice, pd.Size, pd.Weight
	 --, pc.ProductCategoryID
     , pc.Name AS category_Name
  FROM SalesLT.Product AS pd
 INNER JOIN SalesLT.ProductCategory AS pc
	ON pd.ProductCategoryID = pc.ProductCategoryID
 
SELECT pd.Name, pd.ProductNumber
     , pd.Color, pd.StandardCost
	 , pd.ListPrice, pd.Size, pd.Weight
	 --, pc.ProductCategoryID
     , pc.Name AS category_Name
  FROM SalesLT.Product AS pd
 RIGHT OUTER JOIN SalesLT.ProductCategory AS pc
	ON pd.ProductCategoryID = pc.ProductCategoryID
 
-- CUSTOMER    847개 데이터, ADDRESS 450개 , CustomerAddress 417개
SELECT CONCAT(c.Title, ' ' , c.FirstName, ' ' , c.MiddleName , ' ', c.LastName)
	 , c.CustomerID
     , c.CompanyName, c.EmailAddress, c.Phone
  FROM SalesLT.Customer AS c;


SELECT ad.AddressID, ad.PostalCode
     , CONCAT(ad.addressline1, ' ', ad.AddressLine2, ',', ad.City, ',',ad.StateProvince) AS addr
	 , ad.CountryRegion AS Country
  FROM SalesLT.Address AS ad

SELECT ca.CustomerID, ca.AddressID, CA.AddressType FROM SalesLT.CustomerAddress AS ca

--등록된 고객중 주소까지 등록된 고객
SELECT CONCAT(c.Title, ' ' , c.FirstName, ' ' , c.MiddleName , ' ', c.LastName) AS FullName
	 , c.CustomerID
     , c.CompanyName, c.EmailAddress, c.Phone
	 , ca.AddressID, CA.AddressType
	 , ad.PostalCode
     , CONCAT(ad.addressline1, ' ', ad.AddressLine2, ',', ad.City, ',',ad.StateProvince) AS addr
	 , ad.CountryRegion AS Country
  FROM SalesLT.Customer AS c
 INNER JOIN SalesLT.CustomerAddress AS ca
    ON c.CustomerID = ca.CustomerID
 INNER JOIN SalesLT.Address AS ad
    ON ad.AddressID = ca.AddressID

--모든 고객
SELECT CONCAT(c.Title, ' ' , c.FirstName, ' ' , c.MiddleName , ' ', c.LastName) AS FullName
	 , c.CustomerID
     , c.CompanyName, c.EmailAddress, c.Phone
	 , ca.AddressID, CA.AddressType
	 , ad.PostalCode
     , CONCAT(ad.addressline1, ' ', ad.AddressLine2, ',', ad.City, ',',ad.StateProvince) AS addr
	 , ad.CountryRegion AS Country
  FROM SalesLT.Customer AS c
 LEFT OUTER JOIN SalesLT.CustomerAddress AS ca
    ON c.CustomerID = ca.CustomerID
 LEFT OUTER JOIN SalesLT.Address AS ad
    ON ad.AddressID = ca.AddressID





