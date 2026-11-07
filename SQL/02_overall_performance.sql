-- =====================================================
-- PROJECT: Event Operations & Business Performance Analysis
-- DATABASE: event_operations_analysis
-- TOOL: MySQL
-- ANALYSIS: Overall Business Performance
-- DATA: Synthetic portfolio dataset (50 events)
-- =====================================================

USE event_operations_analysis;


-- BUSINESS QUESTION:
-- What is the overall operational and financial
-- performance of the events business?


-- QUERY 1: Overall business performance

SELECT
    COUNT(*) AS total_events,

    SUM(registrations) AS total_registrations,

    SUM(attendees) AS total_attendees,

    ROUND(
        SUM(attendees) / NULLIF(SUM(registrations), 0) * 100,
        2
    ) AS attendance_rate_pct,

    ROUND(SUM(revenue_aed), 2) AS total_revenue_aed,

    ROUND(SUM(delivery_cost_aed), 2) AS total_cost_aed,

    ROUND(
        SUM(revenue_aed) - SUM(delivery_cost_aed),
        2
    ) AS net_contribution_aed,

    ROUND(AVG(feedback_rating_5), 2) AS average_feedback,

    ROUND(
        SUM(delivery_cost_aed) / NULLIF(SUM(attendees), 0),
        2
    ) AS cost_per_attendee_aed,

    ROUND(
        SUM(revenue_aed) / NULLIF(SUM(attendees), 0),
        2
    ) AS revenue_per_attendee_aed

FROM event_events;