{{ config(materialized='view')}}

select * from {{ source('raw', 'taxi_rides') }}
        
