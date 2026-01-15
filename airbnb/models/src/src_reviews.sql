
with raw_reviews as (
select * from airbnb.raw.raw_reviews
)

select 
LISTING_ID, 
DATE as REVIEW_DATE, 
REVIEWER_NAME, 
COMMENTS as REVIEW_TEXT, 
SENTIMENT as REVIEW_SENTIMENT


from raw_reviews