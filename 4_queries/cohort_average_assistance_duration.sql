SELECT avg(total_duration) as average_total_duration
FROM (SELECT sum(completed_at - started_at) AS total_duration
  FROM assistance_requests
  JOIN students
  ON student_id = students.id
  JOIN cohorts
  ON students.cohort_id = cohorts.id
  GROUP BY cohorts.name) 
as total_duration;
