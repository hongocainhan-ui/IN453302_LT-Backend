
USE CourseRegistrationDB;
GO

CREATE TABLE TestAccounts (
    account_id INT PRIMARY KEY,
    balance INT NOT NULL
);

INSERT INTO TestAccounts (account_id, balance)
VALUES (1, 1000000);
GO

SELECT * FROM TestAccounts;
GO
