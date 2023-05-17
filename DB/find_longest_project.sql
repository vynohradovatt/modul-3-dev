TASK 5

SELECT 'Project A' AS NAME, MAX(months) AS month_count FROM (
   SELECT DATEDIFF(
   'MONTH', start_date, finish_date) as months
   FROM project);