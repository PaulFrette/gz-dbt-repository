#Operational_margin = margin + shipping_fee - log_cost - ship_cost
SELECT 
orders_id,
date_date,
SUM(ROUND(margin+shipping_fee-logcost-ship_cost,2)) AS Operational_margin
FROM {{ref("stg_raw__ship")}}
INNER JOIN {{ref("int_orders_margin")}}
USING (orders_id)
GROUP BY orders_id, date_date