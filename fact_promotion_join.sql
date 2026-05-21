-- Purpose: Join FactInternetSales with Promotion dimension
-- Goal: Analyze impact of promotions on sales and pricing
-- Source: AdventureWorksDW2025
SELECT
       S.[ProductKey]
      ,S.[OrderDateKey]
      ,S.[PromotionKey]
      ,P.[EnglishPromotionName]
      ,P.[DiscountPct]
      ,P.[EnglishPromotionType]
      ,P.[EnglishPromotionCategory]
      ,P.[StartDate]
      ,P.[EndDate]
      ,P.[MinQty]
      ,P.[MaxQty]
      ,S.[SalesOrderNumber]
      ,S.[OrderQuantity]
      ,S.[ProductStandardCost]
      ,S.[TotalProductCost]
      ,S.[SalesAmount]
  FROM [AdventureWorksDW2025].[dbo].[FactInternetSales] AS S
  JOIN dbo.DimPromotion AS P ON S.PromotionKey = P.PromotionKey