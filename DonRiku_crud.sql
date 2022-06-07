INSERT INTO Customer (customer_number, customer_name,member_number) VALUES 
(1, 'Ricardo', '55555'),
(2, 'Alam', '66666'),
(3, 'Nestor', '77777'),
(4, 'Carla', '88888'),
(5, 'Aldo', '99999');
SELECT * FROM Customer;

UPDATE Customer
  SET
    customer_name = 'Luis',
    member_number = '11111'
  WHERE customer_number = 1;

DELETE FROM Customer WHERE customer_number = 1;  


INSERT INTO Menu (product_id, productname, productprice) VALUES 
(19, 'Panecillos', 30),
(20, 'Donas', 30),
(21, 'Nachos', 30),
(22, 'Papas con carne', 30),
(23, 'Galleta', 30);
SELECT * FROM Menu;


INSERT INTO Employe (employe_id, employe_name, age, incorporation_date, rfc_key) VALUES
(1, 'Tobias', 19,'octubre-2021' ,'TOB040608K67'),
(2, 'Tobias', 19,'noviembre-2021' ,'TOB040608K87'),
(3, 'Tobias', 21,'diciembre-2021' ,'TOB040608K97'),
(4, 'Tobias', 21,'enero-2022' ,'TOB040608K57'),
(5, 'Tobias', 22,'febrero-2022' ,'TOB040608K37');
SELECT * FROM Employe;

UPDATE Employe
  SET
    employe_name = 'Juan',
    rfc_key = 'TOB080503K67',
    incorporation_date = 'diciembre-2021'
  WHERE employe_id = 1;

DELETE FROM Employe WHERE employe_id = 1;



INSERT INTO Purchase (transaction_id, employe_id, transaction_date, branch_adress, product_name, total_amount ) VALUES
(1, 1, NOW(), 'Avenida siempre viva', 'Hamburguesa sencilla','50'),
(2, 1, NOW(), 'Avenida siempre viva', 'Hamburguesa angus','50'),
(3, 3, NOW(), 'Avenida siempre viva', 'Hamburguesa hawaiana','50'),
(4, 2, NOW(), 'Avenida siempre viva', 'Hamburguesa vegetariana','50'),
(5, 5, NOW(), 'Avenida siempre viva', 'aros de cebolla','50');
SELECT * FROM Purchase;
UPDATE Purchase
  SET
    employe_id = 1,
    transaction_date = NOW(),
    branch_adress = 'Avenida siempre muerta', 
    product_name = 'Hamburguesa angus', 
    total_amount = '100'
  WHERE transaction_id = 1;


INSERT INTO Sale (transaction_number, employe_id, transaction_date, total_amount) VALUES
(1, 1, NOW(), '200'),
(2, 1, NOW(), '250'),
(3, 5, NOW(), '100'),
(4, 3, NOW(), '30'),
(5, 3, NOW(), '100');
SELECT * FROM Sale;
UPDATE Sale
  SET
    employe_id = 1,
    transaction_date = NOW(),
    total_amount = '100'
  WHERE transaction_number = 1;

INSERT INTO Complaints (complaint_id, customer_number, date_id, commentary) VALUES
(1, 1, NOW(), 'Comentario1'),
(2, 2, NOW(), 'Comentario2'),
(3, 3, NOW(), 'Comentario3'),
(4, 4, NOW(), 'Comentario4'),
(5, 5, NOW(), 'Comentario5');

SELECT * FROM Complaints WHERE complaint_id = 2;

DELETE FROM Complaints WHERE complaint_id = 1;


