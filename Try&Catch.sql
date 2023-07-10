BEGIN TRY
    BEGIN TRANSACTION;

    INSERT INTO Customers (CustomerName) VALUES ('John Doe'); -- Assuming CustomerName is a unique column

    COMMIT;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK;

    PRINT 'An error occurred: ' + ERROR_MESSAGE();
END CATCH;

