SELECT
    [FSI].[ID] ,
    UPPER(FSI.[zw_franchise_id]) AS ZW_Franchise_ID ,
    [DateTime] ,
    [OrderID] ,
    [CustomerID] ,
    [RecordID] ,
    [AccountCode] ,
    [UserID] ,
    [Amount] ,
    [Description] ,
    [Closed] ,
    [ClosedDate] ,
    [Exported] ,
    [ExportedDate] ,
    [ExportedBatch] ,
    [EnteredByID] ,
    [SubAccountCode] ,
    [Taxable] ,
    [Consolidated] ,
    [Category] ,
    [sys_di] AS OLTP_InsertDate ,
    [sys_du] AS OLTP_UpdateDate ,
    [RoyaltyGroupID] ,
    [ModifiedByComputer] ,
    [ModifiedDate] ,
    [OrderDetailID] ,
    [ProductID]
FROM
    FSI.dbo.[GL Database] FSI 
    --JOIN tempdb.dbo.GLFact tmp ON tmp.ZW_Franchise_ID = FSI.zw_franchise_id
WHERE
    FSI.ID > 0
    AND FSI.sys_du > '2019-05-31' 
	AND ClosedDate > '2019-05-31'