WITH temp AS (
  SELECT 
    pk_order,
    order_id,
    p.product_id,
    quantity_by_item,
    total_amount_by_order_items,
    discount_amount_by_items,
    customer_id,
    order_date,
    store_id,
    category_name,
    product_name,
    list_price,
    brand_id


  FROM {{ref("int_localbike__order_items")}} AS oi
  INNER JOIN {{ref("stg_localbike__categories")}} AS c ON oi.category_id = c.category_id
  INNER JOIN {{ref("stg_localbike__products")}}AS p ON p.product_id=oi.product_id
  )
SELECT 
    pk_order,
    order_id,
    quantity_by_item,
    total_amount_by_order_items,
    discount_amount_by_items,
    customer_id,
    order_date,
    category_name,
    product_name,
    list_price,
    b.brand_name
FROM temp AS t
INNER JOIN {{ref("stg_localbike__brands")}}AS b ON t.brand_id = b.brand_id