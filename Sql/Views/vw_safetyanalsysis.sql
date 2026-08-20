USE LogisticsAnalytics;
GO

CREATE VIEW dbo.vw_SafetyAnalysis
AS

SELECT
    si.incident_id,
    si.incident_date,
    si.incident_type,
    si.location_city,
    si.location_state,
    si.at_fault_flag,
    si.injury_flag,
    si.vehicle_damage_cost,
    si.cargo_damage_cost,
    si.claim_amount,
    si.preventable_flag,
    si.description,

    -- Trip details
    t.trip_id,
    t.load_id,
    t.dispatch_date,
    t.actual_distance_miles,
    t.trip_status,

    -- Driver details
    d.driver_id,
    d.first_name,
    d.last_name,
    d.home_terminal AS driver_home_terminal,
    d.employment_status,
    d.years_experience,

    -- Truck details
    tr.truck_id,
    tr.unit_number,
    tr.make AS truck_make,
    tr.model_year AS truck_model_year,
    tr.status AS truck_status,
    tr.home_terminal AS truck_home_terminal

FROM dbo.Safety_Incidents si

LEFT JOIN dbo.Trips t
    ON si.trip_id = t.trip_id

LEFT JOIN dbo.Drivers d
    ON si.driver_id = d.driver_id

LEFT JOIN dbo.Trucks tr
    ON si.truck_id = tr.truck_id;
GO