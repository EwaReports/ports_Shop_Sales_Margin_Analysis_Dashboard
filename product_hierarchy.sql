-- Purpose: Create product hierarchy (product → subcategory → category) for pricing analysis
-- Includes all products using LEFT JOIN to retain items without subcategory assignment
-- Source: AdventureWorksDW2025
SELECT 
       P.[ProductKey]
      ,P.[ProductSubcategoryKey]
      ,P.[EnglishProductName]
      ,P.[StandardCost]
      ,P.[ListPrice]
      ,SUB.[ProductCategoryKey]
      ,SUB.[EnglishProductSubcategoryName]
      ,C.[ProductCategoryKey]
      ,C.[EnglishProductCategoryName]
  FROM [AdventureWorksDW2025].[dbo].[DimProduct] AS P
  LEFT JOIN dbo.DimProductSubcategory AS SUB ON P.ProductSubcategoryKey = SUB.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory AS C ON C.ProductCategoryKey = SUB.ProductCategoryKey