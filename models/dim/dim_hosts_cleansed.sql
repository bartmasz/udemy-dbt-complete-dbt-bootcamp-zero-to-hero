{{
  config(
    materialized = 'view',
    )
}}

with dim_hosts_cleansed as (select * from {{ ref('src_hosts') }})
select 
    host_id, 
    case 
        when host_name is not null then host_name
        else 'Anonymous'
    end as host_name, 
    case
        when is_superhost in ('t', 'f') then is_superhost
        else 'f'
    end as is_superhost, 
    created_at, 
    updated_at
from dim_hosts_cleansed