select
   SalesTerritoryKey as sales_territory_key,
   Region as region, 
   Group as group,
   current_timestamp as created_at
from   {{ ref('bronze_region') }}