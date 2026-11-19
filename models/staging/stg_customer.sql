select
    id as customer_id,
    name as customer_name,
    city
from {{ source('shop', 'customers') }}