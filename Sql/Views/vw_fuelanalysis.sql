USE LogisticsAnalytics;
GO

CREATE VIEW dbo.vw_FuelAnalysis
AS

SELECT
    fp.fuel_purchase_id,
    fp.purchase_date,
    fp.location_city,
    fp.location_state,
    fp.gallons,
    fp.price_per_gallon,
    fp.total_cost,
    fp.fuel_card_number,

    -- Trip details
    t.trip_id,
    t.load_id,
    t.dispatch_date,
    t.actual_distance_miles,
    t.actual_duration_hours,
    t.average_mpg,
    t.idle_time_hours,
    t.trip_status,

    -- Driver details
    d.driver_id,
    d.first_name,
    d.last_name,
    d.home_terminal AS driver_home_terminal,

    -- Truck details
    tr.truck_id,
    tr.unit_number,
    tr.make AS truck_make,
    tr.model_year AS truck_model_year,
    tr.fuel_type,
    tr.status AS truck_status,
    tr.home_terminal AS truck_home_terminal

FROM dbo.fuel_purchases fp

LEFT JOIN dbo.Trips t
    ON fp.trip_id = t.trip_id

LEFT JOIN dbo.Drivers d
    ON fp.driver_id = d.driver_id

LEFT JOIN dbo.Trucks tr
    ON fp.truck_id = tr.truck_id;
GO