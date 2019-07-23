SELECT cohorts.name as name, avg(completed_at - started_at) as average_assistance_request_duration
FROM students
JOIN assistance_requests
ON students.id = assistance_requests.student_id
JOIN cohorts
ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_request_duration;
