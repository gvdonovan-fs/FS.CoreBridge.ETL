USE [fs-dw-stg]
GO

/****** Object:  Table [CoreBridge].[DailyRoyaltyFileV1]    Script Date: 6/7/2019 3:08:19 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [CoreBridge].[DailyRoyaltyFileV1](
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
GO

