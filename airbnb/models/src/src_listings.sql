
with raw_listings as (
select * from {{source('airbnb','listings')}}
)
select 
    id as listing_id,
    name as listing_name,
    listing_url,
    ROOM_TYPE, 
    MINIMUM_NIGHTS,
    HOST_ID,
    PRICE as price_str,
    CREATED_AT,
    UPDATED_AT
from raw_listings