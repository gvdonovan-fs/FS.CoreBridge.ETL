CREATE TABLE [stg].[CoreBridgeDailyRoyaltyFile](
	[FileName] [varchar] (100) NOT NULL,
	[BatchDateTime] [datetime] NOT NULL,
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
	[RevenueAmount] [money] NULL,
	[RoyaltyAmount] [money] NULL,
	[Currency] [varchar](10) NOT NULL
) ON [PRIMARY]