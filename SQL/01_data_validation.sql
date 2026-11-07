USE event_operations_analysis;


-- QUERY 1: Check total event records

SELECT COUNT(*) AS total_events
FROM event_events;


-- QUERY 2: Check duplicate event IDs

SELECT
    event_id,
    COUNT(*) AS occurrences
FROM event_events
GROUP BY event_id
HAVING COUNT(*) > 1;


-- QUERY 3: Check invalid attendee counts

SELECT *
FROM event_events
WHERE attendees > registrations
   OR attendees < 0
   OR registrations < 0;
