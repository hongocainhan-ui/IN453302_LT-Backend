
USE CourseRegistrationDB;
GO

BEGIN TRANSACTION;

UPDATE TestAccounts
SET balance = balance - 200000
WHERE account_id = 1;

COMMIT TRANSACTION;

SELECT * FROM TestAccounts;
GO
