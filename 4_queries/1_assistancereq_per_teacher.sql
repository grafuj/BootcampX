-- Counts all
-- SELECT teachers.name as name, count(assistance_requests.*) as total_assistances
-- FROM assistance_requests
-- JOIN teachers ON teachers.id = teacher_id
-- GROUP BY name;

-- Just for Waylon Boehm
SELECT teachers.name as name, count(assistance_requests.*) as total_assistances
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY name;
