{{config(
    materialized="table"
)}}

with flight_logs_data as (select * from flight_logs)

select * from flight_logs_data
