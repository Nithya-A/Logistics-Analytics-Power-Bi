USE LogisticsAnalytics;
GO

CREATE VIEW dbo.vw_DeliveryPerformance
AS

SELECT
    de.event_id,
    de.event_type,
    de.scheduled_datetime,
    de.actual_datetime,
    de.detention_minutes,
    de.on_time_flag,
    de.location_city,
    de.location_state,

    -- Load details
    l.load_id,
    l.load_date,
    l.load_type,
    l.revenue,
    l.load_status,
    l.booking_type,

    -- Customer details
    c.customer_id,
    c.customer_name,
    c.customer_type,

    -- Route details
    r.route_id,
    r.origin_city,
    r.origin_state,
    r.destination_city,
    r.destination_state,
    r.typical_distance_miles,
    r.typical_transit_days,

    -- Trip details
    t.trip_id,
    t.dispatch_date,
    t.actual_distance_miles,
    t.actual_duration_hours,
    t.trip_status,

    -- Facility details
    f.facility_id

FROM dbo.Delivery_Events de

LEFT JOIN dbo.Loads l
    ON de.load_id = l.load_id

LEFT JOIN dbo.Customers c
    ON l.customer_id = c.customer_id

LEFT JOIN dbo.Routes r
    ON l.route_id = r.route_id

LEFT JOIN dbo.Trips t
    ON de.trip_id = t.trip_id

LEFT JOIN dbo.Facilities f
    ON de.facility_id = f.facility_id;
GO