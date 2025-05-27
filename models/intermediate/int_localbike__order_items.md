{% docs int_localbike__order_items %}

# Description
This model extracts key order information by linking ordered items, order details, and products.

## Data Sources
## - `stg_localbike__order_items` (`oi`): Contains details of ordered items.
## - `stg_localbike__orders` (`o`): Stores main order information.
## - `stg_localbike__products` (`p`): Provides product details.

## Applied Transformations
- **pk_order**: Unique order identifier.
- **order_id**: Order identifier.
- **product_id**: Ordered product identifier.
- **quantity_by_item**: Number of units ordered per item.
- **discount_amount_by_items**: Discount amount applied to items.
- **total_amount_by_order_items**: Total discounts.
- **customer_id**: ID of the customer placing the order.
- **order_date**: Date of the order.
- **store_id**: Store where the order was placed.
- **category_id**: Product category.

{% enddocs %}