SELECT
        job_id,
        job_title,
        salary_year_avg,
        name AS company_name
    FROM
        job_postings_fact
    left join company_dim ON job_postings_fact.company_id = company_dim.company_id
    where
        job_title_short = 'Data Analyst' AND
        job_location = 'Anywhere' AND
        salary_year_avg is not null
    order by
        salary_year_avg desc
    limit 10;