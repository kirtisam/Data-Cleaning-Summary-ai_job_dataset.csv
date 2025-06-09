SELECT TOP 100 * FROM ai_job_dataset;
DELETE FROM ai_job_dataset
WHERE job_title IS NULL OR job_title = ''
   OR company_name IS NULL OR company_name= '';
UPDATE ai_job_dataset
SET job_title = LTRIM(RTRIM(job_title)),
    company_name = LTRIM(RTRIM(company_name));
	WITH CTE AS (
    SELECT *, 
           ROW_NUMBER() OVER (PARTITION BY [job_title], [company_name] ORDER BY [job_title]) AS rn
    FROM ai_job_dataset
)
DELETE FROM CTE WHERE rn > 1;
ALTER TABLE ai_job_dataset
ALTER COLUMN salary_usd INT;

SELECT DISTINCT job_title FROM ai_job_dataset;
SELECT COUNT(*) FROM ai_job_dataset;
SELECT AVG(salary_usd) FROM ai_job_dataset WHERE salary_usd IS NOT NULL;

