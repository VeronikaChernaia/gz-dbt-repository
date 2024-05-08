SELECT
EXTRACT(MONTH FROM date_date) as month_date,
SUM(ads_margin) AS ads_margin,
SUM(average_basket) AS average_basket,
SUM(op_margin) AS op_margin
FROM {{ ref('finance_campaigns_day') }} finance
GROUP BY EXTRACT(MONTH FROM date_date)
ORDER BY month_date