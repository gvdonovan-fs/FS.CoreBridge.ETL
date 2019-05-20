ALTER PROCEDURE usp_CreateFile
       @BatchId  INT,
       @StepId INT,
       @FileType INT,
       @FileName NVARCHAR(100),
       @FileId   INT OUTPUT
AS
     INSERT INTO dbo.[File]
       SELECT @BatchId,
              @StepId,
              @FileType,
              @FileName,
              0
     SELECT @FileId = SCOPE_IDENTITY();