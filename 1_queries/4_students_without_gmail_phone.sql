SELECT name, email, id, cohort_id
FROM students
WHERE NOT email = '%gmail' /*or WHERE email NOT LIKE '%gmail'*/
AND phone IS NULL;