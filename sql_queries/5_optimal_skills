/* What are the most optimal skills to learn
- Identify skils in high demand and associated with high average salaries for Data Scientist roles
*/

WITH skills_demand AS (
    SELECT 
            skills_dim.skill_id,
            skills_dim.skills,
            COUNT(skills_job_dim.job_id) AS demand_count
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id =skills_dim.skill_id
    WHERE
            job_title_short = 'Data Scientist' 
    GROUP BY
            skills_dim.skill_id
    ORDER BY 
            demand_count DESC
), average_salary AS (
    SELECT
            skills_job_dim.skill_id,
            ROUND(AVG(salary_year_avg), 0) AS avg_salary
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    WHERE
            job_title_short = 'Data Scientist'
            AND salary_year_avg IS NOT NULL
            --AND job_work_from_home = TRUE
    GROUP BY
            skills_job_dim.skill_id
)

SELECT
    skills_demand.skill_id,
    skills_demand.skills,
    demand_count,
    avg_salary
FROM 
    skills_demand
INNER JOIN average_salary ON skills_demand.skill_id = average_salary.skill_id
ORDER BY 
    avg_salary DESC,
    demand_count DESC
LIMIT 10;

/* Total Outputs = 194 without LIMIT

[
  {
    "skill_id": 237,
    "skills": "asana",
    "demand_count": "98",
    "avg_salary": "215477"
  },
  {
    "skill_id": 232,
    "skills": "airtable",
    "demand_count": "65",
    "avg_salary": "201143"
  },
  {
    "skill_id": 173,
    "skills": "redhat",
    "demand_count": "84",
    "avg_salary": "189500"
  },
  {
    "skill_id": 85,
    "skills": "watson",
    "demand_count": "360",
    "avg_salary": "187417"
  },
  {
    "skill_id": 41,
    "skills": "elixir",
    "demand_count": "49",
    "avg_salary": "170824"
  },
  {
    "skill_id": 50,
    "skills": "lua",
    "demand_count": "36",
    "avg_salary": "170500"
  },
  {
    "skill_id": 247,
    "skills": "slack",
    "demand_count": "405",
    "avg_salary": "168219"
  },
  {
    "skill_id": 38,
    "skills": "solidity",
    "demand_count": "125",
    "avg_salary": "166980"
  },
  {
    "skill_id": 153,
    "skills": "ruby on rails",
    "demand_count": "47",
    "avg_salary": "166500"
  },
  {
    "skill_id": 111,
    "skills": "rshiny",
    "demand_count": "454",
    "avg_salary": "166436"
  }
]
*/