SELECT 
FORMAT_DATE('%Y %m', DATE (date_date)) AS datemonth, 
SUM(average_basket) AS average_basket,
SUM(operational_margin) AS operational_margin,
SUM(ads_cost) AS ads_cost,
SUM(ads_impression) AS ads_impression,
SUM(nb_click) AS nb_click,
SUM(quantity) AS quantity,
SUM(revenue) AS revenue,
SUM(purchase_cost) AS purchase_cost,
SUM(margin) AS margin,
SUM(shipping_fee) AS shipping_fee,
SUM(logcost) AS logcost,
SUM(ship_cost) AS ship_cost,
ROUND(SUM (operational_margin-ads_cost),2) AS ads_margin,
FROM {{ref ('finance_days')}}
JOIN {{ref ('int_campaigns_day')}}
USING (date_date)
GROUP BY datemonth
