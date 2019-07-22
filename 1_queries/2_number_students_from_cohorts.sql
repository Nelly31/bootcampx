SELECT count(name) 
FROM students
WHERE cohort_id < 4; /*alternatively IN (1,2,3)*/