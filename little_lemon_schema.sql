create database littlelemondb;
use littlelemondb;
-- Creating Dimension Tables:

-- Customer Dimension
CREATE TABLE CustomerDimension (
    CustomerKey INT PRIMARY KEY,
    CustomerID VARCHAR(50),
    CustomerName VARCHAR(255),
    City VARCHAR(255),
    Country VARCHAR(100),
    PostalCode VARCHAR(50),
    CountryCode VARCHAR(10)
);

-- Time Dimension
CREATE TABLE TimeDimension (
    TimeKey INT PRIMARY KEY,
    OrderDate DATE,
    DeliveryDate DATE
);

-- Course Dimension
CREATE TABLE CourseDimension (
    CourseKey INT PRIMARY KEY,
    CourseName VARCHAR(255)
);

-- Cuisine Dimension
CREATE TABLE CuisineDimension (
    CuisineKey INT PRIMARY KEY,
    CuisineName VARCHAR(255)
);

-- Starter Dimension
CREATE TABLE StarterDimension (
    StarterKey INT PRIMARY KEY,
    StarterName VARCHAR(255)
);

-- Desert Dimension
CREATE TABLE DesertDimension (
    DesertKey INT PRIMARY KEY,
    DesertName VARCHAR(255)
);

-- Drink Dimension
CREATE TABLE DrinkDimension (
    DrinkKey INT PRIMARY KEY,
    DrinkName VARCHAR(255)
);

-- Sides Dimension
CREATE TABLE SidesDimension (
    SidesKey INT PRIMARY KEY,
    SidesName VARCHAR(255)
);

-- Creating Fact Table:

-- Orders Fact Table
CREATE TABLE OrdersFact (
    OrderKey INT PRIMARY KEY,
    OrderID VARCHAR(50),
    CustomerKey INT,
    TimeKey INT,
    CourseKey INT,
    CuisineKey INT,
    StarterKey INT,
    DesertKey INT,
    DrinkKey INT,
    SidesKey INT,
    Sales DECIMAL(10, 2),
    Quantity INT,
    Discount DECIMAL(10, 2),
    DeliveryCost DECIMAL(10, 2),
    FOREIGN KEY (CustomerKey) REFERENCES CustomerDimension(CustomerKey),
    FOREIGN KEY (TimeKey) REFERENCES TimeDimension(TimeKey),
    FOREIGN KEY (CourseKey) REFERENCES CourseDimension(CourseKey),
    FOREIGN KEY (CuisineKey) REFERENCES CuisineDimension(CuisineKey),
    FOREIGN KEY (StarterKey) REFERENCES StarterDimension(StarterKey),
    FOREIGN KEY (DesertKey) REFERENCES DesertDimension(DesertKey),
    FOREIGN KEY (DrinkKey) REFERENCES DrinkDimension(DrinkKey),
    FOREIGN KEY (SidesKey) REFERENCES SidesDimension(SidesKey)
);

