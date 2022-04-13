SELECT order_id, customer_id, COUNT(*)
FROM {{ref('customer_orders')}}
GROUP BY order_id, customer_id
HAVING COUNT(*)>1