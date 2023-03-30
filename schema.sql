create table company
(
    id                int primary key,
    name              varchar(255),
    legal_entity_name varchar(255),
    email             varchar(255),
    phone_number      varchar(20)
);

create table education_level
(
    id   int primary key,
    name varchar(255)
);

create table skill
(
    id   int primary key,
    name varchar(255)
);

create table vacancy
(
    id                          int primary key,
    name                        varchar(255),
    company_id                  int,
    required_education_level_id int,
    salary_from                 int,
    salary_to                   int,
    description                 text,
    start_date                  date,
    end_date                    date,

    foreign key (company_id) references company (id),
    foreign key (required_education_level_id) references education_level (id)
);

create table required_vacancy_skill
(
    vacancy_id int,
    skill_id   int,

    foreign key (vacancy_id) references vacancy (id),
    foreign key (skill_id) references skill (id),
    primary key (vacancy_id, skill_id)
);

create table optional_vacancy_skill
(
    vacancy_id int,
    skill_id   int,

    foreign key (vacancy_id) references vacancy (id),
    foreign key (skill_id) references skill (id),
    primary key (vacancy_id, skill_id)
);

create table applicant
(
    id                 int primary key,
    full_name          varchar(255),
    phone_number       varchar(20),
    education_level_id int,
    wanted_salary      int,
    current_vacancy_id int null,
    current_company_id int null,

    foreign key (education_level_id) references education_level (id),
    foreign key (current_vacancy_id) references vacancy (id),
    foreign key (current_company_id) references company (id)
);

create table applicant_skill
(
    applicant_id int,
    skill_id     int,

    foreign key (applicant_id) references applicant (id),
    foreign key (skill_id) references skill (id),
    primary key (applicant_id, skill_id)
);

create table applicant_wanted_vacancy
(
    applicant_id int,
    vacancy_id   int,

    foreign key (applicant_id) references applicant (id),
    foreign key (vacancy_id) references vacancy (id),
    primary key (applicant_id, vacancy_id)
);

create table job_status
(
    id   int primary key,
    name varchar(255)
);

create table applicant_vacancy
(
    id             int primary key,
    vacancy_id     int,
    applicant_id   int,
    job_status_id  int,
    job_start_date date,

    foreign key (vacancy_id) references vacancy (id),
    foreign key (applicant_id) references applicant (id),
    foreign key (job_status_id) references job_status (id)
);

create table job_interview
(
    id int primary key,
    applicant_vacancy_id int,
    interview_datetime       datetime,

    foreign key (applicant_vacancy_id) references applicant_vacancy (id)
);