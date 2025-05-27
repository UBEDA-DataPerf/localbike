select 
  product_name,
  brand_id,
  category_id,
  model_year,
  list_price,
  store_name,
  city,
  state,
  quantity

from `dbt_localbike.stg_localbike__stocks` AS s
INNER JOIN `dbt_localbike.stg_localbike__products` AS p ON s.product_id=p.product_id
INNER JOIN `dbt_localbike.stg_localbike__stores` As st ON s.store_id=st.store_id 