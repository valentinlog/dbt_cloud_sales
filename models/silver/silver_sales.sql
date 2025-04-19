select
   SalesOrderNumber sales_order_number,
   cast(OrderDate as timestamp) as order_date,
   ProductKey as product_key,
   SalesTerritoryKey as sales_territory_key,
   OrderQuantity as order_quantity,
   UnitPrice as init_price,
   cast(SalesAmount as float) as sales_amount,
   cast(TotalProductCost as float) as total_product_cost,
   current_timestamp as created_at
from   {{ ref('bronze_sales') }}