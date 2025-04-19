-- Silver perform data transformation
select
    product_key,
    product,
    standard_cost,
    color,
    subcategory,
    category,
    background_color_format,
    font_color_format,
   current_timestamp as created_at
from   {{ ref('silver_product') }}