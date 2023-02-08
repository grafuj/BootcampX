SELECT cohorts.name as name, avg(completed_at - started_at) as avg_asst_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY avg_asst_time;

-- Mine, from students
-- SELECT cohorts.name as Cohort_name, avg(assistance_requests.completed_at - assistance_requests.started_at) as avg_asst_time
-- FROM students
-- JOIN cohorts ON cohorts.id = cohort_id
-- JOIN assistance_requests ON students.id = student_id
-- GROUP BY Cohort_name
-- ORDER BY avg_asst_time;

-- Compass, from assistance requests
-- SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
-- FROM assistance_requests 
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY average_assistance_time;