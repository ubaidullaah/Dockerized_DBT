-- models/employees/employees.sql

-- Define a dbt source referring to your PostgreSQL table
{{ config(
    materialized='view',
    unique_key='id',
    schema='public',
    alias='src_employees'
) }}



-- Define the dbt model
SELECT
    id,
    first_name,
    last_name,
    email,
    hire_date
FROM employees
