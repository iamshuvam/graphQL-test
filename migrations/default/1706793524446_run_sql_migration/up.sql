CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Description TEXT
);

CREATE TABLE Variants (
    VariantID INT PRIMARY KEY,
    ProductID INT,
    Size VARCHAR(50),
    Color VARCHAR(50),
    Price DECIMAL(10, 2) NOT NULL,
    InventoryCount INT NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    VariantID INT,
    Quantity INT NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (VariantID) REFERENCES Variants(VariantID)
);
