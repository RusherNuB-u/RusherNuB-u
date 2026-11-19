select
    customer_id,
    customer_name,
    city,
    count(order_id) as total_orders,
    sum(amount) as total_amount
from {{ ref('fct_order') }}
group by customer_id, customer_name, city