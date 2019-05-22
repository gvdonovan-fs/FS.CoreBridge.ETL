CREATE TABLE [dbo].[Batch]
(	
	[BatchId] [int] IDENTITY(1,1) NOT NULL,
	[BatchTypeId] [int] NOT NULL,
	[StartTime] datetime default getdate(),
	[EndTime] datetime NULL
)

CREATE TABLE [dbo].[BatchStep]
(	
	[BatchId] [int] NOT NULL,
	[StepId] [int] NOT NULL,
	[StartTime] datetime NULL,
	[EndTime] datetime NULL
)

CREATE TABLE [dbo].[BatchType]
(	
	[BatchTypeId] [int] IDENTITY(1,1) NOT NULL,	
	[Name] nvarchar(100) NOT NULL
)

CREATE TABLE [dbo].[Step]
(
	[StepId] [int] IDENTITY(1,1) NOT NULL,	
	[StepType] nvarchar(100) NOT NULL,
	[StepSource] nvarchar(100) NOT NULL,
	[Name] nvarchar(100) NOT NULL 
)

CREATE TABLE [dbo].[BatchTypeStep]
(	
	[BatchTypeId] [int] NOT NULL,	
	[StepId] [int] NOT NULL,
	[Sequence] [int] NOT NULL
)

CREATE TABLE [dbo].[File]
(	
	[FileId] [int] IDENTITY(1,1) NOT NULL,	
	[BatchId] [int] NOT NULL,
	[StepId] [int] NOT NULL,
	[FileType] [int] NOT NULL,	
	[FileName] nvarchar(100) NOT NULL,
	[Status] [int] NOT NULL
)

--
-- seed initial batch type
--

--insert into [BatchType] SELECT 'Process CoreBridge Daily Royalty Files';

--insert into [Step] 
--select 'Package', 'LoadDailyRoyaltyFiles.dtsx', 'Load Daily Royalty Files (dat)' union
--select 'Package', 'ExtractDailyRoyaltyFile.dtsx', 'Extract Daily Royalty File (csv)';

--insert into [BatchTypeStep] 
--select [BatchTypeId], [StepId], [Sequence] = row_number() over(order by [StepId])
--from [BatchType]
--cross join Step