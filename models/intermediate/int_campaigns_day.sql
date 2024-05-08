SELECT 
date_date,
SUM(ads_cost) AS ads_cost,
SUM(CAST (impression AS INT64)) AS impression,
SUM(CAST(click AS INT64)) AS click
FROM {{ref('int_campaign')}}
GROUP BY date_date
ORDER BY date_date ASC
