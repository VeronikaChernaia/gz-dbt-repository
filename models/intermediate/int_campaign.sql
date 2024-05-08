with Campaign AS (
SELECT *
FROM {{ref('stg_raw__adwords')}}
UNION ALL 
SELECT *
FROM {{ref('stg_raw__bing')}}
UNION ALL
SELECT *
FROM {{ref('stg_raw__criteo')}}
UNION ALL 
SELECT *
FROM {{ref('stg_raw__facebook')}}
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