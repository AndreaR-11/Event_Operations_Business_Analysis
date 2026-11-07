USE event_operations_analysis;

SELECT
    CASE
        WHEN delayed_flag = 1 THEN 'Delayed'
        ELSE 'Not Delayed'
    END AS event_status,

    COUNT(*) AS total_events,

    SUM(registrations) AS total_registrations,

    SUM(attendees) AS total_attendees,

    ROUND(
        SUM(attendees) / NULLIF(SUM(registrations), 0) * 100,
        2
    ) AS attendance_rate_pct,

    ROUND(AVG(feedback_rating_5), 2) AS average_feedback,

    ROUND(SUM(revenue), 2) AS total_revenue,

    ROUND(SUM(delivery_cost), 2) AS total_cost,

    ROUND(
        SUM(revenue) - SUM(delivery_cost),
        2
    ) AS net_contribution

FROM event_events

GROUP BY delayed_flag

ORDER BY delayed_flag;