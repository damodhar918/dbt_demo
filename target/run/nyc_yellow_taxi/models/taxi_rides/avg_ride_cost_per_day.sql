
  
  create view "dbt"."main"."avg_ride_cost_per_day__dbt_tmp" as (
    with avg_daily_fare as (
  select date_part('day', tpep_pickup_datetime) as day,
         avg(total_amount) as avg_amount
  from "dbt"."main"."taxi_rides_raw"
  group by day
  order by day
)
select * from avg_daily_fare
  );
