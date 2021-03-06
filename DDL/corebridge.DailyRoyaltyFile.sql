CREATE TABLE [CoreBridge].[DailyRoyaltyFile](
	[BatchId] [int] NOT NULL,
	[FileId] [int] NOT NULL,	
	[CompanyLocationId] [varchar](13) NOT NULL,
	[LocationNumber] [varchar](200) NOT NULL,
	[RoyaltyGroupId] [int] NOT NULL,
	[RoyaltyGroupName] [varchar](200) NOT NULL,
	[PlanId] [int] NOT NULL,
	[PlanName] [varchar](200) NOT NULL,
	[TaxableAmount] [money] NULL,
	[NonTaxableAmount] [money] NULL,
	[ShippingAmount] [money] NULL,
	[PostageAmount] [money] NULL,
	[DiscountAmount] [money] NULL,
	[TaxAmount] [money] NULL,
	[RevenueAmount] [money] NULL,
	[RoyaltyAmount] [money] NULL,
	[SubTotalAmount] [money] NULL,
	[TotalSalesAmount] [money] NULL,
	[Currency] [varchar](10) NOT NULL
) ON [PRIMARY]