CREATE DATABASE IF NOT EXISTS hamburguesas_donRiku;

USE hamburguesas_donRiku;

CREATE TABLE Customer(
    customer_number VARCHAR(8) PRIMARY KEY NOT NULL,
    nameid VARCHAR(255),
    member_number VARCHAR(5) UNIQUE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Employee(
    employee_id VARCHAR(255) NOT NULL PRIMARY KEY, 
    employee_name VARCHAR(255) NOT NULL,
    age VARCHAR(3) NOT NULL,
    incorporation_date DATE TIME NOT NULL,
    rfc_key VARCHAR(13) UNIQUE NOT NULL,
    

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Menu(
    product_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    productprice VARCHAR(5) NOT NULL,
    productname TEXT NOT NULL

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Purchase(
    transaction_name VARCHAR(4) PRIMARY KEY,
    employe_name TEXT NOT NULL,
    transaction_time DATE TIME NOT NULL,
    transaction_date DATE TIME NOT NULL,
    branch_adress TEXT NOT NULL,
    purchased_product TEXT NOT NULL,
    total_amount VARCHAR (5) NOT NULL,
    FOREIGN KEY(employee_name)
    REFERENCES Employee (employee_name)
    ON DELETE RESTRICT
    ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Sale(
    transaction_number INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    employee_name TEXT NOT NULL,
    transaction_date DATE TIME NOT NULL,
    trasaction_time DATE TIME NOT NULL,
    total_amount VARCHAR (5) NOT NULL
    FOREIGN KEY(employee_name)
    REFERENCES Employee (employee_name)
    ON DELETE RESTRICT
    ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Complaints(
    complaint_id VARCHAR(255) PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    date_id DATE TIME NO NULL,
    commentary TEXT NOT NULL
    FOREIGN KEY(customer_name)
    REFERENCES Customer (customer_name)
    ON DELETE RESTRICT
    ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;