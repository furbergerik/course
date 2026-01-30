
with raw_hosts as (
select * from {{source('airbnb','hosts')}}
)

select 
ID as host_id, 
NAME as host_name, 
IS_SUPERHOST as is_superhost_str, 
CREATED_AT, 
UPDATED_AT

from raw_hosts