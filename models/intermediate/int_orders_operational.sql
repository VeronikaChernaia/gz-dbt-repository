SELECT 
  date_date, 
  orders_id,
  ship.ship_cost,
  ship.shipping_fee,
  ship.logcost

FROM {{ref('int_sales_margin')}} AS margin
JOIN {{ref('stg_raw__product')}} AS ship
USING (orders_id)