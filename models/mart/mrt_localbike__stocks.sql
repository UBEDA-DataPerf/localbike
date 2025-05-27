select  
  product_name,
  model_year,
  list_price,
  store_name,
  city,
  state,
  category_name,
  brand_name
from {{ref("int_localbike__stocks")}} AS s
INNER JOIN {{ref("stg_localbike__categories")}} AS c ON s.category_id = c.category_id
INNER JOIN {{ref("stg_localbike__brands")}} AS b ON s.brand_id=b.brand_id