WITH sales_prods AS
(SELECT * 
FROM {{ref("stg_raw__sales")}}
JOIN {{ref("stg_raw__product")}}
USING (products_id))

SELECT *,
(quantity * purchase_price) AS purchase_cost,
ROUND(revenue - quantity * purchase_price,2) AS margin
FROM sales_prods


