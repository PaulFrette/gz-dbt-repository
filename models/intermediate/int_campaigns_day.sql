SELECT 
    date_date,
    ROUND(SUM(ads_cost),2) AS ads_cost,
    SUM(impression) AS ads_impression,
    SUM(click) AS nb_click
    FROM {{ref ('int_campaigns')}}
    GROUP BY date_date 
    ORDER BY date_date ASC