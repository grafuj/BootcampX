SELECT day, count(*) as total_assignments
FROM assignments
-- JOIN assignment_submissions ON assignment_submissions.* = assignment_submissions.*
-- WHERE students.end_date IS NULL
GROUP BY day
-- HAVING count(assignment_submissions.*) < 100;
ORDER BY day;