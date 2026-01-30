{{
  config(
    materialized = 'view'
    )
}}

with src_hosts as (
    select * from {{ref('src_hosts')}}
)

select 
    host_id,
    NVL(host_name, 'Anonymous') AS host_name,
    is_superhost_str,
    CREATED_AT,
    UPDATED_AT
from src_hosts
