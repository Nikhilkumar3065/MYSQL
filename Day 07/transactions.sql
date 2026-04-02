-- Step 1: Create Database
CREATE DATABASE IF NOT EXISTS BankDB;
USE BankDB;

-- Step 2: Create Table
CREATE TABLE Accounts (
    Acc_No INT PRIMARY KEY,
    Name VARCHAR(50),
    Balance DECIMAL(10,2)
);

-- Step 3: Insert Sample Data
INSERT INTO Accounts VALUES
(101, 'Arjun', 15000.00),
(102, 'Priya', 10000.00);

select * from accounts;

-- check weather it is in on(1) or off(0)
select @@autocommit;
set autocommit = 0;

start transaction;
-- deduct 5000 from arjun
update accounts
set balance = balance - 5000
where acc_no = 101;
-- add 5000 to priya
update accounts
set balance = balance + 5000
where acc_no = 102;
-- check before commit
select * from accounts;
-- save changes permanently
commit;
-- check after commit
select * from accounts;

 start transaction;
 -- deduct 2000 from arjun
 update accounts
 set balance = balance - 2000
 where acc_no = 101;
 
 -- check before rollback
 select * from accounts;
 rollback;
 select * from accounts;