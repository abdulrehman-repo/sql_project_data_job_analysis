/* 
    Question: What are the most in-demand skills for data analysts and data engineer in india?
    - Identify the top 5 in-demand skills for a data analyst.
    - Focus on Data Engineer & Data Analyts in India.
    - Why? Retrieves the top 5 skills with the highest demand in the job market, 
    providing insights into the most valuable skills for job seekers.
*/


SELECT
    skills,
    COUNT(*) AS demand_count
FROM
    skills_job_dim
LEFT JOIN skills_dim
ON skills_job_dim .skill_id = skills_dim.skill_id

LEFT JOIN job_postings_fact
ON job_postings_fact.job_id = skills_job_dim.job_id
WHERE
    job_title_short = 'Data Analyst' AND 
    job_location = 'India'
GROUP BY
         skills
ORDER BY
         demand_count DESC
LIMIT 10;


/*


        Here's the breakdown of the most demanded skills for data analysts in 2023
SQL and Excel remain fundamental, emphasizing the need for strong foundational skills in data processing and spreadsheet manipulation.
Programming and Visualization Tools like Python, Tableau, and Power BI are essential, pointing towards the increasing importance of technical skills in data storytelling and decision support.

     **************** Result Set *****************

            ---DATA ENGINEER TOP 12 SKILLS IN INDIA---         

                "skills","demand_count"
                    "sql","1155"
                    "python","1073"
                    "spark","671"
                    "aws","643"
                    "azure","608"
                    "hadoop","399"
                    "java","369"
                    "scala","339"
                    "databricks","336"
                    "kafka","333"
                    "pyspark","300"
                    "nosql","287"





            --- DATA ANALYST TOP 10 SKILLS IN INDIA---

              "skills","demand_count"
                    "sql","1016"
                    "excel","717"
                    "python","687"
                    "tableau","545"
                    "power bi","402"
                    "r","286"
                    "sas","278"
                    "powerpoint","154"
                    "azure","151"
                    "aws","140"

*/                