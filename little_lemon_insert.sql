use littlelemondb;

INSERT INTO CustomerDimension (CustomerID, CustomerName, City, Country, PostalCode, CountryCode, CustomerKey) 
VALUES 
('72-055-7985', 'Laney Fadden', 'Daruoyan', 'China', '993-0031', 'CN', '1'), 
('65-353-0657', 'Giacopo Bramich', 'Ongjin', 'North Korea', '216282', 'KP', '2'), 
('90-876-6799', 'Lia Bonar', 'Quince Mil', 'Peru', '663246', 'PE', '3'), 
('73-873-4827', 'Merrill Baudon', 'Susaki', 'Japan', '987-0352', 'JP', '4'), 
('80-927-5246', 'Tasia Fautly', 'Tobruk', 'Libya', '351 01', 'LY', '5'), 
('77-111-2020', 'Angel Veschambre', 'Rafael Hernandez Ochoa', 'Mexico', '93995', 'MX', '6'), 
('10-341-4047', 'Sheilah Maestro', 'Belozërskoye', 'Russia', '641360', 'RU', '7'), 
('83-800-4789', 'Audie Willcocks', 'Póvoa do Valado', 'Portugal', '3810-760', 'PT', '8'), 
('89-896-4591', 'Mart Malsher', 'Galbshtadt', 'Russia', '692769', 'RU', '9'), 
('21-282-1343', 'Magdalen Lacheze', 'Fuyang', 'China', '649-6326', 'CN', '10');

INSERT INTO TimeDimension (OrderDate, DeliveryDate, TimeKey) 
VALUES 
('2020-06-15', '2020-03-26', '1'), 
('2020-08-25', '2020-07-17', '2'), 
('2021-08-17', '2020-04-24', '3'), 
('2021-08-14', '2020-04-13', '4'), 
('2020-12-20', '2021-02-02', '5'), 
('2020-03-01', '2020-01-13', '6'), 
('2021-10-04', '2019-10-26', '7'), 
('2021-10-09', '2020-12-27', '8'), 
('2021-12-27', '2021-04-16', '9'), 
('2020-03-05', '2021-11-13', '10');

INSERT INTO CourseDimension (CourseName, CourseKey) 
VALUES 
('Greek salad', '1'), 
('Bean soup', '2'), 
('Pizza', '3'), 
('Carbonara', '4'), 
('Kabasa', '5'), 
('Shwarma', '6');

INSERT INTO CuisineDimension (CuisineName, CuisineKey) 
VALUES 
('Greek', '1'), 
('Italian', '2'), 
('Turkish', '3');

INSERT INTO StarterDimension (StarterName, StarterKey) 
VALUES 
('Olives', '1'), 
('Flatbread', '2'), 
('Minestrone', '3'), 
('Tomato bread', '4'), 
('Falafel', '5'), 
('Hummus', '6');

INSERT INTO DesertDimension (DesertName, DesertKey) 
VALUES 
('Greek yoghurt', '1'), 
('Ice cream', '2'), 
('Cheesecake', '3'), 
('Affogato', '4'), 
('Turkish yoghurt', '5'), 
('Baklava', '6');

INSERT INTO DrinkDimension (DrinkName, DrinkKey) 
VALUES 
('Athens White wine', '1'), 
('Corfu Red Wine', '2'), 
('Italian Coffee', '3'), 
('Roma Red wine', '4'), 
('Ankara White Wine', '5'), 
('Turkish Coffee', '6');

INSERT INTO SidesDimension (SidesName, SidesKey) 
VALUES 
('Tapas', '1'), 
('Potato salad', '2'), 
('Bruschetta', '3'), 
('Focaccia', '4'), 
('Meatballs', '5'), 
('Fries', '6');

INSERT INTO OrdersFact (OrderID, CustomerKey, TimeKey, CourseKey, CuisineKey, StarterKey, DesertKey, DrinkKey, SidesKey, Sales, Quantity, Discount, DeliveryCost, OrderKey) 
VALUES 
('54-366-6861', '1', '1', '1', '1', '1', '1', '1', '1', '187.5', '2', '20.0', '60.51', '1'), 
('63-761-3686', '2', '2', '2', '2', '2', '2', '2', '2', '352.5', '1', '15.0', '96.75', '2'), 
('65-351-6434', '3', '3', '3', '2', '3', '3', '3', '3', '112.5', '3', '10.52', '36.37', '3'), 
('36-917-2834', '4', '4', '4', '3', '4', '4', '4', '4', '330.0', '3', '11.23', '5.49', '4'), 
('86-114-9232', '5', '5', '5', '1', '5', '5', '5', '5', '480.0', '2', '51.05', '63.64', '5'), 
('67-709-5581', '6', '6', '6', '2', '6', '6', '6', '6', '315.0', '1', '89.84', '5.04', '6'), 
('80-076-4032', '7', '7', '1', '2', '1', '1', '1', '1', '465.0', '2', '17.4', '56.95', '7'), 
('56-271-4185', '8', '8', '2', '3', '2', '2', '2', '2', '337.5', '3', '91.41', '91.05', '8'), 
('43-052-9931', '9', '9', '3', '1', '3', '3', '3', '3', '285.0', '2', '9.71', '86.28', '9'), 
('15-663-0481', '10', '10', '4', '2', '4', '4', '4', '4', '147.0', '1', '80.34', '31.34', '10');


