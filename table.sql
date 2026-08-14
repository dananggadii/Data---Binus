CREATE TABLE Customer (
    CustomerID      INT PRIMARY KEY,
    CustomerName    VARCHAR(50) NOT NULL,
    CustomerAddress VARCHAR(100)
);

CREATE TABLE Driver (
    DriverID    INT PRIMARY KEY,
    DriverName  VARCHAR(50) NOT NULL,
    DriverPhone VARCHAR(20)
);

CREATE TABLE VehicleType (
    VehicleTypeID   INT PRIMARY KEY,
    VehicleTypeName VARCHAR(20) NOT NULL
);

CREATE TABLE Vehicle (
    VehicleID     INT PRIMARY KEY,
    VehiclePlate  VARCHAR(15) NOT NULL,
    VehicleTypeID INT,
    FOREIGN KEY (VehicleTypeID) REFERENCES VehicleType(VehicleTypeID)
);

CREATE TABLE ShipmentStatus (
    StatusID   INT PRIMARY KEY,
    StatusName VARCHAR(20) NOT NULL
);

CREATE TABLE Shipment (
    ShipmentID       INT PRIMARY KEY,
    ShipmentDate     DATE NOT NULL,
    CustomerID       INT,
    DriverID         INT,
    VehicleID        INT,
    RouteOrigin      VARCHAR(50),
    RouteDestination VARCHAR(50),
    StatusID         INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (DriverID)   REFERENCES Driver(DriverID),
    FOREIGN KEY (VehicleID)  REFERENCES Vehicle(VehicleID),
    FOREIGN KEY (StatusID)   REFERENCES ShipmentStatus(StatusID)
);