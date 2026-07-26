select * from clean_employee_attrition_hr;
SELECT COUNT(*) AS total_employees
FROM clean_employee_attrition_hr;

SELECT attrition,
COUNT(*) AS employee_count
FROM clean_employee_attrition_hr
GROUP BY attrition;

SELECT
ROUND(
SUM(CASE WHEN attrition='Yes' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2
) AS attrition_rate
FROM clean_employee_attrition_hr;

SELECT gender,
COUNT(*) AS employees
FROM clean_employee_attrition_hr
GROUP BY gender;

SELECT gender,
attrition,
COUNT(*) AS total
FROM clean_employee_attrition_hr
GROUP BY gender, attrition;

SELECT department,
COUNT(*) AS employees
FROM clean_employee_attrition_hr
GROUP BY department
ORDER BY employees DESC;

SELECT department,
SUM(CASE WHEN attrition='Yes' THEN 1 ELSE 0 END) AS attrition_count
FROM clean_employee_attrition_hr
GROUP BY department
ORDER BY attrition_count DESC;

SELECT job_role,
COUNT(*) AS employees
FROM clean_employee_attrition_hr
GROUP BY job_role
ORDER BY employees DESC;

SELECT
ROUND(AVG(monthly_income),2) AS average_salary
FROM clean_employee_attrition_hr;

SELECT department,
ROUND(AVG(monthly_income),2) AS avg_salary
FROM clean_employee_attrition_hr
GROUP BY department
ORDER BY avg_salary DESC;

SELECT *
FROM clean_employee_attrition_hr
ORDER BY monthly_income DESC
LIMIT 10;

SELECT tenure_band,
COUNT(*) AS employees
FROM clean_employee_attrition_hr
GROUP BY tenure_band;

SELECT
ROUND(AVG(years_at_company),2) AS avg_company_experience
FROM clean_employee_attrition_hr;

SELECT department,
ROUND(AVG(performance_rating),2) AS avg_performance
FROM clean_employee_attrition_hr
GROUP BY department
ORDER BY avg_performance DESC;

SELECT attrition,
ROUND(AVG(performance_rating),2) AS avg_performance
FROM clean_employee_attrition_hr
GROUP BY attrition;

SELECT attrition,
ROUND(AVG(work_life_balance_score),2) AS avg_worklife
FROM clean_employee_attrition_hr
GROUP BY attrition;

SELECT attrition,
ROUND(AVG(overtime_hours_per_week),2) AS avg_overtime
FROM clean_employee_attrition_hr
GROUP BY attrition;

SELECT uses_ai_tools_at_work,
COUNT(*) AS employees
FROM clean_employee_attrition_hr
GROUP BY uses_ai_tools_at_work;

SELECT uses_ai_tools_at_work,
attrition,
COUNT(*) AS employees
FROM clean_employee_attrition_hr
GROUP BY uses_ai_tools_at_work, attrition;

SELECT education_level,
COUNT(*) AS employees
FROM clean_employee_attrition_hr
GROUP BY education_level
ORDER BY employees DESC;

SELECT department,
COUNT(*) AS attrition_count
FROM clean_employee_attrition_hr
WHERE attrition='Yes'
GROUP BY department
ORDER BY attrition_count DESC
LIMIT 5;

SELECT employee_id,
department,
job_role,
monthly_income
FROM clean_employee_attrition_hr
ORDER BY monthly_income DESC
LIMIT 10;