SELECT 
sales.date_date,
sales.orders_id, 
--sales.products_id,
ROUND(SUM(CAST(sales.revenue AS FLOAT64)),2) AS revenue,
SUM(CAST(sales.quantity AS INT64)) AS quantity,
SUM(CAST(product.purchase_price AS FLOAT64)) AS purchase_price, 
ROUND(SUM(CAST(sales.quantity AS INT64)*CAST(product.purchase_price AS FLOAT64)),2) AS Purchase_cost,
ROUND(SUM(CAST(sales.revenue AS FLOAT64))-SUM(CAST(sales.quantity AS INT64)*CAST(product.purchase_price AS FLOAT64)),2) AS margin

FROM {{ref('stg_raw__sales')}} as sales
JOIN {{ref('stg_raw__product')}} AS product
USING(products_id)

GROUP BY sales.date_date, sales.orders_id
ORDER BY date_date DESC