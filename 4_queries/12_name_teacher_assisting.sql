-- Keyword: Distinct which uses unique single teachers
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
WHERE cohorts.name = 'JUL02'
ORDER BY teachers.name;

-- SELECT teachers.name as teacher, 
-- We always want to use a root table as our FROM so that it has fewer dependencies. We want to always use a root table as our from (no foreign keys).
-- assistance_requests is a bridging table as it has multiple foreign keys