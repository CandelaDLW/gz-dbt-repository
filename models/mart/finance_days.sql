SELECT
    COUNT(orders_id) AS nb_transactions,
    ROUND(SUM(revenue),2) AS total_revenue,
    ROUND(AVG(revenue),2) AS avg_basket,
    SUM(operational_margin) AS tot_operational_margin,
    ROUND(SUM(purchase_cost),2) AS total_purchase_cost,
    ROUND(SUM(shipping_fee),2) AS tot_shipping_fee,
    ROUND(SUM(logcost),2) AS tot_log_cost,
    SUM(quantity) AS total_quantity
FROM {{ ref('int_orders_operational') }}
GROUP BY date_date