INSERT INTO VehicleType (VehicleTypeID, VehicleTypeName) VALUES (1, 'Truk'), (2, 'Van');
INSERT INTO ShipmentStatus (StatusID, StatusName) VALUES (1, 'Terkirim'), (2, 'Terlambat');

INSERT INTO Customer VALUES (1, 'Toko Sinar Jaya', 'Jakarta');
INSERT INTO Customer VALUES (2, 'Toko Makmur', 'Surabaya');
INSERT INTO Customer VALUES (3, 'Toko Matahari', 'Bandung');

INSERT INTO Driver VALUES (1, 'Budi', '0858xxxx');
INSERT INTO Driver VALUES (2, 'Andi', '0858xxxx');
INSERT INTO Driver VALUES (3, 'Adi', '0858xxxx');

INSERT INTO Vehicle VALUES (1, 'B1234XY', 1);
INSERT INTO Vehicle VALUES (2, 'B5678XY', 2);
INSERT INTO Vehicle VALUES (3, 'B1235XY', 1);

INSERT INTO Shipment VALUES (1, '2026-08-12', 1, 1, 1, 'Jakarta', 'Bandung', 1);
INSERT INTO Shipment VALUES (2, '2026-08-13', 2, 2, 2, 'Surabaya', 'Malang', 2);
INSERT INTO Shipment VALUES (3, '2026-08-14', 3, 3, 3, 'Bandung', 'Semarang', 1);