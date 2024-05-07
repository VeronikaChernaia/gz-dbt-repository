SELECT
    o.orders_id
  ,o.date_date
  ,ROUND((CAST(o.margin AS FLOAT64) + CAST(s.shipping_fee AS FLOAT64) - CAST(s.logcost AS FLOAT64) - CAST(s.ship_cost AS FLOAT64)),2) AS operational_margin
  ,o.quantity
  ,o.revenue
  ,o.purchase_cost
  ,o.margin
  ,s.shipping_fee
  ,s.logcost
  ,s.ship_cost
  
FROM `quantum-lambda-420409`.`dbt_vchernaia`.`int_sales_margin` AS o
JOIN `quantum-lambda-420409`.`dbt_vchernaia`.`stg_raw__ship` AS s 
USING(orders_id)
ORDER BY o.orders_id desc