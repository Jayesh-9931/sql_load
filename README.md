# 📊 Data Analyst Job Market Analysis Using SQL

## 📌 Project Overview

This project analyzes Data Analyst job postings using SQL to identify high-paying jobs, in-demand technical skills, and skills that offer a balance between salary and market demand. The analysis helps aspiring data analysts understand current job market trends and prioritize valuable skills.

## 🎯 Project Objectives

* Identify the highest-paying Data Analyst job opportunities.
* Analyze the most in-demand technical skills.
* Determine which skills are associated with higher average salaries.
* Identify optimal skills that combine strong demand with competitive salaries.
* Explore remote job opportunities.

## 🛠️ Tools & Technologies

* **SQL** — Data querying, filtering, aggregation, and analysis.
* **PostgreSQL** — Database management and query execution.
* **Visual Studio Code** — SQL development environment.
* **CSV Files** — Source data for database tables.

## 📂 Project Structure

```text
sql_project_data_job_analysis/
├── csv_files/
│   ├── company_dim.csv
│   ├── job_postings_fact.csv
│   ├── skills_dim.csv
│   └── skills_job_dim.csv
├── sql_load/
│   └── project_sql/
│       ├── 1_top_paying_jobs.sql
│       ├── 2_top_paying_jobs_skills.sql
│       ├── 3_top_demanded_skills.sql
│       ├── 4_top_paying_skills.sql
│       └── 5_most_optimal_skills.sql
├── 1_create_database.sql
├── 2_create_tables.sql
├── 3_modify_tables.sql
└── README.md
```

## 🔍 Key Analyses

| SQL File                       | Analysis                                                                                                   |
| ------------------------------ | ---------------------------------------------------------------------------------------------------------- |
| `1_top_paying_jobs.sql`        | Identifies the highest-paying Data Analyst jobs, including job titles, salaries, locations, and companies. |
| `2_top_paying_jobs_skills.sql` | Identifies the skills associated with top-paying job opportunities.                                        |
| `3_top_demanded_skills.sql`    | Ranks technical skills by demand across Data Analyst job postings.                                         |
| `4_top_paying_skills.sql`      | Identifies skills associated with higher average salaries in remote Data Analyst jobs.                     |
| `5_most_optimal_skills.sql`    | Combines skill demand and average salary to identify valuable skills.                                      |

## 📈 Key Findings

* **SQL** was the most in-demand skill in the analyzed Data Analyst job postings, with **92,628** recorded occurrences.
* **Excel** ranked second, with **67,031** occurrences.
* **Python** ranked third, with **57,326** occurrences.
* Other prominent skills included Tableau and Power BI.
* Specialized technical skills such as PySpark were associated with high average salaries in the remote-job analysis.

*Note: These figures represent results from the analyzed dataset and may not reflect the entire job market.*

## 💡 Skills Demonstrated

* SQL Joins and Common Table Expressions (CTEs)
* Aggregate Functions (`COUNT`, `AVG`)
* Filtering and Sorting (`WHERE`, `ORDER BY`)
* Grouping Data (`GROUP BY`)
* Data Analysis and Ranking
* Salary and Skill-Demand Analysis
* Relational Database Concepts

## 🚀 How to Run

1. Clone or download this repository.
2. Set up PostgreSQL and connect your database through VS Code.
3. Create the database and tables using the setup SQL scripts.
4. Import the CSV files into their corresponding tables.
5. Execute the SQL files in numerical order to reproduce the analysis.

## 👨‍💻 Author

**Jayesh Doiphode**
MBA – Business Analytics

---

*This project demonstrates the use of SQL to transform raw job-posting data into actionable insights for career planning and skill development.*
