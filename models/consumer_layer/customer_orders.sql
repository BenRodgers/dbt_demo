SELECT 
    o.order_id, 
    c.customer_id, 	
    o.order_status,
    o.order_purchase_timestamp,	
    o.order_approved_at,	
    o.order_delivered_carrier_date,	
    o.order_delivered_customer_date,	
    o.order_estimated_delivery_date,
    c.customer_zip_code_prefix,
    c.customer_city,
    c.customer_state
FROM {{ref('stage_customers')}} c
INNER JOIN {{ref('stage_orders')}} o
ON c.customer_id = o.customer_id