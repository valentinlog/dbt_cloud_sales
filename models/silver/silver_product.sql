-- Silver perform data transformation
select
    ProductKey as product_key,
    Product as product,
    StandardCost as standard_cost,
    Color as color,
    Subcategory as subcategory,
    Category as category,
    BackgroundColorFormat as background_color_format,
    FontColorFormat as font_color_format,
   current_timestamp as created_at
from   {{ ref('bronze_product') }}