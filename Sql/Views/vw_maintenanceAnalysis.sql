USE LogisticsAnalytics;
GO

CREATE VIEW dbo.vw_MaintenanceAnalysis
AS

SELECT
    mr.maintenance_id,
    mr.maintenance_date,
    mr.maintenance_type,
    mr.odometer_reading,
    mr.labor_hours,
    mr.labor_cost,
    mr.parts_cost,
    mr.total_cost,
    mr.facility_location,
    mr.downtime_hours,
    mr.service_description,

    -- Truck details
    tr.truck_id,
    tr.unit_number,
    tr.make AS truck_make,
    tr.model_year AS truck_model_year,
    tr.fuel_type,
    tr.status AS truck_status,
    tr.home_terminal AS truck_home_terminal

FROM dbo.Maintenance_Records mr

LEFT JOIN dbo.Trucks tr
    ON mr.truck_id = tr.truck_id;
GO