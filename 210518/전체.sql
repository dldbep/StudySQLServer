/*SELECT pc.ProductCategoryID
     , pc.Name
  FROM SalesLT.ProductCategory AS pc;*/    --�ʿ� ������
 
 -- data�� 295��
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
 
-- CUSTOMER    847�� ������, ADDRESS 450�� , CustomerAddress 417��
SELECT CONCAT(c.Title, ' ' , c.FirstName, ' ' , c.MiddleName , ' ', c.LastName)
	 , c.CustomerID
     , c.CompanyName, c.EmailAddress, c.Phone
  FROM SalesLT.Customer AS c;


SELECT ad.AddressID, ad.PostalCode
     , CONCAT(ad.addressline1, ' ', ad.AddressLine2, ',', ad.City, ',',ad.StateProvince) AS addr
	 , ad.CountryRegion AS Country
  FROM SalesLT.Address AS ad

SELECT ca.CustomerID, ca.AddressID, CA.AddressType FROM SalesLT.CustomerAddress AS ca

--��ϵ� ���� �ּұ��� ��ϵ� ��
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

--��� ��
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





