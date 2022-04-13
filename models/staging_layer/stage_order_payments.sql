SELECT *
FROM {{ source('e-commerce', 'raw_order_payments') }}