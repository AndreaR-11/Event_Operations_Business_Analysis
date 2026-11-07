
USE event_operations_analysis;

SELECT
    client_industry,
    COUNT(*) AS total_events,
    SUM(registrations) AS total_registrations,
    SUM(attendees) AS total_attendees,

    ROUND(
        SUM(attendees) / NULLIF(SUM(registrations), 0) * 100,
        2
    ) AS attendance_rate_pct,

    ROUND(SUM(revenue_usd), 2) AS total_revenue_aed,
    ROUND(SUM(delivery_cost_usd), 2) AS total_cost_aed,

    ROUND(
        SUM(revenue_usd) - SUM(delivery_cost_usd),
        2
    ) AS net_contribution_aed,

    ROUND(AVG(feedback_rating_5), 2) AS average_feedback,

    SUM(delayed_flag) AS delayed_events,

    ROUND(
        AVG(delayed_flag) * 100,
        2
    ) AS delay_rate_pct

FROM event_events

GROUP BY client_industry

ORDER BY net_contribution_aed DESC;
