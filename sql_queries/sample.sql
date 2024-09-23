SELECT COUNT(job_title_short) AS total_jobs,
             job_title_short
FROM job_postings_fact
GROUP BY job_title_short
ORDER BY total_jobs DESC
LIMIT 50;
