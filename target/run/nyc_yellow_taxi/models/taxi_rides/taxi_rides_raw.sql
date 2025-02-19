
  
  create view "dbt"."main"."taxi_rides_raw__dbt_tmp" as (
    

select * from "dbt"."raw"."taxi_rides"
  );
