INSERT INTO `lab_mysql`.`manufacturers` (`manufacturer`)
VALUES
	('Volkswagen'),
    ('Opel'),
    ('Peugeot'),
    ('Ford'),
    ('Lada'),
    ('Volkswagen');
    
INSERT INTO `lab_mysql`.`colors` (`color`, `color_description`,`color_family`)
VALUES
('Red','The color is red', 'Red'),
('Blue','The color is red', 'Blue'),
('Sea Green','The color is red', 'Green'),
('Green','The color is red', 'Green'),
('Forest Blue','The color is red', 'Blue');

INSERT INTO `lab_mysql`.`cars` (`vin`,`manufacturer`,`model`,`year`,`color`) 
VALUES 
('DAM41UDN3CHU2WVF6',1,'Golf',2019,2),
('QUSADLKAMNSDLKAJS',2,'Corsa',2013,3),
('DSADSASADASD2544A',3,'Isso',2011,5),
('DAM41UDN3CHU2WVF6',5,'Test',2016,3),
('ASDJASLKDJAS9DQQ9',6,'N/A',2012,1),
('AASKJDYAOQP-ADALK',3,'F40',2018,4),
('2982394023MMSDKD0',2,'G40',2009,1),
('12093812093812093',4,'G60',2004,2);

INSERT INTO `lab_mysql`.`customers` (`first_name`,`last_name`,`mobile`,`phone`,`email`,`address`,`city`,`state`,`country`,`zip`,`registration_date`)
VALUES 
('Pedro','Moreira','+31646605080','+31262358466','pedrodavidmoreira@gmail.com','Bankwerkerij 188','Amsterdam','Noord Holland','NL','1021NX','2019-02-17'),
('Pedro','Amaro','+3112343523','+31262358466','N/A','Bankwerkerij 189','Amsrdam','Noord Holland','NL','1021NX','2019-02-17'),
('Joao','Antonio','+316554788','+31262358466','N/A','Bankwerkerij 190','Amsterdam','Noord Holland','NL','1021NX','2019-02-17'),
('Carlos','Jorge','3165488414','+31262358466','N/A','Bankwerkerij 191','Amsterdam','Noord Holland','NL','1021NX','2019-02-17'),
('Jose','Carlos','+31648613','+31262358466','N/A','Bankwerkerij 192','Amsterdam','Noord Holland','NL','1021NX','2019-02-17');

INSERT INTO `lab_mysql`.`stores` (`address`,`city`,`state`,`country`,`zip`)
VALUES 
('Store 1','Amsterdam','Noord Holland', 'NL','1021JH'),
('Store 2','Aterdam','Noord Holland', 'NL','1022H'),
('Store 3','Amsterdam','Noord Holland', 'NL','1023JH'),
('Store 4','Amsterdam','Noord Holland', 'NL','1024JH'),
('Store 5','Amsterdam','Noord Holland', 'NL','1025JH');

INSERT INTO `lab_mysql`.`sales_persons` (`first_name`,`last_name`,`store`)
VALUES 
('Pedro','Moreira',2),
('Pedro','Moreira',3),
('Pedro','Moreira',2),
('Pedro','Moreira',1),
('Pedro','Moreira',4);

INSERT INTO `lab_mysql`.`invoices` (`invoice_date`,`car`,`customer`,`sales_person`,`price`)
VALUES
('2020-02-20',1,5,1,'25000.00'),
('2020-02-22',2,4,2,'26000.00'),
('2020-02-23',3,3,3,'27000.00'),
('2020-02-17',4,2,4,'28000.00'),
('2020-02-12',5,1,5,'29000.00');

