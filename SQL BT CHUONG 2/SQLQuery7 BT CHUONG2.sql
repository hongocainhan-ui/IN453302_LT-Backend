
USE CourseRegistrationDB;
GO

BEGIN TRANSACTION;

UPDATE TestAccounts
SET balance = balance - 200000
WHERE account_id = 1;

SELECT * FROM TestAccounts;

ROLLBACK TRANSACTION;
GO

SELECT * FROM TestAccounts;
GO
