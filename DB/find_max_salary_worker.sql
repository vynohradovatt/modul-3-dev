SELECT name, salary_for_a_month
FROM worker
INNER JOIN (
  SELECT MAX(salary_for_a_month) AS max_salary
  FROM worker
) max_sal ON salary_for_a_month = max_sal.max_salary;