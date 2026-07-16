CREATE TABLE Companies
(
    company_id INT PRIMARY KEY,
    company_name VARCHAR(100),
    industry VARCHAR(50),
    location VARCHAR(100),
    website VARCHAR(150)
);

CREATE TABLE Applications
(
    application_id INT PRIMARY KEY,
    company_id INT,
    position_name VARCHAR(100),
    application_date DATE,
    status VARCHAR(50),

    FOREIGN KEY (company_id)
    REFERENCES Companies(company_id)
);

CREATE TABLE Recruiters
(
    recruiter_id INT PRIMARY KEY,
    company_id INT,
    recruiter_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),

    FOREIGN KEY (company_id)
    REFERENCES Companies(company_id)
);

CREATE TABLE Interviews
(
    interview_id INT PRIMARY KEY,
    application_id INT,
    interview_date DATE,
    interview_type VARCHAR(50),
    result VARCHAR(50),

    FOREIGN KEY (application_id)
    REFERENCES Applications(application_id)
);