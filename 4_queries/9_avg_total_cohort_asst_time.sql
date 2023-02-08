SELECT avg(tot_duration) as avg_tot_duration
FROM (

SELECT sum(completed_at - started_at) as tot_duration
--How do I take the average of these?
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
) AS total_durations;
