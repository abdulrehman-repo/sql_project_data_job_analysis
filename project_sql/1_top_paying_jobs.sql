/*
     what are the top paying jobs for my role? #Data Analysts
    Why? Highligting the top paying opprtunities for DATA ANALYSTS
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    job_posted_date,
    salary_year_avg,
    name AS Comapny_name
FROM
    job_postings_fact
LEFT JOIN company_dim
ON company_dim.company_id = job_postings_fact.company_id
WHERE
    job_location = 'India' AND 
    job_title_short = 'Data Analyst' AND 
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 10;


/*
     **************** Result Set *****************

                ---Top Paying jobs in India--- 
[
  {
    "job_id": 325402,
    "job_title": "Senior Business & Data Analyst",
    "job_location": "India",
    "job_schedule_type": "Full-time",
    "job_posted_date": "2023-11-21 13:11:46",
    "salary_year_avg": "119250.0",
    "comapny_name": "Deutsche Bank"
  },
  {
    "job_id": 908967,
    "job_title": "Sr. Enterprise Data Analyst",
    "job_location": "India",
    "job_schedule_type": "Full-time",
    "job_posted_date": "2023-12-21 20:10:10",
    "salary_year_avg": "118140.0",
    "comapny_name": "ACA Group"
  },
  {
    "job_id": 591307,
    "job_title": "HR Data Operations Analyst",
    "job_location": "India",
    "job_schedule_type": "Full-time",
    "job_posted_date": "2023-11-07 16:11:10",
    "salary_year_avg": "104550.0",
    "comapny_name": "Clarivate"
  },
  {
    "job_id": 1218280,
    "job_title": "Financial Data Analyst",
    "job_location": "India",
    "job_schedule_type": "Full-time",
    "job_posted_date": "2023-05-02 17:14:27",
    "salary_year_avg": "93600.0",
    "comapny_name": "Loop Health"
  },
  {
    "job_id": 544240,
    "job_title": "Healthcare Research & Data Analyst",
    "job_location": "India",
    "job_schedule_type": "Full-time",
    "job_posted_date": "2023-11-08 14:31:21",
    "salary_year_avg": "89118.0",
    "comapny_name": "Clarivate"
  },
  {
    "job_id": 733296,
    "job_title": "Data Integration and Business Intelligence Analyst",
    "job_location": "India",
    "job_schedule_type": "Full-time",
    "job_posted_date": "2023-07-27 07:12:42",
    "salary_year_avg": "79200.0",
    "comapny_name": "Miratech"
  },
  {
    "job_id": 152699,
    "job_title": "Ai Research Engineer",
    "job_location": "India",
    "job_schedule_type": "Full-time",
    "job_posted_date": "2023-08-14 19:11:53",
    "salary_year_avg": "79200.0",
    "comapny_name": "AlphaSense"
  },
  {
    "job_id": 989706,
    "job_title": "Data Analyst - Price hub",
    "job_location": "India",
    "job_schedule_type": "Full-time",
    "job_posted_date": "2023-12-22 04:09:39",
    "salary_year_avg": "75067.5",
    "comapny_name": "Cargill"
  },
  {
    "job_id": 1018519,
    "job_title": "Data Analyst I",
    "job_location": "India",
    "job_schedule_type": "Full-time",
    "job_posted_date": "2023-11-28 21:12:02",
    "salary_year_avg": "71600.0",
    "comapny_name": "Bristol Myers Squibb"
  },
  {
    "job_id": 306376,
    "job_title": "Project Associate - Data Analytics (Contract)",
    "job_location": "India",
    "job_schedule_type": "Contractor",
    "job_posted_date": "2023-09-01 23:31:53",
    "salary_year_avg": "64800.0",
    "comapny_name": "Array"
  }
]
*/ 