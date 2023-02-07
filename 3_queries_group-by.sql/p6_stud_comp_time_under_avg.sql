SELECT students.name AS student, avg(assignment_submissions.duration) AS avg_assignment_dur, avg(assignments.duration) AS avg_estimated_dur
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY student 
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY avg_assignment_dur;