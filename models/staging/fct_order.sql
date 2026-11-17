select
    o.order_id,
    o.order_date,
    o.status,
    o.amount,
    c.customer_id,
    c.customer_name,
    c.city
from {{ ref('stg_order') }} o
left join {{ ref('stg_customer') }} c
    on o.customer_id = c.customer_id