{{
  config(
    materialized = 'view',
    )
}}

with src_listings as (select * from {{ ref('src_listings') }})

select
    listing_id,
    REPLACE(price_str,'$', '') :: decimal(10,2) AS price,
    listing_name,
    created_at,
    room_type,
    host_id,
    updated_at,
    case when minimum_nights = 0 then 1 else minimum_nights end as minimum_nights
from src_listings
