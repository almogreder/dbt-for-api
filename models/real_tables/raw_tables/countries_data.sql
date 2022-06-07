{{config(
    materialized="table"
)}}

with countries_data as (
    select *
    from countries
    where "Country" is not null)

select * from countries_data