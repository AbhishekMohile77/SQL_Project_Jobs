-- Copying the data from the csv files into tables after creating the tables

COPY company_dim
FROM 'C:\Abhishek\resume,projects\SQL_Project_Jobs\csv_files\company_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_dim
FROM 'C:\Abhishek\resume,projects\SQL_Project_Jobs\csv_files\skills_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY job_postings_fact
FROM 'C:\Abhishek\resume,projects\SQL_Project_Jobs\csv_files\job_postings_fact.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_job_dim
FROM 'C:\Abhishek\resume,projects\SQL_Project_Jobs\csv_files\skills_job_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
