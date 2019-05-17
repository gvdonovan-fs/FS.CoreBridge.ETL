ALTER PROCEDURE usp_CreateFile @BatchId  INT, 
                               @FileType INT, 
                               @FileName NVARCHAR(100), 
                               @FileId   INT OUTPUT
AS
     INSERT INTO dbo.[File]
            SELECT @BatchId, 
                   @FileType, 
                   @FileName;
     SELECT @FileId = SCOPE_IDENTITY();