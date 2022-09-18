select product_name
from orders
         join customers c on c.id = orders.customer_id
where lower(c.name) = lower(:name);