USE event_operations_analysis;

SELECT
    workshop_topic,
    COUNT(*) AS total_events,
    SUM(registrations) AS total_registrations,
    SUM(attendees) AS total_attendees,

    ROUND(
        SUM(attendees) / NULLIF(SUM(registrations), 0) * 100,
        2
    ) AS attendance_rate_pct,

    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(SUM(delivery_cost), 2) AS total_cost,

    ROUND(
        SUM(revenue) - SUM(delivery_cost),
        2
    ) AS net_contribution,

    ROUND(AVG(feedback_rating_5), 2) AS average_feedback,

    SUM(delayed_flag) AS delayed_events,

    ROUND(
        AVG(delayed_flag) * 100,
        2
    ) AS delay_rate_pct

FROM event_events

GROUP BY workshop_topic

ORDER BY net_contribution DESC;