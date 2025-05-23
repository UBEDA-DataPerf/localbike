SELECT 
  CAST(staff_id AS INT64) AS staff_id,
  first_name,
  last_name,
  email,
  phone,
  CAST(active AS INT64) AS active,
  CAST(store_id AS INT64) AS store_id,
  CAST(manager_id AS INT64) AS manager_id
FROM {{ source("localbike","staffs")}}
