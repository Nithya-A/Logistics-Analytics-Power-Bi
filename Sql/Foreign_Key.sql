use LogisticsAnalytics;
-- Loads → Customers
ALTER TABLE dbo.Loads
ADD CONSTRAINT FK_Loads_Customers
FOREIGN KEY (customer_id)
REFERENCES dbo.Customers(customer_id);

-- Loads → Routes
ALTER TABLE dbo.Loads
ADD CONSTRAINT FK_Loads_Routes
FOREIGN KEY (route_id)
REFERENCES dbo.Routes(route_id);


-- Trips → Loads
ALTER TABLE dbo.Trips
ADD CONSTRAINT FK_Trips_Loads
FOREIGN KEY (load_id)
REFERENCES dbo.Loads(load_id);

-- Trips → Drivers
ALTER TABLE dbo.Trips
ADD CONSTRAINT FK_Trips_Drivers
FOREIGN KEY (driver_id)
REFERENCES dbo.Drivers(driver_id);

-- Trips → Trucks
ALTER TABLE dbo.Trips
ADD CONSTRAINT FK_Trips_Trucks
FOREIGN KEY (truck_id)
REFERENCES dbo.Trucks(truck_id);

-- Trips → Trailers
ALTER TABLE dbo.Trips
ADD CONSTRAINT FK_Trips_Trailers
FOREIGN KEY (trailer_id)
REFERENCES dbo.Trailers(trailer_id);


-- Delivery Events → Loads
ALTER TABLE dbo.Delivery_Events
ADD CONSTRAINT FK_DeliveryEvents_Loads
FOREIGN KEY (load_id)
REFERENCES dbo.Loads(load_id);

-- Delivery Events → Trips
ALTER TABLE dbo.Delivery_Events
ADD CONSTRAINT FK_DeliveryEvents_Trips
FOREIGN KEY (trip_id)
REFERENCES dbo.Trips(trip_id);

-- Delivery Events → Facilities
ALTER TABLE dbo.Delivery_Events
ADD CONSTRAINT FK_DeliveryEvents_Facilities
FOREIGN KEY (facility_id)
REFERENCES dbo.Facilities(facility_id);

--
-- Fuel Purchases → Trips
ALTER TABLE dbo.fuel_purchases
ADD CONSTRAINT FK_FuelPurchases_Trips
FOREIGN KEY (trip_id)
REFERENCES dbo.Trips(trip_id);

-- Fuel Purchases → Trucks
ALTER TABLE dbo.fuel_purchases
ADD CONSTRAINT FK_FuelPurchases_Trucks
FOREIGN KEY (truck_id)
REFERENCES dbo.Trucks(truck_id);

-- Fuel Purchases → Drivers
ALTER TABLE dbo.fuel_purchases
ADD CONSTRAINT FK_FuelPurchases_Drivers
FOREIGN KEY (driver_id)
REFERENCES dbo.Drivers(driver_id);

-- Maintenance → Trucks
ALTER TABLE dbo.Maintenance_Records
ADD CONSTRAINT FK_MaintenanceRecords_Trucks
FOREIGN KEY (truck_id)
REFERENCES dbo.Trucks(truck_id);

-- Safety Incidents → Trips
ALTER TABLE dbo.Safety_Incidents
ADD CONSTRAINT FK_SafetyIncidents_Trips
FOREIGN KEY (trip_id)
REFERENCES dbo.Trips(trip_id);

-- Safety Incidents → Trucks
ALTER TABLE dbo.Safety_Incidents
ADD CONSTRAINT FK_SafetyIncidents_Trucks
FOREIGN KEY (truck_id)
REFERENCES dbo.Trucks(truck_id);

-- Safety Incidents → Drivers
ALTER TABLE dbo.Safety_Incidents
ADD CONSTRAINT FK_SafetyIncidents_Drivers
FOREIGN KEY (driver_id)
REFERENCES dbo.Drivers(driver_id);