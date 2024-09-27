/*
- What are the most in-demand skills for Data Scientist
- Retrieves top 20 skills with the highest demand in the job market
- provides insights into the most valuable skills for job seekers.
*/

SELECT 
        skills,
        COUNT(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id =skills_dim.skill_id
WHERE
        job_title_short = 'Data Scientist' 
GROUP BY
        skills
ORDER BY 
        demand_count DESC
LIMIT 20

/* Total Outputs = 237 Without LIMIT

[
  {
    "skills": "python",
    "demand_count": "114016"
  },
  {
    "skills": "sql",
    "demand_count": "79174"
  },
  {
    "skills": "r",
    "demand_count": "59754"
  },
  {
    "skills": "sas",
    "demand_count": "29642"
  },
  {
    "skills": "tableau",
    "demand_count": "29513"
  },
  {
    "skills": "aws",
    "demand_count": "26311"
  },
  {
    "skills": "spark",
    "demand_count": "24353"
  },
  {
    "skills": "azure",
    "demand_count": "21698"
  },
  {
    "skills": "tensorflow",
    "demand_count": "19193"
  },
  {
    "skills": "excel",
    "demand_count": "17601"
  },
  {
    "skills": "java",
    "demand_count": "16314"
  },
  {
    "skills": "power bi",
    "demand_count": "15744"
  },
  {
    "skills": "hadoop",
    "demand_count": "15575"
  },
  {
    "skills": "pytorch",
    "demand_count": "15075"
  },
  {
    "skills": "pandas",
    "demand_count": "14866"
  },
  {
    "skills": "git",
    "demand_count": "12285"
  },
  {
    "skills": "scikit-learn",
    "demand_count": "11636"
  },
  {
    "skills": "numpy",
    "demand_count": "10818"
  },
  {
    "skills": "scala",
    "demand_count": "10416"
  },
  {
    "skills": "gcp",
    "demand_count": "8736"
  }
]
*/