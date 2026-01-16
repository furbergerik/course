with src_listings as (
    select * from {{ref('src_listings')}}

)
select 
    listing_id, 
    listing_name, 
    ROOM_TYPE, 
    CASE
        WHEN MINIMUM_NIGHTS = 0 then 1
        ELSE MINIMUM_NIGHTS
    END as MINIMUM_NIGHTS,
    host_id, 
    REPLACE(price_str, '$') :: NUMBER(10, 2) AS PRICE,
    CREATED_AT,
    UPDATED_AT
from src_listings

