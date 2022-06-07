
{{config(
    materialized="table"
)}}

with flight_logs_data as (
    select *
    from {{ref("flight_logs_data")}}
)

select distinct concat("CHOPER",'-',"CHFLTN") flight_id ,"CHLOC1D" City, "CHLOCCT" Country from flight_logs_data












