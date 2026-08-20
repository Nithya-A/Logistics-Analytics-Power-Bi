use LogisticsAnalytics;
ALTER TABLE dbo.Customers
ADD CONSTRAINT PK_Customers
PRIMARY KEY (customer_id);

ALTER TABLE dbo.Drivers
ADD CONSTRAINT PK_Drivers
PRIMARY KEY (driver_id);

ALTER TABLE dbo.Trucks
ADD CONSTRAINT PK_Trucks
PRIMARY KEY (truck_id);

ALTER TABLE dbo.Trailers
ADD CONSTRAINT PK_Trailers
PRIMARY KEY (trailer_id);

ALTER TABLE dbo.Routes
ADD CONSTRAINT PK_Routes
PRIMARY KEY (route_id);

ALTER TABLE dbo.Facilities
ADD CONSTRAINT PK_Facilities
PRIMARY KEY (facility_id);

--Primarykey for transaction tables
ALTER TABLE dbo.Loads
ADD CONSTRAINT PK_Loads
PRIMARY KEY (load_id);

ALTER TABLE dbo.Trips
ADD CONSTRAINT PK_Trips
PRIMARY KEY (trip_id);
--

ALTER TABLE dbo.fuel_purchases
ADD CONSTRAINT PK_FuelPurchases
PRIMARY KEY (fuel_purchase_id);

ALTER TABLE dbo.Maintenance_Records
ADD CONSTRAINT PK_MaintenanceRecords
PRIMARY KEY (maintenance_id);

ALTER TABLE dbo.Safety_Incidents
ADD CONSTRAINT PK_SafetyIncidents
PRIMARY KEY (incident_id);