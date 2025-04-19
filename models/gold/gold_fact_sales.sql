select
        sales_order_number,
        CAST(order_date AS DATE) order_date,
        product_key as product_key,
        CAST(sales_territory_key AS VARCHAR(255)),
        order_quantity,
        unit_price,
        sales_amount,
        total_product_cost,
        CAST(created_at AS DATE) as date_inserted
from   {{ ref('silver_sales') }}