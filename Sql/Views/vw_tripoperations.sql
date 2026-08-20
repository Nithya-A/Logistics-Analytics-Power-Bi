use LogisticsAnalytics;
GO
CREATE VIEW dbo.vw_TripOperations
AS

SELECT
    -- Trip information
    t.trip_id,
    t.load_id,
    t.dispatch_date,
    t.actual_distance_miles,
    t.actual_duration_hours,
    t.fuel_gallons_used,
    t.average_mpg,
    t.idle_time_hours,
    t.trip_status,

    -- Driver information
    d.driver_id,
    d.first_name,
    d.last_name,
    d.license_state,
    d.home_terminal AS driver_home_terminal,
    d.employment_status,
    d.cdl_class,
    d.years_experience,

    -- Truck information
    tr.truck_id,
    tr.unit_number,
    tr.make AS truck_make,
    tr.model_year AS truck_model_year,
    tr.fuel_type,
    tr.tank_capacity_gallons,
    tr.status AS truck_status,
    tr.home_terminal AS truck_home_terminal,

    -- Trailer information
    tl.trailer_id,
    tl.trailer_number,
    tl.trailer_type,
    tl.length_feet,
    tl.model_year AS trailer_model_year,
    tl.status AS trailer_status,
    tl.current_location

FROM dbo.Trips t

LEFT JOIN dbo.Drivers d
    ON t.driver_id = d.driver_id

LEFT JOIN dbo.Trucks tr
    ON t.truck_id = tr.truck_id

LEFT JOIN dbo.Trailers tl
    ON t.trailer_id = tl.trailer_id;
GO