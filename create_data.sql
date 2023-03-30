insert into company(id, name, legal_entity_name, phone_number, email) values (1, 'Рога и копыта', 'ООО "Рога и Копыта"', '+7000000', 'example@example.com');

insert into education_level (id, name) values (1, 'Среднее'), (2, 'Высшее');

insert into vacancy(id, company_id, name, description, required_education_level_id, salary_from, salary_from, start_date, end_date)
values (1, 1, 'Тест #1', '', 2, 0, 10, CURRENT_DATE, CURRENT_DATE),
       (2, 1, 'Тест #2', '', 1, 0, 10, CURRENT_DATE, CURRENT_DATE),
       (3, 1, 'Тест #3', '', 2, 0, 100, CURRENT_DATE, CURRENT_DATE),
       (4, 1, 'Тест #4', '', 2, 0, 10, CURRENT_DATE, CURRENT_DATE),
       (5, 1, 'Тест #5', '', 1, 0, 5, CURRENT_DATE, CURRENT_DATE),
       (6, 1, 'Тест #6', '', 2, 0, 1, CURRENT_DATE, CURRENT_DATE);

insert into applicant(id, full_name, phone_number, education_level_id, wanted_salary)
values (1, 'Иванов Иван Иванович', '+7000000', 1, 100),
       (2, 'Петров Петр Петрович', '+7000000', 2, 100),
       (3, 'Сидоров Сидор Сидорович', '+7000000', 1, 100),
       (4, 'Петров Сидор Сидорович', '+7000000', 1, 100),
       (5, 'Иванов Сидор Сидорович', '+7000000', 1, 100),
       (6, 'Сидоров Иван Сидорович', '+7000000', 2, 100),
       (7, 'Сидоров Петр Сидорович', '+7000000', 1, 100);

insert into applicant_wanted_vacancy(applicant_id, vacancy_id)
values (1, 1),
       (1, 2),
       (2, 1),
       (2, 2),
       (3, 2),
       (4, 3),
       (5, 4),
       (6, 5),
       (7, 5);