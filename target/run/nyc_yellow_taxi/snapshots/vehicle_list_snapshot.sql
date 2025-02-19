
      
  
    
    

    create  table
      "dbt"."main"."vehicle_list_snapshot"
  
    as (
      

    select *,
        md5(coalesce(cast(license_id as varchar ), '')
         || '|' || coalesce(cast(last_updated as varchar ), '')
        ) as dbt_scd_id,
        last_updated as dbt_updated_at,
        last_updated as dbt_valid_from,
        nullif(last_updated, last_updated) as dbt_valid_to
    from (
        



select * from "dbt"."raw"."vehicle_list"
    ) sbq



    );
  
  
  