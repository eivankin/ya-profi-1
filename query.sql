select vacancy_id, name, count(*) as wanted_count
from applicant_wanted_vacancy
inner join vacancy v on applicant_wanted_vacancy.vacancy_id = v.id
where v.company_id = 1
group by vacancy_id
order by wanted_count desc limit 5;