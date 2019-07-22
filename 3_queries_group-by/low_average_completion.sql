SELECT students.name as student, CAST(avg(assignment_submissions.duration) AS DECIMAL(10,2)) as average_assignment_duration, CAST(avg(assignments.duration) as DECIMAL(10,2)) as average_estimated_duration
FROM students 
JOIN assignment_submissions ON students.id = student_id 
JOIN assignments
ON assignments.id =assignment_id
WHERE students.end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;