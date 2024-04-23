SELECT
    patient_id,
    COUNT(*) AS admission_count
FROM
    admissions
WHERE
    department_id = (SELECT department_id FROM departments WHERE department_name = 'Cardiology'
    OR department_id = NULL)
    AND admission_date >= '2015-01-01'
GROUP BY
    patient_id
ORDER BY
    admission-count DESC
LIMIT 1;