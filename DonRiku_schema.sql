CREATE DATABASE IF NOT EXISTS hamburguesas_donRiku;

USE hamburguesas_donRiku;

CREATE TABLE Customer(
    customer_number VARCHAR(8) PRIMARY KEY NOT NULL,
    customer_name VARCHAR(255),
    nameid VARCHAR(255),
    member_number VARCHAR(5) UNIQUE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Employe(
    employe_id VARCHAR(255) NOT NULL PRIMARY KEY, 
    employe_name VARCHAR(255) NOT NULL,
    age VARCHAR(3) NOT NULL,
    incorporation_date DATETIME NOT NULL,
    rfc_key VARCHAR(13) UNIQUE NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Menu(
    product_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    productprice VARCHAR(5) NOT NULL,
    productname TEXT NOT NULL

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Purchase(
    transaction_name VARCHAR(4) PRIMARY KEY,
    employe_id VARCHAR(255) NOT NULL, 
    transaction_time DATETIME NOT NULL,
    transaction_date DATETIME NOT NULL,
    branch_adress TEXT NOT NULL,
    purchased_product TEXT NOT NULL,
    total_amount VARCHAR(5) NOT NULL,
    FOREIGN KEY(employe_id)
    REFERENCES Employe (employe_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Sale(
    transaction_number INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    employe_id VARCHAR(255) NOT NULL, 
    transaction_date DATETIME NOT NULL,
    trasaction_time DATETIME NOT NULL,
    total_amount VARCHAR (5) NOT NULL,
    FOREIGN KEY(employe_id)
    REFERENCES Employe (employe_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Complaints(
    complaint_id VARCHAR(255) PRIMARY KEY,
    customer_number VARCHAR(255),
    date_id DATETIME NOT NULL,
    commentary TEXT NOT NULL,
    FOREIGN KEY(customer_number)
    REFERENCES Customer (customer_number)
    ON DELETE RESTRICT
    ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO menu (product_id, product_name, product_price) VALUES
    (1, 'Hamburguesa sencilla'),
    (2, 'Hamburguesa doble'),
    (3, 'Hamburguesa hawaiana'),
    (4, 'Hamburguesa de pollo'),
    (5, 'Hamburguesa angus'),
    (6, 'Hamburguesa BBQ'),
    (7, 'Hamburguesa roast beef'),
    (8, 'Hamburguesa vegetariana'),
    (9, 'Papas a la francesa'),
    (10, 'Aros de cebolla'),
    (11, 'Agua embotellada'),
    (12, 'Refresco de manzana'),
    (13, 'Refresco de cola'),
    (14, 'Refresco de naranja'),
    (15, 'Refresco de limon'),
    (16, 'Malteada de chocolate'),
    (17, 'Malteada de fresa'),
    (18, 'Malteada de vainilla');
