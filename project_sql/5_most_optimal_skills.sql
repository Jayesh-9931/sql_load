with skills_demand AS( select 
        skills_dim.skill_id,
        skills_dim.skills,
        count(skills_job_dim.job_id) as demand_count
    from job_postings_fact
    inner join skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    inner join skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
    where
        job_title_short = 'Data Analyst'
        and salary_year_avg is not null
        and job_work_from_home = 'true'
    group by skills_dim.skill_id

), avg_salary as (
    select 
    skills_dim.skill_id,
    skills_dim.skills,
    round( avg(salary_year_avg),0 ) as avg_salary
from job_postings_fact
inner join skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
inner join skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
where
    job_title_short = 'Data Analyst'
    and salary_year_avg is not null
    and job_work_from_home = 'true'
group by skills_dim.skill_id

)
select
    skills_demand.skills,
    skills_demand.skill_id,
    demand_count,
    avg_salary
from
    skills_demand
inner join avg_salary ON skills_demand.skill_id = avg_salary.skill_id
where
    demand_count > 50
order by
    avg_salary desc,
    demand_count desc

