SELECT students.name as student, avg(assignment_submissions.duration) AS avg_assignment_dur 
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY student 
ORDER BY avg_assignment_dur DESC;
