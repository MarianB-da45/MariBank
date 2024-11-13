-- create statement

--create all the tables in our database (Customer, Transaction, Employees, Accounts, Loans, Branches)

-- Customer Table
create table customers(
	customerid int Primary key,
	firstName varchar(255),
	lastName varchar(255),
	dateofBirth Date, 
	address text,
	phonenumber varchar(20),
	city varchar(255)
);

-- Accounts Table
create table account(
	accountNumber int primary key,
	customerid int,
	accountType varchar(20),
	balance decimal(15, 2 ),
	dateopened date,
	foreign key (customerid) references customers(customerid)
);

-- Branch Table
create table branches(
	branchid int primary key,
	branchname varchar(255),
	branchaddress varchar(255),
	branchphonenumber varchar(20)
);

-- Transaction Table
create table transactions(
	transactionid int primary key,
	accountNumber int,
	transactionType varchar(255),
	amount decimal (10, 2 ),
	transactionDate date,
	foreign key (accountNumber) references account(accountNumber)
);

-- Employee Table
create table employees(
	employeeid int primary key,
	Name varchar(255),
	position varchar(255),
	branchid int,
	HireDate date,
	foreign key (branchid) references branches(branchid)	
);

-- Loan Table
create table loans(
	loanid int primary key,
	customerid int,
	loanamount decimal(15, 2 ),
	loantype varchar(30),
	issuedate date,
	interestrate decimal(15, 2 ),
	foreign key(customerid) references customers(customerid)
);


-- ALTER STATEMENT
-- QUESTION 1
alter table customers add email varchar(255);

-- QUESTION 2
alter table loan alter column interestrate type float;

-- QUESTION 3
 alter table customers add unique(phoneNumber);



-- Drop Statement
Drop Table employees;


Drop Table Transactions
Drop Table Branches;
Drop Table account;
Drop Table transactions;
Drop Table customers;

Alter table loan drop constraint loan_customerid_fkey;
Drop Table customers;
Drop Table loan;

-- Create all the statement in our database (Customer, Transactions, Employees, Accounts, Loan and Branches)  



 