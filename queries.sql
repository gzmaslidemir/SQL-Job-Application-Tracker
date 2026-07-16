-- View all companies
SELECT * FROM Companies;

-- View all applications
SELECT * FROM Applications;

-- Filter applications
SELECT *
FROM Applications
WHERE status = 'Applied';

-- Sort applications by date
SELECT *
FROM Applications
ORDER BY application_date DESC;

-- Count applications by status
SELECT status,
       COUNT(*) AS TotalApplications
FROM Applications
GROUP BY status;

-- Join companies and applications
SELECT company_name,
       position_name,
       status
FROM Companies
JOIN Applications
ON Companies.company_id = Applications.company_id;

-- Multi-table report
SELECT company_name,
       position_name,
       recruiter_name,
       interview_type,
       result
FROM Companies
JOIN Applications
ON Companies.company_id = Applications.company_id
JOIN Recruiters
ON Companies.company_id = Recruiters.company_id
JOIN Interviews
ON Applications.application_id = Interviews.application_id;