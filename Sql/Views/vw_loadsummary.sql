Use LogisticsAnalytics;
GO
CREATE VIEW dbo.vw_LoadSummary
GO
AS
SELECT
    l.load_id,
    l.load_date,
    l.load_type,
    l.weight_lbs,
    l.pieces,
    l.revenue,
    l.fuel_surcharge,
    l.accessorial_charges,
    l.load_status,
    l.booking_type,

    c.customer_id,
    c.customer_name,
    c.customer_type,
    c.credit_terms_days,
    c.primary_freight_type,
    c.account_status,
    c.contract_start_date,
    c.annual_revenue_potential,

    r.route_id,
    r.origin_city,
    r.origin_state,
    r.destination_city,
    r.destination_state,
    r.typical_distance_miles,
    r.base_rate_per_mile,
    r.fuel_surcharge_rate,
    r.typical_transit_days

FROM dbo.Loads l
LEFT JOIN dbo.Customers c
    ON l.customer_id = c.customer_id
LEFT JOIN dbo.Routes r
    ON l.route_id = r.route_id;

SELECT TOP 10 *FROM dbo.vw_LoadSummary;

