SELECT cohorts.name as name, avg(completed_at - started_at) as avg_asst_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY avg_asst_time DESC
LIMIT 1;