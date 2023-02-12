/****** Script for SelectTopNRows command from SSMS  ******/

-- all rows 

SELECT *
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]


  -- 2 ) Count all rows 

  SELECT 
  SUM([TotalDue])
   FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]


   -- 3 ) Adding new fields to aggretate query 
   SELECT TotalSalse = Sum(TotalDue),
   SalesPersonID

   FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
   Group By SalesPersonID


   --4) using over() 

   SELECT[BusinessEntityID]
      ,[TerritoryID]
      ,[SalesQuota]
      ,[Bonus]
      ,[CommissionPct]
      ,[SalesYTD]
      ,[SalesLastYear]
	  ,[Total YID Sales] = SUM([SalesYTD]) OVER()
	  ,[Max YIT Sales] = MAX([SalesYTD]) OVER()
	  ,[% of the best Performer ] =  [SalesYTD] /MAX([SalesYTD]) OVER()
  FROM [AdventureWorks2019].[Sales].[SalesPerson]