{{
  config(
    materialized = 'view',
    )
}}

with src_listings as (select * from {{ ref('src_listings') }})

select
    listing_id,
    replace(price_str, '$')::number(10, 2) as price,
    listing_name,
    created_at,
    room_type,
    host_id,
    updated_at,
    case when minimum_nights = 0 then 1 else minimum_nights end as minimum_nights
from src_listings
