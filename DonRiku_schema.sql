CREATE DATABASE IF NOT EXISTS hamburguesas_donRiku;

USE hamburguesas_donRiku;

CREATE TABLE Customer(
    customer_number INTEGER PRIMARY KEY NOT NULL,
    customer_name VARCHAR(255) NOT NULL,
    member_number VARCHAR(5) UNIQUE NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Employe(
    employe_id INTEGER PRIMARY KEY NOT NULL, 
    employe_name VARCHAR(255) NOT NULL,
    age INTEGER NOT NULL,
    incorporation_date VARCHAR(255) NOT NULL,
    rfc_key VARCHAR(13) UNIQUE NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Menu(
    product_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    productprice INTEGER NOT NULL,
    productname TEXT NOT NULL

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Purchase(
    transaction_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    employe_id INTEGER NOT NULL, 
    transaction_date DATETIME NOT NULL,
    branch_adress TEXT NOT NULL,
    product_name TEXT NOT NULL,
    total_amount VARCHAR(5) NOT NULL,
    FOREIGN KEY(employe_id)
    REFERENCES Employe (employe_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Sale(
    transaction_number INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    employe_id INTEGER NOT NULL, 
    transaction_date DATETIME NOT NULL,
    total_amount VARCHAR (5) NOT NULL,
    FOREIGN KEY(employe_id)
    REFERENCES Employe (employe_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Complaints(
    complaint_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    customer_number INTEGER NOT NULL,
    date_id DATETIME NOT NULL,
    commentary TEXT NOT NULL,
    FOREIGN KEY(customer_number)
    REFERENCES Customer (customer_number)
    ON DELETE RESTRICT
    ON UPDATE CASCADE

)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO menu (product_id, productname, productprice) VALUES
    (1, 'Hamburguesa sencilla', 50),
    (2, 'Hamburguesa doble',70),
    (3, 'Hamburguesa hawaiana', 70),
    (4, 'Hamburguesa de pollo',70),
    (5, 'Hamburguesa angus', 100),
    (6, 'Hamburguesa BBQ', 100),
    (7, 'Hamburguesa roast beef', 100),
    (8, 'Hamburguesa vegetariana', 100),
    (9, 'Papas a la francesa', 30),
    (10, 'Aros de cebolla', 30),
    (11, 'Agua embotellada', 15),
    (12, 'Refresco de manzana', 15),
    (13, 'Refresco de cola', 15),
    (14, 'Refresco de naranja',15),
    (15, 'Refresco de limon',15),
    (16, 'Malteada de chocolate',15),
    (17, 'Malteada de fresa',15),
    (18, 'Malteada de vainilla',15);
