SELECT
  CAST(order_id AS INT64) AS order_id,
  CAST(customer_id AS INT64) AS customer_id,
  CAST(order_status AS INT64) AS order_status,
  SAFE_CAST(order_date AS DATE) AS order_date,
  SAFE_CAST(required_date AS DATE) AS required_date,
  SAFE_CAST(shipped_date AS DATE) AS shipped_date,  -- sécurisé même si NULL ou malformé
  CAST(store_id AS INT64) AS store_id,
  CAST(staff_id AS INT64) AS staff_id
FROM {{source("localbike","orders")}}