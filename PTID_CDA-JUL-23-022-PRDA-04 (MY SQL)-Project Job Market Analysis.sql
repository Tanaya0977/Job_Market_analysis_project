use project_job_market_analysis;
select * from Market;
SELECT Headquarters, COUNT(*) AS Job_Title
FROM Market
GROUP BY Headquarters
ORDER BY Job_Title DESC;
SELECT location AS Headquarters,
    AVG(lower_salary) AS average_min_salary,
    AVG(upper_salary) AS average_max_salary,
    MIN(lower_salary) AS minimal_salary,
    MAX(upper_salary) AS maximal_salary
FROM Market
GROUP BY location;
SELECT location AS Headquarters, AVG(Avg_salaryK) AS average_salary
FROM Market
GROUP BY location;
SELECT Industry,COUNT(Job_Title) As Opening
FROM Market
WHERE Job_title='Data Scientist'
GROUP BY Industry
ORDER BY Job_Title DESC
LIMIT 5;
SELECT company_Name,COUNT(Job_Title) AS Job_Opening
FROM Market
GROUP BY company_Name
ORDER BY Count(Job_Title) DESC;
SELECT Job_Title, COUNT(*) AS Job_Title
FROM Market
GROUP BY Job_Title
ORDER BY Job_Title DESC;
SELECT Job_title,Salary_Estimate,count(Job_Title)
from Market
group by Job_Title,Salary_Estimate
order by count(Job_Title)desc;
select distinct job_title, a.Company_Name, a.skill, a.skill_desc from
(Select Job_title,Company_Name,python as skill,'Python' as skill_desc from Market
union all
Select Job_title,Company_Name,spark as skill,'spark' as skill_desc from Market
union all
Select Job_title,Company_Name,aws as skill,'aws' as skill_desc from Market
union all
Select Job_title,Company_Name,excel as skill,'excel' as skill_desc from Market
union all
Select Job_title,Company_Name,sql_ as skill,'sql_' as skill_desc from Market
union all
Select Job_title,Company_Name,sas as skill,'sas' as skill_desc from Market
union all
Select Job_title,Company_Name,aws as skill,'aws' as skill_desc from Market
union all
Select Job_title,Company_Name,keras as skill,'keras' as skill_desc from Market
union all
Select Job_title,Company_Name,pytorch as skill,'pytorch' as skill_desc from Market
union all
Select Job_title,Company_Name,scikit as skill,'scikit' as skill_desc from Market
union all
Select Job_title,Company_Name,tensor as skill,'tensor' as skill_desc from Market
union all
Select Job_title,Company_Name,Hadoop as skill,'Hadoop' as skill_desc from Market
union all
Select Job_title,Company_Name,tableau as skill,'tableau' as skill_desc from Market
union all
Select Job_title,Company_Name,bi as skill,'bi' as skill_desc from Market
union all
Select Job_title,Company_Name,flink as skill,'flink' as skill_desc from Market
union all
Select Job_title,Company_Name,mongo as skill,'mongo' as skill_desc from Market
union all
SELECT Job_title, Company_Name, google_an as skill, 'Google_an' as skill_desc from Market
)a
where a.skill=1 order by a.Company_Name;











