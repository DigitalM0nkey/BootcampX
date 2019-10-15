SELECT cohorts.name AS cohort, COUNT(assignment_submissions) AS total_submissions
FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  JOIN assignment_submissions ON students.id = student_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;