SELECT SUM(assignment_submissions.duration) AS total_duration
FROM students
  JOIN assignment_submissions ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';

SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
  JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING count(assignment_submissions.*) < 100;