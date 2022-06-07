{{config(
    materialized="table"
)}}

with countries_data as (
    select *
    from {{ref("countries_data")}}
),

flight_logs_updated as (
    select *
    from {{ref("flight_logs_updated")}}
)


select * from countries left join
(select country, count(flight_id) from flight_logs_updated
group by (country)) count_flights
on countries."Country"=count_flights."country"
