SELECT day, count(*) as num_assignments, sum(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day
LIMIT 20;