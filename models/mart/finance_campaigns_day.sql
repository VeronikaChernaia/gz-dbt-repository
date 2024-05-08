SELECT
date_date,
finance.operational_margin - campaigns.ads_cost as ads_margin,
finance.average_basket as average_basket,
finance.operational_margin as op_margin
FROM {{ ref('finance_days') }} finance
LEFT JOIN {{ ref('int_campaigns_day') }} campaigns
USING(date_date)