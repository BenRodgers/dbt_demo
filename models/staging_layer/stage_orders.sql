SELECT *
FROM {{ source('e-commerce', 'raw_orders') }}