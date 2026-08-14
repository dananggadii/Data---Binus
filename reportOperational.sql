-- 1. Laporan Pengiriman Harian
SELECT 
    s.ShipmentID, s.ShipmentDate,
    c.CustomerName, d.DriverName,
    v.VehiclePlate, vt.VehicleTypeName,
    s.RouteOrigin, s.RouteDestination,
    ss.StatusName
FROM Shipment s
JOIN Customer c ON s.CustomerID = c.CustomerID
JOIN Driver d ON s.DriverID = d.DriverID
JOIN Vehicle v ON s.VehicleID = v.VehicleID
JOIN VehicleType vt ON v.VehicleTypeID = vt.VehicleTypeID
JOIN ShipmentStatus ss ON s.StatusID = ss.StatusID
ORDER BY s.ShipmentDate;

-- 2. Laporan Kinerja Driver
SELECT 
    d.DriverID, d.DriverName,
    COUNT(s.ShipmentID) AS TotalPengiriman,
    SUM(CASE WHEN ss.StatusName = 'Terlambat' THEN 1 ELSE 0 END) AS TotalTerlambat
FROM Driver d
LEFT JOIN Shipment s ON d.DriverID = s.DriverID
LEFT JOIN ShipmentStatus ss ON s.StatusID = ss.StatusID
GROUP BY d.DriverID, d.DriverName;

-- 3. Laporan Utilisasi Kendaraan
SELECT 
    v.VehicleID, v.VehiclePlate, vt.VehicleTypeName,
    COUNT(s.ShipmentID) AS JumlahPenggunaan
FROM Vehicle v
JOIN VehicleType vt ON v.VehicleTypeID = vt.VehicleTypeID
LEFT JOIN Shipment s ON v.VehicleID = s.VehicleID
GROUP BY v.VehicleID, v.VehiclePlate, vt.VehicleTypeName;

-- 4. Laporan Keterlambatan Pengiriman
SELECT 
    s.ShipmentID, s.ShipmentDate, c.CustomerName,
    d.DriverName, s.RouteOrigin, s.RouteDestination
FROM Shipment s
JOIN ShipmentStatus ss ON s.StatusID = ss.StatusID
JOIN Customer c ON s.CustomerID = c.CustomerID
JOIN Driver d ON s.DriverID = d.DriverID
WHERE ss.StatusName = 'Terlambat';

-- 5. Laporan Rute Pengiriman
SELECT 
    s.RouteOrigin, s.RouteDestination,
    COUNT(s.ShipmentID) AS JumlahPengiriman
FROM Shipment s
GROUP BY s.RouteOrigin, s.RouteDestination;