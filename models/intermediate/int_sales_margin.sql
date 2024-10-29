SELECT 
products_id,
orders_id,
date_date,
revenue,
quantity,
ROUND(quantity*purchase_price,2) AS purchase_cost,
ROUND(revenue-(quantity*purchase_price),2) AS margin
FROM {{ref('stg_raw__sales')}} AS sales 
    INNER JOIN {{ref('stg_raw__product')}} AS product
USING (products_id)
