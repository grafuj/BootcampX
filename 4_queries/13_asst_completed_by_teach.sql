SELECT teachers.name as teacher, cohorts.name as cohort,
count(assistance_requests.id)
FROM teachers
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name, teachers.name
HAVING cohorts.name = 'JUL02'
;