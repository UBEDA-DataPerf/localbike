SELECT
  CAST(CONCAT(order_id,"_",item_id) AS STRING) AS PK_order,
  CAST(order_id AS INT64) AS order_id,
  CAST(product_id AS INT64) AS product_id,
  CAST(quantity AS INT64) AS quantity,
  CAST(list_price AS FLOAT64) AS unit_price,
  CAST(ROUND(quantity * list_price * discount,2 )   AS FLOAT64) AS discount_amount_by_items,
  CAST(ROUND(quantity * list_price * (1-discount),2 ) AS FLOAT64) AS total_amount_by_order_items

from {{source("localbike","order_items")}}
ORDER BY PK_order