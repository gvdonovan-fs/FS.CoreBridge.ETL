ALTER PROCEDURE usp_CreateBatch @Source VARCHAR(100)
AS
     DECLARE @BatchId INT;
     INSERT INTO [Batch]([BatchTypeId])
            SELECT bt.[BatchTypeId]
            FROM [BatchType] bt
                 JOIN BatchTypeStep bts ON bt.[BatchTypeId] = bts.[BatchTypeId]
                 JOIN Step s ON bts.[StepId] = s.[StepId]
            WHERE bts.[Sequence] = 1
                  AND s.[StepSource] = @Source;
     SELECT @BatchId = SCOPE_IDENTITY();
     INSERT INTO [BatchStep]
     ([BatchId], 
      [StepId], 
      [StartTime]
     )
            SELECT b.[BatchId], 
                   s.[StepId], 
                   [StartTime] = CASE
                                     WHEN bts.[Sequence] = 1
                                     THEN GETDATE()
                                     ELSE NULL
                                 END
            FROM [Batch] b
                 JOIN [BatchType] bt ON b.[BatchTypeId] = bt.[BatchTypeId]
                 JOIN [BatchTypeStep] bts ON bt.[BatchTypeId] = bts.[BatchTypeId]
                 JOIN [Step] s ON bts.[StepId] = s.[StepId]
            WHERE b.[BatchId] = @BatchId;
     SELECT bs.[BatchId], 
            bs.[StepId]
     FROM [BatchStep] bs
          JOIN [Batch] b ON bs.[BatchId] = b.[BatchId]
          JOIN [BatchType] bt ON b.[BatchTypeId] = bt.[BatchTypeId]
          JOIN [BatchTypeStep] bts ON bt.[BatchTypeId] = bts.[BatchTypeId]
                                      AND bs.[StepId] = bts.[StepId]
          JOIN Step s ON bts.[StepId] = s.[StepId]
     WHERE b.[BatchId] = @BatchId
           AND bts.[Sequence] = 1;