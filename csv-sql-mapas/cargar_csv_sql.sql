-- Crear tabla salaries
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
    work_year INTEGER,
    experience_level VARCHAR(10),
    employment_type VARCHAR(10),
    job_title TEXT,
    salary NUMERIC,
    salary_currency VARCHAR(10),
    salary_in_usd NUMERIC,
    employee_residence VARCHAR(10),
    remote_ratio INTEGER,
    company_location VARCHAR(10),
    company_size VARCHAR(5)
);

-- Importar datos desde CSV
\copy salaries FROM 'C:\Users\Legion\Documents\desafio_latam\Estadistica\Desafio 1\ds_salaries.csv' DELIMITER ',' CSV HEADER;

-- Verificar cantidad de filas cargadas
SELECT COUNT(*) AS total_registros FROM salaries;
