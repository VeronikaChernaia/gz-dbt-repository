

with Campaign AS (
{{ dbt_utils.union_relations(
    relations=[ref('stg_raw__adwords'), ref('stg_raw__bing'),ref('stg_raw__criteo'),ref('stg_raw__facebook') ],
) }}

) 
SELECT 
CONCAT(campaign_key,'-',date_date)  AS PK,
date_date,
paid_source,
campaign_key,
campaign_name,
ads_cost,
impression,
click
FROM Campaign
