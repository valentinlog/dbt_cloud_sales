select
   sales_territory_key,
   region, 
   country,
   group,
   current_timestamp as created_at
from   {{ ref('silver_region') }}