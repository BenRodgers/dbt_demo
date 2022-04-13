SELECT *
FROM {{ source('e-commerce', 'raw_product_category_name_translation') }}