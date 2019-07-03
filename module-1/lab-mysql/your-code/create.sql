CREATE database HOTEL_Transaction;
USE HOTEL_Transaction;
CREATE TABLE customer (Client_ID VARCHAR(20), nom varchar(20), primary key(Client_ID));
CREATE TABLE supplier (supplier_ID VARCHAR(20), primary key(supplier_ID));
CREATE TABLE price (price float(3), roomtype varchar(20));
CREATE TABLE transaction (transaction_id varchar(20), Transaction_date date, Price varchar(20), Payment_Type varchar(20),primary key(transaction_id));
CREATE TABLE adresse (id int(6), state varchar(20), city varchar(20), country varchar(20));
CREATE TABLE CustomerSales (transaction_id varchar(20), Transaction_date date, supplier_ID VARCHAR(20),
price float(3), Payment_Type varchar(20), Client_ID VARCHAR(20), 
city varchar(20), state varchar(20), country varchar(20));