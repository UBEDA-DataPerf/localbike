SELECT 
  pk_order,
  o.order_id,
  p.product_id,
  oi.quantity AS quantity_by_item,
  discount_amount_by_items
  total_amount_by_items,
  customer_id,
  order_date,
  store_id,
  p.category_id



FROM {{ref("stg_localbike__order_items")}} AS oi
INNER JOIN {{ref("stg_localbike__orders")}} AS o ON oi.order_id = o.order_id
LEFT JOIN  {{ref("stg_localbike__products")}} AS p ON oi.product_id = p.product_id
ORDER BY pk_order