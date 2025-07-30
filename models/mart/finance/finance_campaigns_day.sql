SELECT 
 (tot_operational_margin - ads_cost) AS ads_margin,
    avg_basket,
    tot_operational_margin,
    ads_cost,
    impression,
    click,
    total_quantity,
    total_revenue,
    total_purchase_cost,
    (total_revenue - total_purchase_cost) AS margin,
    tot_shipping_fee,
    tot_log_cost,
FROM {{ ref('int_campaigns_day') }}
JOIN {{ ref('finance_days') }}
USING (date_date)
