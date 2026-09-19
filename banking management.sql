create database banking_db;
use banking_db;
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_number VARCHAR(20),
    customer_name VARCHAR(20),
    account_type VARCHAR(30),
    branch VARCHAR(50),
    city VARCHAR(50),
    balance DECIMAL(12,2),
    credit_score INT,
    status VARCHAR(20),
    opened_date DATE
);
INSERT INTO accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
VALUES
(1001, 'ACC10001', 'Aarav Sharma', 'Savings', 'FC Road', 'Pune', 85000, 780, 'Active', '2025-01-01');

INSERT INTO accounts
(account_id, account_number, customer_name, account_type, branch, city, balance, credit_score, status, opened_date)
VALUES
(1002, 'ACC10002', 'Priya Patil', 'Current', 'Andheri', 'Mumbai', 145000, 810, 'Active', '2024-11-20'),

(1003, 'ACC10003', 'Rohan Joshi', 'Savings', 'Baner', 'Pune', 42000, 735, 'Active', '2026-02-10'),

(1004, 'ACC10004', 'Sneha Kulkarni', 'Salary', 'Nashik Road', 'Nashik', 67000, 760, 'Active', '2025-08-05'),

(1005, 'ACC10005', 'Vikram Deshmukh', 'Savings', 'Camp', 'Pune', 18500, 690, 'Dormant', '2023-06-18'),

(1006, 'ACC10006', 'Neha More', 'Current', 'Thane', 'Mumbai', 225000, 825, 'Active', '2024-03-01');


SELECT * FROM accounts;
SELECT customer_name, account_number FROM accounts;