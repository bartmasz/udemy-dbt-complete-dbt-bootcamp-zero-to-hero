select
    r.listing_id,
    l.created_at,
    r.review_date
from {{ ref('fct_reviews') }} as r
join {{ ref('dim_listings_cleansed') }} as l on r.listing_id = l.listing_id
where r.review_date < l.created_at