const { Pool } = require('pg');

const pool = new Pool({
  user: 'admin',
  password: 'password',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests
ON teachers.id = teacher_id
JOIN students
ON student_id = students.id
JOIN cohorts
on cohort_id = cohorts.id
WHERE cohorts.name LIKE '%${process.argv[2]}%'
ORDER BY teacher;`)

  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`);
    });
  });