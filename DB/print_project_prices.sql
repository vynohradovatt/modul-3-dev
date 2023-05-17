TASK 7

SELECT 'Project A' AS name, (
    SELECT MAX(months) FROM (
       SELECT DATEDIFF('MONTH', start_date, finish_date) as months
       FROM project)) * _sum_salary AS project_prices FROM (SELECT SUM(worker.salary_for_a_month) AS _sum_salary
                    FROM worker
                       WHERE id IN (
                           SELECT worker_id
                             FROM project_worker
                             WHERE project_id = 1)
) UNION
SELECT 'Project B' AS name, (
    SELECT MAX(months) FROM (
       SELECT DATEDIFF('MONTH', start_date, finish_date) as months
       FROM project)) * _sum_salary AS project_prices FROM (SELECT SUM(worker.salary_for_a_month) AS _sum_salary
                    FROM worker
                       WHERE id IN (
                           SELECT worker_id
                             FROM project_worker
                             WHERE project_id = 2)
) UNION
SELECT 'Project C' AS name, (
    SELECT MAX(months) FROM (
       SELECT DATEDIFF('MONTH', start_date, finish_date) as months
       FROM project)) * _sum_salary AS project_prices FROM (SELECT SUM(worker.salary_for_a_month) AS _sum_salary
                    FROM worker
                       WHERE id IN (
                           SELECT worker_id
                             FROM project_worker
                             WHERE project_id = 3)
)UNION
SELECT 'Project D' AS name, (
    SELECT MAX(months) FROM (
        SELECT DATEDIFF('MONTH', start_date, finish_date) as months
        FROM project)) * _sum_salary AS project_prices FROM (SELECT SUM(worker.salary_for_a_month) AS _sum_salary
                    FROM worker
                       WHERE id IN (
                           SELECT worker_id
                             FROM project_worker
                             WHERE project_id = 3)
)UNION
SELECT 'Project E' AS name, (
    SELECT MAX(months) FROM (
       SELECT DATEDIFF('MONTH', start_date, finish_date) as months
       FROM project)) * _sum_salary AS project_prices FROM (SELECT SUM(worker.salary_for_a_month) AS _sum_salary
                    FROM worker
                       WHERE id IN (
                           SELECT worker_id
                             FROM project_worker
                             WHERE project_id =4)
) UNION
SELECT 'Project F' AS name, (
    SELECT MAX(months) FROM (
       SELECT DATEDIFF('MONTH', start_date, finish_date) as months
       FROM project)) * _sum_salary AS project_prices FROM (SELECT SUM(worker.salary_for_a_month) AS _sum_salary
                    FROM worker
                       WHERE id IN (
                           SELECT worker_id
                             FROM project_worker
                             WHERE project_id = 5)
)UNION
SELECT 'Project G' AS name, (
    SELECT MAX(months) FROM (
       SELECT DATEDIFF('MONTH', start_date, finish_date) as months
       FROM project)) * _sum_salary AS project_prices FROM (SELECT SUM(worker.salary_for_a_month) AS _sum_salary
                    FROM worker
                       WHERE id IN (
                           SELECT worker_id
                             FROM project_worker
                             WHERE project_id = 6)
) UNION
SELECT 'Project H' AS name, (
    SELECT MAX(months) FROM (
       SELECT DATEDIFF('MONTH', start_date, finish_date) as months
       FROM project)) * _sum_salary AS project_prices FROM (SELECT SUM(worker.salary_for_a_month) AS _sum_salary
                    FROM worker
                       WHERE id IN (
                           SELECT worker_id
                             FROM project_worker
                             WHERE project_id = 7)
) UNION
SELECT 'Project J' AS name, (
    SELECT MAX(months) FROM (
       SELECT DATEDIFF('MONTH', start_date, finish_date) as months
       FROM project)) * _sum_salary AS project_prices FROM (SELECT SUM(worker.salary_for_a_month) AS _sum_salary
                    FROM worker
                       WHERE id IN (
                           SELECT worker_id
                             FROM project_worker
                             WHERE project_id = 8)
)
UNION
SELECT 'Project K' AS name, (
    SELECT MAX(months) FROM (
       SELECT DATEDIFF('MONTH', start_date, finish_date) as months
       FROM project)) * _sum_salary AS project_prices FROM (SELECT SUM(worker.salary_for_a_month) AS _sum_salary
                    FROM worker
                       WHERE id IN (
                           SELECT worker_id
                             FROM project_worker
                             WHERE project_id = 9)
) UNION
SELECT 'Project L' AS name, (
    SELECT MAX(months) FROM (
       SELECT DATEDIFF('MONTH', start_date, finish_date) as months
       FROM project)) * _sum_salary AS project_prices FROM (SELECT SUM(worker.salary_for_a_month) AS _sum_salary
                    FROM worker
                       WHERE id IN (
                           SELECT worker_id
                             FROM project_worker
                             WHERE project_id = 10)
)ORDER BY project_prices DESC;