with minimum_nights as (
    select minimum_nights from {{ref("dim_listings_cleansed")}}
)

select * from minimum_nights
where minimum_nights < 1
LIMIT 10